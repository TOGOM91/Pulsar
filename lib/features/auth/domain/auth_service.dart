import 'dart:convert';
import 'dart:math';
import 'package:crypto/crypto.dart';
import 'package:isar/isar.dart';
import '../../../core/database/isar_collections.dart';
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

/// Local auth service — Isar-backed, multi-account, SHA-256 + salt hashing.
/// Sign out clears the session record but never deletes profiles.
class AuthService {
  final Isar _isar;

  AuthService(this._isar);

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

  /// Returns the currently logged-in profile, or null.
  /// Auto-promotes whitelisted emails to `owner` role.
  Future<IsarUserProfile?> currentUser() async {
    final session = await _isar.isarAuthSessions
        .filter()
        .keyEqualTo(_sessionKey)
        .findFirst();
    final email = session?.activeEmail;
    if (email == null || email.isEmpty) return null;
    final profile = await _findByEmail(email);
    if (profile != null) {
      await _ensureOwnerPromotion(profile);
    }
    return profile;
  }

  /// Apply owner whitelist promotion at session start.
  Future<void> _ensureOwnerPromotion(IsarUserProfile profile) async {
    if (kOwnerEmails.contains(profile.email) && profile.role != 'owner') {
      profile.role = 'owner';
      await _isar.writeTxn(() async {
        await _isar.isarUserProfiles.put(profile);
      });
    }
  }

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

  Future<IsarUserProfile?> _findByEmail(String email) {
    return _isar.isarUserProfiles
        .filter()
        .emailEqualTo(email.toLowerCase().trim(),
            caseSensitive: false)
        .findFirst();
  }

  /// All registered accounts (for an "accounts" picker UI).
  Future<List<IsarUserProfile>> allAccounts() {
    return _isar.isarUserProfiles.where().findAll();
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
    final profile = IsarUserProfile()
      ..email = lowerEmail
      ..name = trimmedName
      ..passwordHash = hashPassword(password)
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
      return const AuthFailure(
          "Aucun compte n'existe avec cet email.");
    }
    if (!verifyPassword(password, profile.passwordHash)) {
      return const AuthFailure('Mot de passe incorrect.');
    }
    if (profile.isSuspended) {
      return AuthFailure(
        'Compte suspendu. ${profile.suspendedReason ?? "Contacte le support."}',
      );
    }

    profile.lastLoginAt = DateTime.now();
    if (kOwnerEmails.contains(lowerEmail)) profile.role = 'owner';
    await _isar.writeTxn(() async {
      await _isar.isarUserProfiles.put(profile);
    });
    await _setSession(lowerEmail);

    return AuthSuccess(profile);
  }

  // ── Sign out ──

  /// Clear active session. Does NOT delete the profile.
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

    if (genres != null) profile.genres = genres;
    if (budgetMax != null) profile.budgetMax = budgetMax;
    if (locationName != null) profile.locationName = locationName;
    if (ecoMode != null) profile.ecoMode = ecoMode;
    if (isOnboarded != null) profile.isOnboarded = isOnboarded;
    if (name != null) profile.name = name;
    if (avatarUrl != null) profile.avatarUrl = avatarUrl;
    if (phone != null) profile.phone = phone;
    if (bio != null) profile.bio = bio;
    if (notificationsEnabled != null) {
      profile.notificationsEnabled = notificationsEnabled;
    }
    if (emailNotificationsEnabled != null) {
      profile.emailNotificationsEnabled = emailNotificationsEnabled;
    }
    if (socialNotificationsEnabled != null) {
      profile.socialNotificationsEnabled = socialNotificationsEnabled;
    }
    if (showCarbonFootprint != null) {
      profile.showCarbonFootprint = showCarbonFootprint;
    }
    if (language != null) profile.language = language;
    if (darkMode != null) profile.darkMode = darkMode;
    if (co2SavedKgDelta != null) profile.co2SavedKg += co2SavedKgDelta;
    if (eventsBookedDelta != null) profile.eventsBooked += eventsBookedDelta;
    if (moneySavedDelta != null) profile.moneySavedEur += moneySavedDelta;
    if (percentile != null) profile.percentile = percentile;

    await _isar.writeTxn(() async {
      await _isar.isarUserProfiles.put(profile);
    });
    return profile;
  }

  /// Permanently delete the active account.
  Future<void> deleteAccount() async {
    final profile = await currentUser();
    if (profile == null) return;
    await _isar.writeTxn(() async {
      await _isar.isarUserProfiles.delete(profile.isarId);
    });
    await _setSession(null);
  }

  static bool _isValidEmail(String email) {
    return RegExp(r'^[\w\.\-]+@[\w\.\-]+\.\w{2,}$').hasMatch(email);
  }
}
