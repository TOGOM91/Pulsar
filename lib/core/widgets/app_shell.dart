import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../theme/colors.dart';
import '../../features/admin/presentation/providers/admin_provider.dart';

/// App shell with a floating Material 3 NavigationBar.
/// Adds an "Admin" tab for owners and collaborators.
class AppShell extends ConsumerWidget {
  final Widget child;

  const AppShell({super.key, required this.child});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final role = ref.watch(currentRoleProvider);
    final showAdmin = role.isAdmin;

    final paths = showAdmin
        ? const ['/', '/explore', '/tickets', '/profile', '/admin']
        : const ['/', '/explore', '/tickets', '/profile'];

    final location = GoRouterState.of(context).uri.path;
    var index = 0;
    for (var i = 0; i < paths.length; i++) {
      if (location == paths[i] || location.startsWith('${paths[i]}/')) {
        index = i;
        break;
      }
    }

    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final navBg =
        isDark ? PulsarColors.elevatedDark : PulsarColors.cardLight;

    return Scaffold(
      extendBody: true,
      body: child,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
        child: PhysicalModel(
          color: navBg,
          borderRadius: BorderRadius.circular(PulsarTokens.radiusXl),
          elevation: 16,
          shadowColor: Colors.black.withValues(alpha: isDark ? 0.5 : 0.15),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(PulsarTokens.radiusXl),
            child: NavigationBarTheme(
              data: NavigationBarThemeData(
                backgroundColor: navBg,
                indicatorColor:
                    PulsarColors.primary.withValues(alpha: 0.15),
                height: 64,
                labelTextStyle:
                    WidgetStateProperty.resolveWith((states) {
                  final sel = states.contains(WidgetState.selected);
                  return TextStyle(
                    color: sel
                        ? PulsarColors.primary
                        : theme.colorScheme.onSurfaceVariant,
                    fontWeight:
                        sel ? FontWeight.w700 : FontWeight.w500,
                    fontSize: 11,
                  );
                }),
                iconTheme:
                    WidgetStateProperty.resolveWith((states) {
                  final sel = states.contains(WidgetState.selected);
                  return IconThemeData(
                    color: sel
                        ? PulsarColors.primary
                        : theme.colorScheme.onSurfaceVariant,
                    size: 22,
                  );
                }),
              ),
              child: NavigationBar(
                selectedIndex: index,
                onDestinationSelected: (i) => context.go(paths[i]),
                elevation: 0,
                destinations: [
                  const NavigationDestination(
                    icon: Icon(Icons.home_outlined),
                    selectedIcon: Icon(Icons.home_rounded),
                    label: 'Accueil',
                  ),
                  const NavigationDestination(
                    icon: Icon(Icons.explore_outlined),
                    selectedIcon: Icon(Icons.explore_rounded),
                    label: 'Explorer',
                  ),
                  const NavigationDestination(
                    icon: Icon(Icons.confirmation_number_outlined),
                    selectedIcon: Icon(Icons.confirmation_number_rounded),
                    label: 'Billets',
                  ),
                  const NavigationDestination(
                    icon: Icon(Icons.person_outline_rounded),
                    selectedIcon: Icon(Icons.person_rounded),
                    label: 'Profil',
                  ),
                  if (showAdmin)
                    NavigationDestination(
                      icon: Icon(role.isOwner
                          ? Icons.shield_outlined
                          : Icons.workspace_premium_outlined),
                      selectedIcon: Icon(role.isOwner
                          ? Icons.shield_rounded
                          : Icons.workspace_premium_rounded),
                      label: role.isOwner ? 'Admin' : 'Staff',
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
