import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/database/models.dart';
import '../../../../core/database/seed_data.dart';
import '../../../../core/providers/core_providers.dart';
import '../../domain/auth_service.dart';

/// Set by main.dart — true only when Firebase is initialized successfully.
final firebaseReadyProvider = Provider<bool>((ref) => false);

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

/// Unified auth — Firebase Auth credentials + Firestore profile.
class AuthNotifier extends AsyncNotifier<AuthState> {
  late AuthService _service;

  @override
  Future<AuthState> build() async {
    final fs = ref.watch(firestoreServiceProvider);
    _service = AuthService(fs);
    final profile = await _service.currentUser();
    if (profile != null) {
      _seedIfOwner(profile);
      return AuthAuthenticated(profile);
    }
    return const AuthUnauthenticated();
  }

  /// Seed Firestore once — only when the owner is logged in (has write access).
  void _seedIfOwner(IsarUserProfile profile) {
    if (profile.role != 'owner') return;
    final fs = ref.read(firestoreServiceProvider);
    SeedData.seedIfEmpty(fs).catchError((e) {
      if (kDebugMode) debugPrint('⚠️  Seed Firestore : $e');
    });
  }

  Future<String?> register({
    required String name,
    required String email,
    required String password,
  }) async {
    state = const AsyncData(AuthLoading());
    final result =
        await _service.register(name: name, email: email, password: password);
    switch (result) {
      case AuthSuccess(:final profile):
        _seedIfOwner(profile);
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
    final result = await _service.signIn(email: email, password: password);
    switch (result) {
      case AuthSuccess(:final profile):
        _seedIfOwner(profile);
        state = AsyncData(AuthAuthenticated(profile));
        return null;
      case AuthFailure(:final message):
        state = const AsyncData(AuthUnauthenticated());
        return message;
    }
  }

  Future<String?> sendPasswordReset(String email) =>
      _service.sendPasswordResetEmail(email);

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
    final updated = await _service.updateProfile(
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

  Future<void> refresh() async {
    final profile = await _service.currentUser();
    state = AsyncData(
      profile != null
          ? AuthAuthenticated(profile)
          : const AuthUnauthenticated(),
    );
  }

  Future<void> signOut() async {
    await _service.signOut();
    state = const AsyncData(AuthUnauthenticated());
  }

  Future<void> deleteAccount() async {
    await _service.deleteAccount();
    state = const AsyncData(AuthUnauthenticated());
  }

  Future<List<IsarUserProfile>> allAccounts() => _service.allAccounts();
}

final authProvider = AsyncNotifierProvider<AuthNotifier, AuthState>(() {
  return AuthNotifier();
});

final allAccountsProvider = FutureProvider<List<IsarUserProfile>>((ref) async {
  ref.watch(authProvider);
  return ref.read(authProvider.notifier).allAccounts();
});
