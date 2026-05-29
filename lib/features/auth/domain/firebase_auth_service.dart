import 'package:flutter/foundation.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:drift/drift.dart';
import '../../../core/database/app_database.dart';
import '../../admin/domain/role.dart';
import 'auth_service.dart';

/// Firebase-backed AuthService that mirrors the local API.
class FirebaseAuthService {
  final FirebaseAuth _firebase;
  final AppDatabase _db;
  final AuthService _local;

  FirebaseAuthService(this._db)
      : _firebase = FirebaseAuth.instance,
        _local = AuthService(_db);

  static const _sessionKey = 'session';

  Future<IsarUserProfile?> currentUser() async {
    final fbUser = _firebase.currentUser;
    if (fbUser == null) return null;
    final email = fbUser.email?.toLowerCase();
    if (email == null) return null;

    await _setSession(email);

    var profile = await (_db.select(_db.isarUserProfiles)
          ..where((u) => u.email.equals(email)))
        .getSingleOrNull();
    if (profile == null) {
      final now = DateTime.now();
      await _db.into(_db.isarUserProfiles).insert(
            IsarUserProfilesCompanion.insert(
              email: email,
              name: fbUser.displayName ?? email.split('@').first,
              memberSince: now.year,
              createdAt: fbUser.metadata.creationTime ?? now,
              lastLoginAt: Value(fbUser.metadata.lastSignInTime ?? now),
              role: Value(kOwnerEmails.contains(email) ? 'owner' : 'user'),
            ),
          );
      profile = await (_db.select(_db.isarUserProfiles)
            ..where((u) => u.email.equals(email)))
          .getSingle();
    }
    if (kOwnerEmails.contains(email) && profile.role != 'owner') {
      await (_db.update(_db.isarUserProfiles)
            ..where((u) => u.email.equals(email)))
          .write(const IsarUserProfilesCompanion(role: Value('owner')));
      profile = await (_db.select(_db.isarUserProfiles)
            ..where((u) => u.email.equals(email)))
          .getSingle();
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
      await _db.into(_db.isarUserProfiles).insert(IsarUserProfilesCompanion.insert(
            email: lowerEmail,
            name: name.trim(),
            memberSince: now.year,
            createdAt: now,
            lastLoginAt: Value(now),
            role: Value(kOwnerEmails.contains(lowerEmail) ? 'owner' : 'user'),
          ));
      await _setSession(lowerEmail);
      final profile = await (_db.select(_db.isarUserProfiles)
            ..where((u) => u.email.equals(lowerEmail)))
          .getSingle();
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
      await (_db.update(_db.isarUserProfiles)
            ..where((u) => u.email.equals(lowerEmail)))
          .write(IsarUserProfilesCompanion(lastLoginAt: Value(DateTime.now())));
      final fresh = await (_db.select(_db.isarUserProfiles)
            ..where((u) => u.email.equals(lowerEmail)))
          .getSingle();
      return AuthSuccess(fresh);
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
    final existing = await (_db.select(_db.isarAuthSessions)
          ..where((s) => s.key.equals(_sessionKey)))
        .getSingleOrNull();
    if (existing != null) {
      await (_db.update(_db.isarAuthSessions)
            ..where((s) => s.isarId.equals(existing.isarId)))
          .write(IsarAuthSessionsCompanion(
        activeEmail: Value(email),
        loggedInAt: Value(email != null ? DateTime.now() : null),
      ));
    } else {
      await _db.into(_db.isarAuthSessions).insert(
            IsarAuthSessionsCompanion.insert(
              key: _sessionKey,
              activeEmail: Value(email),
              loggedInAt: Value(email != null ? DateTime.now() : null),
            ),
          );
    }
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
        return 'Email/Password non activé dans Firebase Console.';
      default:
        return 'Erreur [${e.code}] : ${e.message ?? "inconnue"}';
    }
  }
}
