import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/database/models.dart';
import '../../../../core/providers/core_providers.dart';
import '../../../auth/presentation/providers/auth_provider.dart';
import '../../data/admin_repository.dart';
import '../../domain/role.dart';

final adminRepositoryProvider = Provider<AdminRepository>((ref) {
  return AdminRepository(ref.watch(firestoreServiceProvider));
});

final currentRoleProvider = Provider<UserRole>((ref) {
  final auth = ref.watch(authProvider);
  return auth.maybeWhen(
    data: (state) => state is AuthAuthenticated
        ? UserRole.fromWire(state.profile.role)
        : UserRole.user,
    orElse: () => UserRole.user,
  );
});

final currentProfileProvider = Provider<IsarUserProfile?>((ref) {
  final auth = ref.watch(authProvider);
  return auth.maybeWhen(
    data: (state) => state is AuthAuthenticated ? state.profile : null,
    orElse: () => null,
  );
});

// ── Stats ──

final dashboardStatsProvider = FutureProvider<DashboardStats>((ref) async {
  return ref.watch(adminRepositoryProvider).computeStats();
});

// ── Events ──

final adminEventsListProvider =
    FutureProvider<List<IsarEvent>>((ref) async {
  return ref.watch(adminRepositoryProvider).listEvents();
});

// ── Users ──

final adminUsersListProvider =
    FutureProvider<List<IsarUserProfile>>((ref) async {
  return ref.watch(adminRepositoryProvider).listUsers();
});

// ── Orders ──

final adminOrdersListProvider =
    FutureProvider.family<List<IsarOrder>, String?>((ref, status) async {
  return ref.watch(adminRepositoryProvider).listOrders(statusFilter: status);
});

// ── Promos ──

final adminPromosListProvider =
    FutureProvider<List<IsarPromoCode>>((ref) async {
  return ref.watch(adminRepositoryProvider).listPromos();
});

final activePromosProvider =
    FutureProvider<List<IsarPromoCode>>((ref) async {
  final all = await ref.watch(adminRepositoryProvider).listPromos();
  final now = DateTime.now();
  return all.where((p) {
    if (!p.isActive) return false;
    if (p.expiresAt != null && p.expiresAt!.isBefore(now)) return false;
    if (p.maxUses > 0 && p.usedCount >= p.maxUses) return false;
    return true;
  }).toList();
});

// ── Settings ──

final appSettingsProvider = FutureProvider<IsarAppSettings>((ref) async {
  return ref.watch(adminRepositoryProvider).getOrInitSettings();
});

// ── Audit log ──

final auditLogProvider = FutureProvider<List<IsarAdminAction>>((ref) async {
  return ref.watch(adminRepositoryProvider).auditLog();
});

// ── Broadcasts ──

final broadcastsProvider =
    FutureProvider<List<IsarBroadcastNotification>>((ref) async {
  return ref.watch(adminRepositoryProvider).listBroadcasts();
});
