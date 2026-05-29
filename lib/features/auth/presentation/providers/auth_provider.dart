import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/database/isar_collections.dart';
import '../../../../core/providers/core_providers.dart';
import '../../domain/auth_service.dart';
import '../../domain/firebase_auth_service.dart';

/// Set by main.dart — true only when Firebase is initialized successfully.
final firebaseReadyProvider = Provider<bool>((ref) => false);

/// Auth state — loading / unauthenticated / authenticated
sealed class AuthState {
  const AuthState();
}

final class AuthLoading extends AuthState {
  const AuthLoading();
}

final class AuthUnauthenticated extends AuthState {
  const AuthUnauthenticated();
}

final class AuthAuthenticated extends AuthState {
  final IsarUserProfile profile;
  const AuthAuthenticated(this.profile);
}

/// Unified auth surface — switches between Firebase and local based on
/// [firebaseReadyProvider] (set at startup by main.dart).
class AuthNotifier extends AsyncNotifier<AuthState> {
  late AuthService _local;
  FirebaseAuthService? _firebase;
  bool _useFirebase = false;

  @override
  Future<AuthState> build() async {
    final isar = await ref.watch(isarProvider.future);
    final firebaseReady = ref.watch(firebaseReadyProvider);

    _local = AuthService(isar);
    if (firebaseReady) {
      try {
        _firebase = FirebaseAuthService(isar);
        _useFirebase = true;
      } catch (_) {
        _useFirebase = false;
      }
    } else {
      _useFirebase = false;
    }

    final profile = _useFirebase
        ? await _firebase!.currentUser()
        : await _local.currentUser();
    return profile != null
        ? AuthAuthenticated(profile)
        : const AuthUnauthenticated();
  }

  bool get isUsingFirebase => _useFirebase;

  Future<String?> register({
    required String name,
    required String email,
    required String password,
  }) async {
    state = const AsyncData(AuthLoading());
    final result = _useFirebase
        ? await _firebase!
            .register(name: name, email: email, password: password)
        : await _local.register(
            name: name, email: email, password: password);
    switch (result) {
      case AuthSuccess(:final profile):
        state = AsyncData(AuthAuthenticated(profile));
        return null;
      case AuthFailure(:final message):
        state = const AsyncData(AuthUnauthenticated());
        return message;
    }
  }

  Future<String?> signIn({
    required String email,
    required String password,
  }) async {
    state = const AsyncData(AuthLoading());
    final result = _useFirebase
        ? await _firebase!.signIn(email: email, password: password)
        : await _local.signIn(email: email, password: password);
    switch (result) {
      case AuthSuccess(:final profile):
        state = AsyncData(AuthAuthenticated(profile));
        return null;
      case AuthFailure(:final message):
        state = const AsyncData(AuthUnauthenticated());
        return message;
    }
  }

  Future<String?> sendPasswordReset(String email) async {
    if (!_useFirebase) {
      return 'Réinitialisation par email nécessite Firebase.';
    }
    return _firebase!.sendPasswordResetEmail(email);
  }

  Future<void> updateProfile({
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
    final updated = _useFirebase
        ? await _firebase!.updateProfile(
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
          )
        : await _local.updateProfile(
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
    if (updated != null) {
      state = AsyncData(AuthAuthenticated(updated));
    }
  }

  /// Re-read the current profile from disk (used after an admin action
  /// affects the connected user's role/suspension).
  Future<void> refresh() async {
    final profile = _useFirebase
        ? await _firebase!.currentUser()
        : await _local.currentUser();
    state = AsyncData(
      profile != null
          ? AuthAuthenticated(profile)
          : const AuthUnauthenticated(),
    );
  }

  Future<void> signOut() async {
    if (_useFirebase) {
      await _firebase!.signOut();
    } else {
      await _local.signOut();
    }
    state = const AsyncData(AuthUnauthenticated());
  }

  Future<void> deleteAccount() async {
    if (_useFirebase) {
      await _firebase!.deleteAccount();
    } else {
      await _local.deleteAccount();
    }
    state = const AsyncData(AuthUnauthenticated());
  }

  Future<List<IsarUserProfile>> allAccounts() {
    return _useFirebase ? _firebase!.allAccounts() : _local.allAccounts();
  }
}

final authProvider = AsyncNotifierProvider<AuthNotifier, AuthState>(() {
  return AuthNotifier();
});

/// All registered accounts (for account picker).
final allAccountsProvider = FutureProvider<List<IsarUserProfile>>((ref) async {
  ref.watch(authProvider);
  return ref.read(authProvider.notifier).allAccounts();
});
