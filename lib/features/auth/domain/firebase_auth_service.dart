import 'package:flutter/foundation.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:isar/isar.dart';
import '../../../core/database/isar_collections.dart';
import '../../admin/domain/role.dart';
import 'auth_service.dart';

/// Firebase-backed AuthService that mirrors the local API.
///
/// Falls back transparently to the local AuthService for profile data
/// (Firebase Auth only stores credentials; profile preferences stay local).
class FirebaseAuthService {
  final FirebaseAuth _firebase;
  final Isar _isar;
  final AuthService _local; // used for local profile storage

  FirebaseAuthService(this._isar)
      : _firebase = FirebaseAuth.instance,
        _local = AuthService(_isar);

  static const _sessionKey = 'session';

  Future<IsarUserProfile?> currentUser() async {
    final fbUser = _firebase.currentUser;
    if (fbUser == null) return null;
    final email = fbUser.email?.toLowerCase();
    if (email == null) return null;

    // Make sure session is in sync
    await _setSession(email);

    // Find or create the local profile mirror
    var profile = await _isar.isarUserProfiles
        .filter()
        .emailEqualTo(email, caseSensitive: false)
        .findFirst();
    if (profile == null) {
      profile = _buildProfileFromFirebase(fbUser);
      await _isar.writeTxn(() async {
        await _isar.isarUserProfiles.put(profile!);
      });
    }
    if (kOwnerEmails.contains(email) && profile.role != 'owner') {
      profile.role = 'owner';
      await _isar.writeTxn(() async {
        await _isar.isarUserProfiles.put(profile!);
      });
    }
    return profile;
  }

  Future<AuthResult> register({
    required String name,
    required String email,
    required String password,
  }) async {
    final lowerEmail = email.trim().toLowerCase();
    try {
      final cred = await _firebase.createUserWithEmailAndPassword(
        email: lowerEmail,
        password: password,
      );
      await cred.user?.updateDisplayName(name.trim());

      final now = DateTime.now();
      final profile = IsarUserProfile()
        ..email = lowerEmail
        ..name = name.trim()
        ..passwordHash = '' // unused: Firebase manages credentials
        ..memberSince = now.year
        ..genres = []
        ..budgetMax = 300
        ..locationName = ''
        ..language = 'fr'
        ..darkMode = false
        ..notificationsEnabled = true
        ..ecoMode = true
        ..isOnboarded = false
        ..eventsBooked = 0
        ..co2SavedKg = 0
        ..moneySavedEur = 0
        ..percentile = 50
        ..createdAt = now
        ..lastLoginAt = now
        ..role = kOwnerEmails.contains(lowerEmail) ? 'owner' : 'user';

      await _isar.writeTxn(() async {
        await _isar.isarUserProfiles.put(profile);
      });
      await _setSession(lowerEmail);
      return AuthSuccess(profile);
    } on FirebaseAuthException catch (e) {
      return AuthFailure(_friendly(e));
    } catch (e, st) {
      debugPrint('🔥 FirebaseAuth raw error: $e\n$st');
      return AuthFailure('Erreur Firebase : $e');
    }
  }

  Future<AuthResult> signIn({
    required String email,
    required String password,
  }) async {
    final lowerEmail = email.trim().toLowerCase();
    try {
      await _firebase.signInWithEmailAndPassword(
        email: lowerEmail,
        password: password,
      );
      final profile = await currentUser();
      if (profile == null) {
        return const AuthFailure('Profil introuvable');
      }
      if (profile.isSuspended) {
        await _firebase.signOut();
        return AuthFailure(
          'Compte suspendu. ${profile.suspendedReason ?? "Contacte le support."}',
        );
      }
      profile.lastLoginAt = DateTime.now();
      await _isar.writeTxn(() async {
        await _isar.isarUserProfiles.put(profile);
      });
      return AuthSuccess(profile);
    } on FirebaseAuthException catch (e) {
      return AuthFailure(_friendly(e));
    } catch (e, st) {
      debugPrint('🔥 FirebaseAuth raw error: $e\n$st');
      return AuthFailure('Erreur Firebase : $e');
    }
  }

  Future<void> signOut() async {
    await _firebase.signOut();
    await _setSession(null);
  }

  /// null on success, error message otherwise.
  Future<String?> sendPasswordResetEmail(String email) async {
    try {
      await _firebase.sendPasswordResetEmail(
          email: email.trim().toLowerCase());
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
    // Update Firebase displayName when the local name changes.
    if (name != null) {
      try {
        await _firebase.currentUser?.updateDisplayName(name);
      } catch (e) {
        debugPrint('Firebase updateDisplayName failed: $e');
      }
    }
    return _local.updateProfile(
      genres: genres,
      budgetMax: budgetMax,
      locationName: locationName,
      ecoMode: ecoMode,
      isOnboarded: isOnboarded,
      name: name,
      avatarUrl: avatarUrl,
      phone: phone,
      bio: bio,
      notificationsEnabled: notificationsEnabled,
      emailNotificationsEnabled: emailNotificationsEnabled,
      socialNotificationsEnabled: socialNotificationsEnabled,
      showCarbonFootprint: showCarbonFootprint,
      language: language,
      darkMode: darkMode,
      co2SavedKgDelta: co2SavedKgDelta,
      eventsBookedDelta: eventsBookedDelta,
      moneySavedDelta: moneySavedDelta,
      percentile: percentile,
    );
  }

  Future<void> deleteAccount() async {
    final user = _firebase.currentUser;
    if (user != null) {
      await user.delete();
    }
    await _local.deleteAccount();
  }

  Future<List<IsarUserProfile>> allAccounts() => _local.allAccounts();

  // ── Internals ──

  Future<void> _setSession(String? email) async {
    final existing = await _isar.isarAuthSessions
        .filter()
        .keyEqualTo(_sessionKey)
        .findFirst();
    final session = existing ?? (IsarAuthSession()..key = _sessionKey);
    session.activeEmail = email;
    session.loggedInAt = email != null ? DateTime.now() : null;
    await _isar.writeTxn(() async {
      await _isar.isarAuthSessions.put(session);
    });
  }

  IsarUserProfile _buildProfileFromFirebase(User u) {
    final now = DateTime.now();
    final email = u.email!.toLowerCase();
    return IsarUserProfile()
      ..email = email
      ..name = u.displayName ?? email.split('@').first
      ..passwordHash = ''
      ..memberSince = now.year
      ..genres = []
      ..budgetMax = 300
      ..locationName = ''
      ..language = 'fr'
      ..darkMode = false
      ..notificationsEnabled = true
      ..ecoMode = true
      ..isOnboarded = false
      ..eventsBooked = 0
      ..co2SavedKg = 0
      ..moneySavedEur = 0
      ..percentile = 50
      ..createdAt = u.metadata.creationTime ?? now
      ..lastLoginAt = u.metadata.lastSignInTime ?? now
      ..role = kOwnerEmails.contains(email) ? 'owner' : 'user';
  }

  String _friendly(FirebaseAuthException e) {
    // Always log full details — helps diagnose Windows-specific issues.
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
        return 'Email/Password non activé dans Firebase Console. '
            'Va dans Authentication → Sign-in method → active Email/Password.';
      case 'internal-error':
      case 'internal-error-encountered':
        return 'Erreur Firebase : vérifie que Email/Password est activé dans '
            'Authentication → Sign-in method (Console Firebase).';
      default:
        return 'Erreur [${e.code}] : ${e.message ?? "inconnue"}';
    }
  }
}
