import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import '../../../core/database/firestore_service.dart';
import '../../../core/database/models.dart';
import '../../admin/domain/role.dart';

sealed class AuthResult {
  const AuthResult();
}

final class AuthSuccess extends AuthResult {
  final IsarUserProfile profile;
  const AuthSuccess(this.profile);
}

final class AuthFailure extends AuthResult {
  final String message;
  const AuthFailure(this.message);
}

/// Unified auth service — Firebase Auth for credentials + Firestore for profile.
/// Replaces the previous local SHA-256 fallback : Firebase is now the single
/// source of truth, with offline read support via the SDK's persistence cache.
class AuthService {
  final FirebaseAuth _auth;
  final FirestoreService _fs;

  AuthService(this._fs, {FirebaseAuth? auth})
      : _auth = auth ?? FirebaseAuth.instance;

  String? _currentEmail() => _auth.currentUser?.email?.toLowerCase();

  /// Current logged-in user profile (or null).
  /// Auto-promotes whitelisted owner emails on read.
  /// Falls back to a local-only profile when Firestore is unreachable.
  Future<IsarUserProfile?> currentUser() async {
    final email = _currentEmail();
    if (email == null) return null;
    try {
      final doc = await _fs.users.doc(email).get();
      if (!doc.exists) {
        // Firebase auth created but no Firestore profile yet — provision one.
        final fbUser = _auth.currentUser!;
        final now = DateTime.now();
        final profile = IsarUserProfile(
          email: email,
          name: fbUser.displayName ?? email.split('@').first,
          memberSince: now.year,
          createdAt: fbUser.metadata.creationTime ?? now,
          lastLoginAt: fbUser.metadata.lastSignInTime ?? now,
          role: kOwnerEmails.contains(email) ? 'owner' : 'user',
        );
        try {
          await _fs.users.doc(email).set(profile.toFirestore());
        } on FirebaseException {
          // Offline — return the in-memory profile; it will be persisted next time.
        }
        return profile;
      }
      var profile = IsarUserProfile.fromFirestore(doc);
      if (kOwnerEmails.contains(email) && profile.role != 'owner') {
        try {
          await _fs.users.doc(email).update({'role': 'owner'});
          final fresh = await _fs.users.doc(email).get();
          profile = IsarUserProfile.fromFirestore(fresh);
        } on FirebaseException {
          profile = IsarUserProfile(
            email: profile.email, name: profile.name,
            memberSince: profile.memberSince, createdAt: profile.createdAt,
            role: 'owner',
          );
        }
      }
      return profile;
    } on FirebaseException catch (e) {
      if (e.code == 'unavailable') {
        // Firestore offline — synthesise a minimal profile from Firebase Auth.
        final fbUser = _auth.currentUser!;
        final now = DateTime.now();
        return IsarUserProfile(
          email: email,
          name: fbUser.displayName ?? email.split('@').first,
          memberSince: now.year,
          createdAt: fbUser.metadata.creationTime ?? now,
          role: kOwnerEmails.contains(email) ? 'owner' : 'user',
        );
      }
      rethrow;
    }
  }

  Future<AuthResult> register({
    required String name,
    required String email,
    required String password,
  }) async {
    final trimmedName = name.trim();
    final lowerEmail = email.trim().toLowerCase();

    if (trimmedName.isEmpty) {
      return const AuthFailure('Le prénom est requis.');
    }
    if (!_isValidEmail(lowerEmail)) {
      return const AuthFailure('Adresse email invalide.');
    }
    if (password.length < 6) {
      return const AuthFailure(
          'Le mot de passe doit faire au moins 6 caractères.');
    }

    try {
      final cred = await _auth.createUserWithEmailAndPassword(
        email: lowerEmail,
        password: password,
      );
      try {
        await cred.user?.updateDisplayName(trimmedName);
      } catch (_) {
        // best effort
      }

      final now = DateTime.now();
      final profile = IsarUserProfile(
        email: lowerEmail,
        name: trimmedName,
        memberSince: now.year,
        createdAt: now,
        lastLoginAt: now,
        role: kOwnerEmails.contains(lowerEmail) ? 'owner' : 'user',
      );
      try {
        await _fs.users.doc(lowerEmail).set(profile.toFirestore());
      } on FirebaseException {
        // Offline — profile will be provisioned next time currentUser() is called.
      }
      return AuthSuccess(profile);
    } on FirebaseAuthException catch (e) {
      return AuthFailure(_friendly(e));
    } catch (e, st) {
      debugPrint('🔥 register error: $e\n$st');
      return AuthFailure('Erreur : $e');
    }
  }

  Future<AuthResult> signIn({
    required String email,
    required String password,
  }) async {
    final lowerEmail = email.trim().toLowerCase();
    if (!_isValidEmail(lowerEmail)) {
      return const AuthFailure('Adresse email invalide.');
    }
    try {
      await _auth.signInWithEmailAndPassword(
        email: lowerEmail,
        password: password,
      );
      final profile = await currentUser();
      if (profile == null) return const AuthFailure('Profil introuvable.');
      if (profile.isSuspended) {
        await _auth.signOut();
        return AuthFailure(
          'Compte suspendu. ${profile.suspendedReason ?? "Contacte le support."}',
        );
      }
      // Best-effort lastLoginAt update — skip when offline.
      try {
        await _fs.users
            .doc(lowerEmail)
            .update({'lastLoginAt': Timestamp.fromDate(DateTime.now())});
        final fresh = await _fs.users.doc(lowerEmail).get();
        return AuthSuccess(IsarUserProfile.fromFirestore(fresh));
      } on FirebaseException {
        return AuthSuccess(profile);
      }
    } on FirebaseAuthException catch (e) {
      return AuthFailure(_friendly(e));
    } catch (e, st) {
      debugPrint('🔥 signIn error: $e\n$st');
      return AuthFailure('Erreur : $e');
    }
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }

  Future<String?> sendPasswordResetEmail(String email) async {
    try {
      await _auth.sendPasswordResetEmail(email: email.trim().toLowerCase());
      return null;
    } on FirebaseAuthException catch (e) {
      return _friendly(e);
    }
  }

  Future<IsarUserProfile?> updateProfile({
    List<String>? genres,
    double? budgetMax,
    String? locationName,
    bool? ecoMode,
    bool? isOnboarded,
    String? name,
    String? avatarUrl,
    String? phone,
    String? bio,
    bool? notificationsEnabled,
    bool? emailNotificationsEnabled,
    bool? socialNotificationsEnabled,
    bool? showCarbonFootprint,
    String? language,
    bool? darkMode,
    double? co2SavedKgDelta,
    int? eventsBookedDelta,
    double? moneySavedDelta,
    int? percentile,
  }) async {
    final profile = await currentUser();
    if (profile == null) return null;
    final updates = <String, dynamic>{};

    if (genres != null) updates['genres'] = genres;
    if (budgetMax != null) updates['budgetMax'] = budgetMax;
    if (locationName != null) updates['locationName'] = locationName;
    if (ecoMode != null) updates['ecoMode'] = ecoMode;
    if (isOnboarded != null) updates['isOnboarded'] = isOnboarded;
    if (name != null) updates['name'] = name;
    if (avatarUrl != null) updates['avatarUrl'] = avatarUrl;
    if (phone != null) updates['phone'] = phone;
    if (bio != null) updates['bio'] = bio;
    if (notificationsEnabled != null) {
      updates['notificationsEnabled'] = notificationsEnabled;
    }
    if (emailNotificationsEnabled != null) {
      updates['emailNotificationsEnabled'] = emailNotificationsEnabled;
    }
    if (socialNotificationsEnabled != null) {
      updates['socialNotificationsEnabled'] = socialNotificationsEnabled;
    }
    if (showCarbonFootprint != null) {
      updates['showCarbonFootprint'] = showCarbonFootprint;
    }
    if (language != null) updates['language'] = language;
    if (darkMode != null) updates['darkMode'] = darkMode;
    if (co2SavedKgDelta != null) {
      updates['co2SavedKg'] = profile.co2SavedKg + co2SavedKgDelta;
    }
    if (eventsBookedDelta != null) {
      updates['eventsBooked'] = profile.eventsBooked + eventsBookedDelta;
    }
    if (moneySavedDelta != null) {
      updates['moneySavedEur'] = profile.moneySavedEur + moneySavedDelta;
    }
    if (percentile != null) updates['percentile'] = percentile;

    if (name != null) {
      try {
        await _auth.currentUser?.updateDisplayName(name);
      } catch (_) {}
    }
    if (updates.isNotEmpty) {
      await _fs.users.doc(profile.email).update(updates);
    }
    final fresh = await _fs.users.doc(profile.email).get();
    return IsarUserProfile.fromFirestore(fresh);
  }

  Future<void> deleteAccount() async {
    final email = _currentEmail();
    if (email == null) return;
    await _fs.users.doc(email).delete();
    try {
      await _auth.currentUser?.delete();
    } catch (_) {
      // Firebase may require recent login. Sign out as fallback.
      await _auth.signOut();
    }
  }

  Future<List<IsarUserProfile>> allAccounts() async {
    // Server-side reads are restricted to admin by security rules.
    // This call returns rows the current user is authorised to see.
    final snap = await _fs.users.get();
    return snap.docs.map(IsarUserProfile.fromFirestore).toList();
  }

  static bool _isValidEmail(String email) {
    return RegExp(r'^[\w\.\-]+@[\w\.\-]+\.\w{2,}$').hasMatch(email);
  }

  String _friendly(FirebaseAuthException e) {
    debugPrint('🔥 FirebaseAuth error [${e.code}]: ${e.message}');
    switch (e.code) {
      case 'invalid-email':
        return 'Adresse email invalide.';
      case 'email-already-in-use':
        return 'Cet email est déjà utilisé. Connecte-toi.';
      case 'weak-password':
        return 'Mot de passe trop faible (6 caractères min).';
      case 'user-not-found':
        return 'Aucun compte trouvé avec cet email.';
      case 'wrong-password':
      case 'invalid-credential':
        return 'Mot de passe incorrect.';
      case 'too-many-requests':
        return 'Trop de tentatives. Réessaie plus tard.';
      case 'network-request-failed':
        return 'Pas de connexion réseau.';
      case 'operation-not-allowed':
        return 'Email/Password non activé dans la console Firebase.';
      default:
        return 'Erreur [${e.code}] : ${e.message ?? "inconnue"}';
    }
  }
}
