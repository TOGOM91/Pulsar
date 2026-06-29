import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/theme/app_theme.dart';
import '../../data/admin_repository.dart';
import '../../domain/role.dart';
import '../providers/admin_provider.dart';

/// Admin landing page — KPIs + section navigation.
class AdminDashboardScreen extends ConsumerWidget {
  const AdminDashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final stats = ref.watch(dashboardStatsProvider);
    final role = ref.watch(currentRoleProvider);
    final profile = ref.watch(currentProfileProvider);

    return Scaffold(
      body: RefreshIndicator(
        color: PulsarColors.primary,
        onRefresh: () async {
          ref.invalidate(dashboardStatsProvider);
        },
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              elevation: 0,
              scrolledUnderElevation: 0,
              backgroundColor: theme.scaffoldBackgroundColor,
              titleSpacing: 20,
              title: Row(
                children: [
                  Text(role.emoji, style: const TextStyle(fontSize: 22)),
                  const SizedBox(width: 8),
                  Text(
                    role.isOwner ? 'ADMIN' : 'STAFF',
                    style: PulsarTheme.display(28,
                        color: theme.colorScheme.onSurface),
                  ),
                ],
              ),
              actions: [
                IconButton(
                  icon: const Icon(Icons.history_rounded),
                  tooltip: 'Journal d\'activité',
                  onPressed: role.canViewAuditLog
                      ? () => context.push('/admin/audit')
                      : null,
                ),
                IconButton(
                  icon: const Icon(Icons.refresh_rounded),
                  tooltip: 'Rafraîchir',
                  onPressed: () => ref.invalidate(dashboardStatsProvider),
                ),
                const SizedBox(width: 8),
              ],
            ),
            SliverPadding(
              padding: const EdgeInsets.fromLTRB(20, 8, 20, 140),
              sliver: SliverList(
                delegate: SliverChildListDelegate([
                  _WelcomeCard(profile: profile, role: role)
                      .animate()
                      .fadeIn(duration: 250.ms),
                  const SizedBox(height: 16),
                  stats.when(
                    data: (s) => _KpiGrid(stats: s),
                    loading: () => const Center(
                        child: Padding(
                      padding: EdgeInsets.all(40),
                      child: CircularProgressIndicator(),
                    )),
                    error: (e, _) => Text('Erreur: $e',
                        style: const TextStyle(color: PulsarColors.error)),
                  ),
                  const SizedBox(height: 24),
                  Text(
                    'GESTION',
                    style: theme.textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.w800,
                          letterSpacing: 1.2,
                        ),
                  ),
                  const SizedBox(height: 12),
                  _AdminTile(
                    icon: Icons.event_rounded,
                    color: PulsarColors.primary,
                    title: 'Événements',
                    subtitle: 'CRUD complet, mise en avant',
                    onTap: () => context.push('/admin/events'),
                  ),
                  _AdminTile(
                    icon: Icons.local_offer_rounded,
                    color: PulsarColors.accent,
                    title: 'Codes promo',
                    subtitle: 'Créer, activer, expirer',
                    onTap: () => context.push('/admin/promos'),
                  ),
                  _AdminTile(
                    icon: Icons.receipt_long_rounded,
                    color: PulsarColors.info,
                    title: 'Commandes',
                    subtitle: 'Voir, rembourser',
                    onTap: () => context.push('/admin/orders'),
                  ),
                  _AdminTile(
                    icon: Icons.send_rounded,
                    color: PulsarColors.secondary,
                    title: 'Notifications push',
                    subtitle: 'Composer & envoyer',
                    onTap: () => context.push('/admin/notifications'),
                  ),
                  if (role.canManageUsers)
                    _AdminTile(
                      icon: Icons.people_alt_rounded,
                      color: PulsarColors.ecoGreen,
                      title: 'Utilisateurs',
                      subtitle: 'Rôles, suspensions',
                      onTap: () => context.push('/admin/users'),
                    ),
                  if (role.canEditAppSettings)
                    _AdminTile(
                      icon: Icons.settings_applications_rounded,
                      color: PulsarColors.secondaryDark,
                      title: 'Réglages globaux',
                      subtitle: 'TVA, devise, maintenance, Stripe',
                      onTap: () => context.push('/admin/settings'),
                    ),
                ].animate(interval: 60.ms).fadeIn(duration: 300.ms).slideY(begin: 0.04)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _WelcomeCard extends StatelessWidget {
  final dynamic profile;
  final UserRole role;

  const _WelcomeCard({required this.profile, required this.role});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(18, 18, 18, 20),
      decoration: BoxDecoration(
        gradient: PulsarColors.heroGradient,
        borderRadius: BorderRadius.circular(PulsarTokens.radiusXl),
        boxShadow: PulsarColors.glowPrimary(),
      ),
      child: Row(
        children: [
          Text(role.emoji, style: const TextStyle(fontSize: 36)),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  profile?.name ?? 'Admin',
                  style: PulsarTheme.display(22, color: Colors.white),
                ),
                const SizedBox(height: 2),
                Text(
                  '${role.label} • ${profile?.email ?? "—"}',
                  style: TextStyle(
                    color: Colors.white.withValues(alpha: 0.9),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _KpiGrid extends StatelessWidget {
  final DashboardStats stats;
  const _KpiGrid({required this.stats});

  @override
  Widget build(BuildContext context) {
    final cards = <Widget>[
      _KpiCard(
        emoji: '👥',
        label: 'Utilisateurs',
        value: '${stats.totalUsers}',
        accent: PulsarColors.primary,
        sub:
            '${stats.byRole[UserRole.owner] ?? 0} owners · ${stats.byRole[UserRole.collaborator] ?? 0} staff',
      ),
      _KpiCard(
        emoji: '🎟️',
        label: 'Événements',
        value: '${stats.totalEvents}',
        accent: PulsarColors.accent,
        sub: '${stats.publishedEvents} publiés',
      ),
      _KpiCard(
        emoji: '💸',
        label: 'Revenu',
        value: '${stats.revenue.toStringAsFixed(0)}€',
        accent: PulsarColors.info,
        sub: '${stats.paidOrders} commandes payées',
      ),
      _KpiCard(
        emoji: '🌱',
        label: 'CO₂ évité',
        value: '${stats.co2SavedKg.toStringAsFixed(0)}kg',
        accent: PulsarColors.ecoGreen,
        sub: '${stats.totalTickets} billets émis',
      ),
      _KpiCard(
        emoji: '↩️',
        label: 'Remboursements',
        value: '${stats.refundedAmount.toStringAsFixed(0)}€',
        accent: PulsarColors.error,
        sub: '${stats.refundedOrders} commandes',
      ),
      _KpiCard(
        emoji: '🚫',
        label: 'Suspendus',
        value: '${stats.suspendedUsers}',
        accent: PulsarColors.warning,
        sub: 'comptes bloqués',
      ),
    ];

    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      childAspectRatio: 1.4,
      mainAxisSpacing: 12,
      crossAxisSpacing: 12,
      children: cards,
    );
  }
}

class _KpiCard extends StatelessWidget {
  final String emoji;
  final String label;
  final String value;
  final String sub;
  final Color accent;

  const _KpiCard({
    required this.emoji,
    required this.label,
    required this.value,
    required this.sub,
    required this.accent,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: isDark ? PulsarColors.cardDark : PulsarColors.cardLight,
        borderRadius: BorderRadius.circular(PulsarTokens.radiusLg),
        border: Border.all(color: accent.withValues(alpha: 0.2)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(emoji, style: const TextStyle(fontSize: 22)),
              const Spacer(),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                decoration: BoxDecoration(
                  color: accent.withValues(alpha: 0.12),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Text(
                  label,
                  style: TextStyle(
                    color: accent,
                    fontWeight: FontWeight.w700,
                    fontSize: 9,
                    letterSpacing: 0.5,
                  ),
                ),
              ),
            ],
          ),
          const Spacer(),
          Text(value, style: PulsarTheme.display(28, color: accent)),
          const SizedBox(height: 2),
          Text(
            sub,
            style: theme.textTheme.bodySmall?.copyWith(fontSize: 10),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}

class _AdminTile extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  const _AdminTile({
    required this.icon,
    required this.color,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: isDark ? PulsarColors.cardDark : PulsarColors.cardLight,
        borderRadius: BorderRadius.circular(PulsarTokens.radiusLg),
        border:
            Border.all(color: theme.colorScheme.outline.withValues(alpha: 0.3)),
      ),
      clipBehavior: Clip.antiAlias,
      child: ListTile(
        onTap: onTap,
        leading: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: color.withValues(alpha: 0.12),
            borderRadius: BorderRadius.circular(PulsarTokens.radiusSm),
          ),
          child: Icon(icon, size: 20, color: color),
        ),
        title: Text(title, style: theme.textTheme.titleMedium),
        subtitle: Text(subtitle, style: theme.textTheme.bodySmall),
        trailing: const Icon(Icons.chevron_right_rounded),
      ),
    );
  }
}
