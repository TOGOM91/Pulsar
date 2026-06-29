import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/database/models.dart';
import '../../../auth/presentation/providers/auth_provider.dart';
import '../../../admin/presentation/providers/admin_provider.dart';

/// Profile screen — gradient hero, eco-score, stats grid, quick actions.
class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authProvider);
    final profile = authState.when(
      data: (a) => a is AuthAuthenticated ? a.profile : null,
      loading: () => null,
      error: (_, __) => null,
    );

    if (authState.isLoading) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }
    if (profile == null) {
      return const Scaffold(body: Center(child: Text('Profil non trouvé')));
    }

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // ── Hero header with gradient ──
          SliverToBoxAdapter(child: _ProfileHero(profile: profile)),

          // ── Content ──
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 120),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                _EcoScoreCard(profile: profile)
                    .animate()
                    .fadeIn(delay: 200.ms)
                    .slideY(begin: 0.05),
                const SizedBox(height: 14),
                _StatsRow(profile: profile)
                    .animate()
                    .fadeIn(delay: 300.ms)
                    .slideY(begin: 0.05),
                const SizedBox(height: 14),
                _PreferencesCard(profile: profile)
                    .animate()
                    .fadeIn(delay: 400.ms)
                    .slideY(begin: 0.05),
                const SizedBox(height: 14),
                const _QuickActions()
                    .animate()
                    .fadeIn(delay: 500.ms)
                    .slideY(begin: 0.05),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}

class _ProfileHero extends StatelessWidget {
  final IsarUserProfile profile;

  const _ProfileHero({required this.profile});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 60, 20, 24),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF00D9CC),
            Color(0xFFD96AE8),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(PulsarTokens.radiusXl),
        ),
      ),
      child: Stack(
        children: [
          // Background orb
          Positioned(
            top: -40,
            right: -40,
            child: Container(
              width: 180,
              height: 180,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withValues(alpha: 0.1),
              ),
            ),
          ),
          Positioned(
            top: 12,
            right: 12,
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.edit_rounded, color: Colors.white),
                  tooltip: 'Éditer le profil',
                  onPressed: () => context.push('/profile/edit'),
                ),
                IconButton(
                  icon: const Icon(Icons.settings_rounded, color: Colors.white),
                  onPressed: () => context.push('/settings'),
                ),
              ],
            ),
          ),
          Column(
            children: [
              const SizedBox(height: 30),
              // ── Avatar with gradient ring ──
              Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.2),
                      blurRadius: 24,
                      offset: const Offset(0, 8),
                    ),
                  ],
                ),
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: PulsarColors.backgroundLight,
                  child: Text(
                    profile.name.isNotEmpty
                        ? profile.name[0].toUpperCase()
                        : '?',
                    style: PulsarTheme.display(
                      48,
                      color: Colors.white,
                    ).copyWith(
                      foreground: Paint()
                        ..shader = PulsarColors.heroGradient.createShader(
                          const Rect.fromLTWH(0, 0, 60, 60),
                        ),
                    ),
                  ),
                ),
              ).animate().scale(
                  begin: const Offset(0.5, 0.5),
                  end: const Offset(1, 1),
                  duration: 500.ms,
                  curve: Curves.elasticOut),
              const SizedBox(height: 16),
              Text(
                profile.name.toUpperCase(),
                style: PulsarTheme.display(34, color: Colors.white),
              ).animate().fadeIn(delay: 100.ms),
              const SizedBox(height: 4),
              Text(
                profile.email,
                style: TextStyle(
                  color: Colors.white.withValues(alpha: 0.85),
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              ).animate().fadeIn(delay: 150.ms),
              const SizedBox(height: 4),
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 12, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.2),
                  borderRadius:
                      BorderRadius.circular(PulsarTokens.radiusFull),
                ),
                child: Text(
                  'Membre depuis ${profile.memberSince}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 11,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.5,
                  ),
                ),
              ).animate().fadeIn(delay: 200.ms),
            ],
          ),
        ],
      ),
    );
  }
}

class _EcoScoreCard extends StatelessWidget {
  final IsarUserProfile profile;

  const _EcoScoreCard({required this.profile});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final score = (profile.co2SavedKg / 5).clamp(0, 100).round();

    return GestureDetector(
      onTap: () => context.push('/eco-score'),
      child: Container(
        margin: const EdgeInsets.only(top: 16),
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          color: PulsarColors.ecoGreen.withValues(alpha: 0.08),
          borderRadius: BorderRadius.circular(PulsarTokens.radiusLg),
          border: Border.all(
              color: PulsarColors.ecoGreen.withValues(alpha: 0.25)),
        ),
        child: Row(
          children: [
            SizedBox(
              width: 72,
              height: 72,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    width: 72,
                    height: 72,
                    child: CircularProgressIndicator(
                      value: score / 100,
                      strokeWidth: 6,
                      backgroundColor:
                          PulsarColors.ecoGreen.withValues(alpha: 0.15),
                      valueColor: const AlwaysStoppedAnimation(
                          PulsarColors.ecoGreen),
                      strokeCap: StrokeCap.round,
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text('🌱', style: TextStyle(fontSize: 16)),
                      Text(
                        '$score',
                        style: theme.textTheme.titleLarge?.copyWith(
                          color: PulsarColors.ecoGreen,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'ÉCO-SCORE',
                    style: PulsarTheme.display(22,
                        color: PulsarColors.ecoGreen),
                  ),
                  Text(
                    'Top ${profile.percentile}% des utilisateurs',
                    style: theme.textTheme.bodySmall,
                  ),
                  const SizedBox(height: 6),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      gradient: PulsarColors.ecoGradient,
                      borderRadius:
                          BorderRadius.circular(PulsarTokens.radiusFull),
                    ),
                    child: const Text(
                      '�?� Voyageur Écoresponsable',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Icon(Icons.chevron_right_rounded,
                color: PulsarColors.ecoGreen),
          ],
        ),
      ),
    );
  }
}

class _StatsRow extends StatelessWidget {
  final IsarUserProfile profile;

  const _StatsRow({required this.profile});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: isDark ? PulsarColors.cardDark : PulsarColors.cardLight,
        borderRadius: BorderRadius.circular(PulsarTokens.radiusLg),
        border: Border.all(
            color: theme.colorScheme.outline.withValues(alpha: 0.5)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text('📊', style: TextStyle(fontSize: 18)),
              const SizedBox(width: 8),
              Text(
                'MON IMPACT',
                style: PulsarTheme.display(22,
                    color: theme.colorScheme.onSurface),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              _StatItem(
                emoji: '🎫',
                value: '${profile.eventsBooked}',
                label: 'Événements',
                color: PulsarColors.primary,
              ),
              _StatItem(
                emoji: '�?',
                value: profile.co2SavedKg.toStringAsFixed(0),
                unit: 'kg',
                label: 'CO₂ évités',
                color: PulsarColors.ecoGreen,
              ),
              _StatItem(
                emoji: '💰',
                value: profile.moneySavedEur.toStringAsFixed(0),
                unit: '€',
                label: 'Économisés',
                color: PulsarColors.secondaryDark,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _StatItem extends StatelessWidget {
  final String emoji;
  final String value;
  final String? unit;
  final String label;
  final Color color;

  const _StatItem({
    required this.emoji,
    required this.value,
    required this.label,
    required this.color,
    this.unit,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Expanded(
      child: Column(
        children: [
          Text(emoji, style: const TextStyle(fontSize: 22)),
          const SizedBox(height: 6),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                value,
                style: PulsarTheme.display(28, color: color),
              ),
              if (unit != null)
                Padding(
                  padding: const EdgeInsets.only(bottom: 4),
                  child: Text(
                    unit!,
                    style: PulsarTheme.display(14, color: color),
                  ),
                ),
            ],
          ),
          Text(
            label,
            style: theme.textTheme.bodySmall?.copyWith(fontSize: 10),
          ),
        ],
      ),
    );
  }
}

class _PreferencesCard extends StatelessWidget {
  final IsarUserProfile profile;

  const _PreferencesCard({required this.profile});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: isDark ? PulsarColors.cardDark : PulsarColors.cardLight,
        borderRadius: BorderRadius.circular(PulsarTokens.radiusLg),
        border: Border.all(
            color: theme.colorScheme.outline.withValues(alpha: 0.5)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text('🎵', style: TextStyle(fontSize: 18)),
              const SizedBox(width: 8),
              Text(
                'MES PRÉFÉRENCES',
                style: PulsarTheme.display(22,
                    color: theme.colorScheme.onSurface),
              ),
            ],
          ),
          const SizedBox(height: 14),
          if (profile.genres.isEmpty)
            Text('Aucun genre sélectionné',
                style: theme.textTheme.bodySmall)
          else
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: profile.genres.map((g) {
                return Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 14, vertical: 7),
                  decoration: BoxDecoration(
                    gradient: PulsarColors.heroGradient,
                    borderRadius:
                        BorderRadius.circular(PulsarTokens.radiusFull),
                  ),
                  child: Text(
                    g,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                );
              }).toList(),
            ),
          const SizedBox(height: 14),
          Row(
            children: [
              const Icon(Icons.location_on_outlined,
                  size: 14, color: PulsarColors.textSecondaryLight),
              const SizedBox(width: 4),
              Text(profile.locationName,
                  style: theme.textTheme.bodySmall),
              const SizedBox(width: 12),
              const Icon(Icons.euro_rounded,
                  size: 14, color: PulsarColors.textSecondaryLight),
              const SizedBox(width: 4),
              Text(
                'Budget max ${profile.budgetMax.toStringAsFixed(0)}€',
                style: theme.textTheme.bodySmall,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _QuickActions extends ConsumerWidget {
  const _QuickActions();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final role = ref.watch(currentRoleProvider);

    return Container(
      decoration: BoxDecoration(
        color: isDark ? PulsarColors.cardDark : PulsarColors.cardLight,
        borderRadius: BorderRadius.circular(PulsarTokens.radiusLg),
        border: Border.all(
            color: theme.colorScheme.outline.withValues(alpha: 0.5)),
      ),
      clipBehavior: Clip.antiAlias,
      child: Material(
        type: MaterialType.transparency,
        child: Column(
        children: [
          _ActionTile(
            icon: Icons.edit_rounded,
            label: 'Éditer mon profil',
            color: PulsarColors.primary,
            onTap: () => context.push('/profile/edit'),
          ),
          _Sep(),
          _ActionTile(
            icon: Icons.favorite_rounded,
            label: 'Mes favoris',
            color: PulsarColors.error,
            onTap: () => context.push('/favorites'),
          ),
          _Sep(),
          _ActionTile(
            icon: Icons.eco_rounded,
            label: 'Mon éco-score détaillé',
            color: PulsarColors.ecoGreen,
            onTap: () => context.push('/eco-score'),
          ),
          _Sep(),
          _ActionTile(
            icon: Icons.confirmation_number_rounded,
            label: 'Mes billets',
            color: PulsarColors.info,
            onTap: () => context.go('/tickets'),
          ),
          if (role.isAdmin) ...[
            _Sep(),
            _ActionTile(
              icon: role.isOwner
                  ? Icons.shield_rounded
                  : Icons.workspace_premium_rounded,
              label:
                  role.isOwner ? 'Espace admin' : 'Espace collaborateur',
              color: PulsarColors.secondary,
              onTap: () => context.go('/admin'),
            ),
          ],
          _Sep(),
          _ActionTile(
            icon: Icons.share_rounded,
            label: 'Partager Pulsar',
            color: PulsarColors.accent,
            onTap: () {},
          ),
        ],
        ),
      ),
    );
  }
}

class _Sep extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      Divider(height: 1, color: Theme.of(context).colorScheme.outlineVariant);
}

class _ActionTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;
  final VoidCallback onTap;

  const _ActionTile({
    required this.icon,
    required this.label,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      contentPadding:
          const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      leading: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: color.withValues(alpha: 0.12),
          borderRadius: BorderRadius.circular(PulsarTokens.radiusSm),
        ),
        child: Icon(icon, size: 18, color: color),
      ),
      title: Text(
        label,
        style: Theme.of(context).textTheme.titleMedium,
      ),
      trailing: const Icon(Icons.chevron_right_rounded),
    );
  }
}
