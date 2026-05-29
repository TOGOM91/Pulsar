import 'dart:convert';
import 'dart:math';
import 'package:crypto/crypto.dart';
import 'package:drift/drift.dart';
import '../../../core/database/app_database.dart';
import '../../admin/domain/role.dart';

/// Result of an auth operation.
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

/// Local auth service — SQLite-backed, multi-account, SHA-256 + salt hashing.
class AuthService {
  final AppDatabase _db;

  AuthService(this._db);

  static const _sessionKey = 'session';

  // ── Password hashing ──

  static String hashPassword(String password) {
    final salt = _randomSalt();
    final bytes = utf8.encode('$salt:$password');
    final digest = sha256.convert(bytes);
    return '$salt:${digest.toString()}';
  }

  static bool verifyPassword(String password, String storedHash) {
    final parts = storedHash.split(':');
    if (parts.length != 2) return false;
    final salt = parts[0];
    final bytes = utf8.encode('$salt:$password');
    final digest = sha256.convert(bytes);
    return digest.toString() == parts[1];
  }

  static String _randomSalt() {
    final rng = Random.secure();
    final bytes = List<int>.generate(16, (_) => rng.nextInt(256));
    return base64Url.encode(bytes);
  }

  // ── Session ──

  Future<IsarUserProfile?> currentUser() async {
    final session = await (_db.select(_db.isarAuthSessions)
          ..where((s) => s.key.equals(_sessionKey)))
        .getSingleOrNull();
    final email = session?.activeEmail;
    if (email == null || email.isEmpty) return null;
    final profile = await _findByEmail(email);
    if (profile != null) {
      await _ensureOwnerPromotion(profile);
      return _findByEmail(email);
    }
    return profile;
  }

  Future<void> _ensureOwnerPromotion(IsarUserProfile profile) async {
    if (kOwnerEmails.contains(profile.email) && profile.role != 'owner') {
      await (_db.update(_db.isarUserProfiles)
            ..where((u) => u.email.equals(profile.email)))
          .write(const IsarUserProfilesCompanion(role: Value('owner')));
    }
  }

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

  Future<IsarUserProfile?> _findByEmail(String email) {
    return (_db.select(_db.isarUserProfiles)
          ..where((u) => u.email.equals(email.toLowerCase().trim())))
        .getSingleOrNull();
  }

  Future<List<IsarUserProfile>> allAccounts() {
    return _db.select(_db.isarUserProfiles).get();
  }

  // ── Register ──

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

    final existing = await _findByEmail(lowerEmail);
    if (existing != null) {
      return const AuthFailure(
          'Un compte existe déjà avec cet email. Connecte-toi.');
    }

    final now = DateTime.now();
    await _db.into(_db.isarUserProfiles).insert(IsarUserProfilesCompanion.insert(
          email: lowerEmail,
          name: trimmedName,
          passwordHash: Value(hashPassword(password)),
          memberSince: now.year,
          createdAt: now,
          lastLoginAt: Value(now),
          role: Value(kOwnerEmails.contains(lowerEmail) ? 'owner' : 'user'),
        ));
    await _setSession(lowerEmail);

    final profile = await _findByEmail(lowerEmail);
    return AuthSuccess(profile!);
  }

  // ── Sign in ──

  Future<AuthResult> signIn({
    required String email,
    required String password,
  }) async {
    final lowerEmail = email.trim().toLowerCase();

    if (!_isValidEmail(lowerEmail)) {
      return const AuthFailure('Adresse email invalide.');
    }

    final profile = await _findByEmail(lowerEmail);
    if (profile == null) {
      return const AuthFailure("Aucun compte n'existe avec cet email.");
    }
    if (!verifyPassword(password, profile.passwordHash)) {
      return const AuthFailure('Mot de passe incorrect.');
    }
    if (profile.isSuspended) {
      return AuthFailure(
        'Compte suspendu. ${profile.suspendedReason ?? "Contacte le support."}',
      );
    }

    await (_db.update(_db.isarUserProfiles)
          ..where((u) => u.email.equals(lowerEmail)))
        .write(IsarUserProfilesCompanion(
      lastLoginAt: Value(DateTime.now()),
      role: kOwnerEmails.contains(lowerEmail)
          ? const Value('owner')
          : const Value.absent(),
    ));
    await _setSession(lowerEmail);

    final fresh = await _findByEmail(lowerEmail);
    return AuthSuccess(fresh!);
  }

  // ── Sign out ──

  Future<void> signOut() async {
    await _setSession(null);
  }

  // ── Profile updates ──

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

    final companion = IsarUserProfilesCompanion(
      genres: genres != null ? Value(genres) : const Value.absent(),
      budgetMax: budgetMax != null ? Value(budgetMax) : const Value.absent(),
      locationName:
          locationName != null ? Value(locationName) : const Value.absent(),
      ecoMode: ecoMode != null ? Value(ecoMode) : const Value.absent(),
      isOnboarded:
          isOnboarded != null ? Value(isOnboarded) : const Value.absent(),
      name: name != null ? Value(name) : const Value.absent(),
      avatarUrl: avatarUrl != null ? Value(avatarUrl) : const Value.absent(),
      phone: phone != null ? Value(phone) : const Value.absent(),
      bio: bio != null ? Value(bio) : const Value.absent(),
      notificationsEnabled: notificationsEnabled != null
          ? Value(notificationsEnabled)
          : const Value.absent(),
      emailNotificationsEnabled: emailNotificationsEnabled != null
          ? Value(emailNotificationsEnabled)
          : const Value.absent(),
      socialNotificationsEnabled: socialNotificationsEnabled != null
          ? Value(socialNotificationsEnabled)
          : const Value.absent(),
      showCarbonFootprint: showCarbonFootprint != null
          ? Value(showCarbonFootprint)
          : const Value.absent(),
      language: language != null ? Value(language) : const Value.absent(),
      darkMode: darkMode != null ? Value(darkMode) : const Value.absent(),
      co2SavedKg: co2SavedKgDelta != null
          ? Value(profile.co2SavedKg + co2SavedKgDelta)
          : const Value.absent(),
      eventsBooked: eventsBookedDelta != null
          ? Value(profile.eventsBooked + eventsBookedDelta)
          : const Value.absent(),
      moneySavedEur: moneySavedDelta != null
          ? Value(profile.moneySavedEur + moneySavedDelta)
          : const Value.absent(),
      percentile:
          percentile != null ? Value(percentile) : const Value.absent(),
    );

    await (_db.update(_db.isarUserProfiles)
          ..where((u) => u.email.equals(profile.email)))
        .write(companion);
    return _findByEmail(profile.email);
  }

  Future<void> deleteAccount() async {
    final profile = await currentUser();
    if (profile == null) return;
    await (_db.delete(_db.isarUserProfiles)
          ..where((u) => u.isarId.equals(profile.isarId)))
        .go();
    await _setSession(null);
  }

  static bool _isValidEmail(String email) {
    return RegExp(r'^[\w\.\-]+@[\w\.\-]+\.\w{2,}$').hasMatch(email);
  }
}
