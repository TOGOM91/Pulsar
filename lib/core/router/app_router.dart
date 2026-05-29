import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../features/home/presentation/screens/home_screen.dart';
import '../../features/events/presentation/screens/explore_screen.dart';
import '../../features/events/presentation/screens/event_detail_screen.dart';
import '../../features/tickets/presentation/screens/tickets_screen.dart';
import '../../features/profile/presentation/screens/profile_screen.dart';
import '../../features/cart/presentation/screens/cart_screen.dart';
import '../../features/settings/presentation/screens/settings_screen.dart';
import '../../features/auth/presentation/screens/welcome_screen.dart';
import '../../features/auth/presentation/screens/register_screen.dart';
import '../../features/auth/presentation/screens/login_screen.dart';
import '../../features/auth/presentation/screens/onboarding_screen.dart';
import '../../features/auth/presentation/screens/splash_screen.dart';
import '../../features/auth/presentation/providers/auth_provider.dart';
import '../../features/transport/presentation/screens/transport_comparator_screen.dart';
import '../../features/accommodation/presentation/screens/accommodation_screen.dart';
import '../../features/favorites/presentation/screens/favorites_screen.dart';
import '../../features/eco/presentation/screens/eco_score_screen.dart';
import '../../features/notifications/presentation/screens/notifications_screen.dart';
import '../../features/map/presentation/screens/map_screen.dart';
import '../../features/profile/presentation/screens/profile_edit_screen.dart';
import '../../features/admin/presentation/screens/admin_dashboard_screen.dart';
import '../../features/admin/presentation/screens/admin_events_screen.dart';
import '../../features/admin/presentation/screens/admin_event_edit_screen.dart';
import '../../features/admin/presentation/screens/admin_users_screen.dart';
import '../../features/admin/presentation/screens/admin_orders_screen.dart';
import '../../features/admin/presentation/screens/admin_promos_screen.dart';
import '../../features/admin/presentation/screens/admin_settings_screen.dart';
import '../../features/admin/presentation/screens/admin_notifications_screen.dart';
import '../../features/admin/presentation/screens/admin_audit_screen.dart';
import '../../features/admin/domain/role.dart';
import '../widgets/app_shell.dart';
import 'transitions.dart';

class AppRoutes {
  static const home = '/';
  static const explore = '/explore';
  static const tickets = '/tickets';
  static const profile = '/profile';
  static const profileEdit = '/profile/edit';
  static const eventDetail = '/event/:id';
  static const cart = '/cart';
  static const settings = '/settings';
  static const welcome = '/welcome';
  static const register = '/register';
  static const login = '/login';
  static const onboarding = '/onboarding';
  static const transport = '/transport';
  static const favorites = '/favorites';
  static const ecoScore = '/eco-score';
  static const splash = '/splash';
  static const admin = '/admin';
  static const adminEvents = '/admin/events';
  static const adminUsers = '/admin/users';
  static const adminOrders = '/admin/orders';
  static const adminPromos = '/admin/promos';
  static const adminSettings = '/admin/settings';
  static const adminNotifications = '/admin/notifications';
  static const adminAudit = '/admin/audit';
}

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

/// Bridges Riverpod's `AsyncValue<AuthState>` to a Listenable so GoRouter
/// can re-evaluate redirects when auth changes. Without this, the router
/// stays stuck because it's built once and never told to refresh.
class _AuthRefreshNotifier extends ChangeNotifier {
  _AuthRefreshNotifier(Ref ref) {
    ref.listen(authProvider, (_, __) => notifyListeners());
  }
}

final _authRefreshProvider =
    Provider<_AuthRefreshNotifier>((ref) => _AuthRefreshNotifier(ref));

/// Auth + onboarding-aware router (single instance, refreshes on auth change).
final routerProvider = Provider<GoRouter>((ref) {
  final refreshListenable = ref.watch(_authRefreshProvider);

  return GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: AppRoutes.splash,
    debugLogDiagnostics: false,
    refreshListenable: refreshListenable,
    redirect: (context, state) {
      // Read auth fresh on every redirect — never stale.
      final authState = ref.read(authProvider);
      final loc = state.matchedLocation;
      if (loc == AppRoutes.splash) return null;
      final isAuthRoute = loc == AppRoutes.welcome ||
          loc == AppRoutes.register ||
          loc == AppRoutes.login;
      final isOnboarding = loc == AppRoutes.onboarding;

      return authState.when(
        data: (auth) {
          if (auth is AuthLoading) return null;
          if (auth is AuthUnauthenticated) {
            return isAuthRoute ? null : AppRoutes.welcome;
          }
          if (auth is AuthAuthenticated) {
            if (!auth.profile.isOnboarded && !isOnboarding) {
              return AppRoutes.onboarding;
            }
            if (auth.profile.isOnboarded && isOnboarding) {
              return AppRoutes.home;
            }
            if (isAuthRoute) return AppRoutes.home;
            if (loc.startsWith('/admin')) {
              final role = UserRole.fromWire(auth.profile.role);
              if (!role.isAdmin) return AppRoutes.home;
            }
          }
          return null;
        },
        loading: () => null,
        error: (_, __) => AppRoutes.welcome,
      );
    },
    routes: [
      GoRoute(
        path: AppRoutes.splash,
        name: 'splash',
        parentNavigatorKey: _rootNavigatorKey,
        builder: (_, __) => const SplashScreen(),
      ),
      GoRoute(
        path: AppRoutes.welcome,
        name: 'welcome',
        parentNavigatorKey: _rootNavigatorKey,
        builder: (_, __) => const WelcomeScreen(),
      ),
      GoRoute(
        path: AppRoutes.register,
        name: 'register',
        parentNavigatorKey: _rootNavigatorKey,
        builder: (_, __) => const RegisterScreen(),
      ),
      GoRoute(
        path: AppRoutes.login,
        name: 'login',
        parentNavigatorKey: _rootNavigatorKey,
        builder: (_, __) => const LoginScreen(),
      ),
      GoRoute(
        path: AppRoutes.onboarding,
        name: 'onboarding',
        parentNavigatorKey: _rootNavigatorKey,
        builder: (_, __) => const OnboardingScreen(),
      ),

      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (_, __, child) => AppShell(child: child),
        routes: [
          GoRoute(
            path: AppRoutes.home,
            name: 'home',
            pageBuilder: (_, __) =>
                const NoTransitionPage(child: HomeScreen()),
          ),
          GoRoute(
            path: AppRoutes.explore,
            name: 'explore',
            pageBuilder: (_, __) =>
                const NoTransitionPage(child: ExploreScreen()),
          ),
          GoRoute(
            path: AppRoutes.tickets,
            name: 'tickets',
            pageBuilder: (_, __) =>
                const NoTransitionPage(child: TicketsScreen()),
          ),
          GoRoute(
            path: AppRoutes.profile,
            name: 'profile',
            pageBuilder: (_, __) =>
                const NoTransitionPage(child: ProfileScreen()),
          ),
          GoRoute(
            path: AppRoutes.admin,
            name: 'admin',
            pageBuilder: (_, __) =>
                const NoTransitionPage(child: AdminDashboardScreen()),
          ),
        ],
      ),

      // Profile edit (outside the shell — full-page form).
      GoRoute(
        path: AppRoutes.profileEdit,
        name: 'profileEdit',
        parentNavigatorKey: _rootNavigatorKey,
        pageBuilder: (_, state) => slideUpPage(
          key: state.pageKey,
          child: const ProfileEditScreen(),
        ),
      ),

      // Admin sub-screens
      GoRoute(
        path: AppRoutes.adminEvents,
        name: 'adminEvents',
        parentNavigatorKey: _rootNavigatorKey,
        pageBuilder: (_, state) => slideRightPage(
          key: state.pageKey,
          child: const AdminEventsScreen(),
        ),
      ),
      GoRoute(
        path: '/admin/events/new',
        name: 'adminEventNew',
        parentNavigatorKey: _rootNavigatorKey,
        pageBuilder: (_, state) => slideRightPage(
          key: state.pageKey,
          child: const AdminEventEditScreen(),
        ),
      ),
      GoRoute(
        path: '/admin/events/:id',
        name: 'adminEventEdit',
        parentNavigatorKey: _rootNavigatorKey,
        pageBuilder: (_, state) => slideRightPage(
          key: state.pageKey,
          child: AdminEventEditScreen(eventId: state.pathParameters['id']),
        ),
      ),
      GoRoute(
        path: AppRoutes.adminUsers,
        name: 'adminUsers',
        parentNavigatorKey: _rootNavigatorKey,
        pageBuilder: (_, state) => slideRightPage(
          key: state.pageKey,
          child: const AdminUsersScreen(),
        ),
      ),
      GoRoute(
        path: AppRoutes.adminOrders,
        name: 'adminOrders',
        parentNavigatorKey: _rootNavigatorKey,
        pageBuilder: (_, state) => slideRightPage(
          key: state.pageKey,
          child: const AdminOrdersScreen(),
        ),
      ),
      GoRoute(
        path: AppRoutes.adminPromos,
        name: 'adminPromos',
        parentNavigatorKey: _rootNavigatorKey,
        pageBuilder: (_, state) => slideRightPage(
          key: state.pageKey,
          child: const AdminPromosScreen(),
        ),
      ),
      GoRoute(
        path: AppRoutes.adminSettings,
        name: 'adminSettings',
        parentNavigatorKey: _rootNavigatorKey,
        pageBuilder: (_, state) => slideRightPage(
          key: state.pageKey,
          child: const AdminSettingsScreen(),
        ),
      ),
      GoRoute(
        path: AppRoutes.adminNotifications,
        name: 'adminNotifications',
        parentNavigatorKey: _rootNavigatorKey,
        pageBuilder: (_, state) => slideRightPage(
          key: state.pageKey,
          child: const AdminNotificationsScreen(),
        ),
      ),
      GoRoute(
        path: AppRoutes.adminAudit,
        name: 'adminAudit',
        parentNavigatorKey: _rootNavigatorKey,
        pageBuilder: (_, state) => slideRightPage(
          key: state.pageKey,
          child: const AdminAuditScreen(),
        ),
      ),

      GoRoute(
        path: AppRoutes.eventDetail,
        name: 'eventDetail',
        parentNavigatorKey: _rootNavigatorKey,
        pageBuilder: (context, state) => slideRightPage(
          key: state.pageKey,
          child: EventDetailScreen(eventId: state.pathParameters['id']!),
        ),
      ),
      GoRoute(
        path: AppRoutes.cart,
        name: 'cart',
        parentNavigatorKey: _rootNavigatorKey,
        pageBuilder: (_, state) => slideUpPage(
          key: state.pageKey,
          child: const CartScreen(),
        ),
      ),
      GoRoute(
        path: AppRoutes.settings,
        name: 'settings',
        parentNavigatorKey: _rootNavigatorKey,
        pageBuilder: (_, state) => fadeScalePage(
          key: state.pageKey,
          child: const SettingsScreen(),
        ),
      ),
      GoRoute(
        path: '/transport/:eventId',
        name: 'transport',
        parentNavigatorKey: _rootNavigatorKey,
        pageBuilder: (context, state) {
          final raw = state.extra;
          final extra = raw is Map
              ? raw.map((k, v) => MapEntry(k.toString(), v?.toString() ?? ''))
              : <String, String>{};
          return slideRightPage(
            key: state.pageKey,
            child: TransportComparatorScreen(
              eventId: state.pathParameters['eventId']!,
              eventName: extra['eventName'] ?? 'Événement',
              eventLocation: extra['eventLocation'] ?? '',
            ),
          );
        },
      ),
      GoRoute(
        path: '/accommodation/:eventId',
        name: 'accommodation',
        parentNavigatorKey: _rootNavigatorKey,
        pageBuilder: (context, state) {
          final raw = state.extra;
          final extra = raw is Map
              ? raw.map((k, v) => MapEntry(k.toString(), v?.toString() ?? ''))
              : <String, String>{};
          return slideRightPage(
            key: state.pageKey,
            child: AccommodationScreen(
              eventId: state.pathParameters['eventId']!,
              eventName: extra['eventName'] ?? 'Événement',
              eventLocation: extra['eventLocation'] ?? '',
            ),
          );
        },
      ),
      GoRoute(
        path: AppRoutes.favorites,
        name: 'favorites',
        parentNavigatorKey: _rootNavigatorKey,
        pageBuilder: (_, state) => slideRightPage(
          key: state.pageKey,
          child: const FavoritesScreen(),
        ),
      ),
      GoRoute(
        path: AppRoutes.ecoScore,
        name: 'ecoScore',
        parentNavigatorKey: _rootNavigatorKey,
        pageBuilder: (_, state) => fadeScalePage(
          key: state.pageKey,
          child: const EcoScoreScreen(),
        ),
      ),
      GoRoute(
        path: '/notifications',
        name: 'notifications',
        parentNavigatorKey: _rootNavigatorKey,
        pageBuilder: (_, state) => slideUpPage(
          key: state.pageKey,
          child: const NotificationsScreen(),
        ),
      ),
      GoRoute(
        path: '/map',
        name: 'map',
        parentNavigatorKey: _rootNavigatorKey,
        pageBuilder: (_, state) => fadeScalePage(
          key: state.pageKey,
          child: const MapScreen(),
        ),
      ),
    ],
  );
});
