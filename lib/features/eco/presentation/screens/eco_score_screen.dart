import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/theme/colors.dart';
import '../../../auth/presentation/providers/auth_provider.dart';

/// Detailed eco-score screen — stats, badges, tips.
class EcoScoreScreen extends ConsumerWidget {
  const EcoScoreScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final auth = ref.watch(authProvider).valueOrNull;
    if (auth is! AuthAuthenticated) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }
    final profile = auth.profile;
    final co2 = profile.co2SavedKg;
    final score = _scoreFromCo2(co2);
    final grade = _grade(score);

    return Scaffold(
      appBar: AppBar(
        title: Text('Mon éco-score', style: theme.textTheme.displaySmall),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: () => context.pop(),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          // ── Big eco-score circle ──
          Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  PulsarColors.ecoGreen.withValues(alpha: 0.15),
                  PulsarColors.ecoTeal.withValues(alpha: 0.08),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(24),
              border: Border.all(
                  color: PulsarColors.ecoGreen.withValues(alpha: 0.25)),
            ),
            child: Column(
              children: [
                SizedBox(
                  width: 160,
                  height: 160,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      SizedBox(
                        width: 160,
                        height: 160,
                        child: CircularProgressIndicator(
                          value: score / 100,
                          strokeWidth: 12,
                          backgroundColor:
                              PulsarColors.ecoGreen.withValues(alpha: 0.12),
                          valueColor: const AlwaysStoppedAnimation(
                              PulsarColors.ecoGreen),
                          strokeCap: StrokeCap.round,
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            grade,
                            style: theme.textTheme.displayLarge?.copyWith(
                              color: PulsarColors.ecoGreen,
                              fontWeight: FontWeight.w800,
                              fontSize: 48,
                            ),
                          ),
                          Text(
                            'Éco-grade',
                            style: theme.textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ],
                  ),
                )
                    .animate()
                    .scale(
                        duration: 600.ms,
                        curve: Curves.elasticOut,
                        begin: const Offset(0.5, 0.5),
                        end: const Offset(1, 1)),
                const SizedBox(height: 16),
                Text(
                  'Top ${profile.percentile}% des utilisateurs',
                  style: theme.textTheme.titleMedium?.copyWith(
                    color: PulsarColors.ecoGreen,
                    fontWeight: FontWeight.w700,
                  ),
                ).animate().fadeIn(delay: 200.ms),
                const SizedBox(height: 4),
                Text(
                  _grade(score) == 'A+'
                      ? '🏆 Tu es une référence !'
                      : 'Continue tes efforts pour atteindre A+',
                  style: theme.textTheme.bodySmall,
                ).animate().fadeIn(delay: 300.ms),
              ],
            ),
          ).animate().fadeIn(duration: 500.ms),

          const SizedBox(height: 24),

          // ── Stats grid ──
          Row(
            children: [
              Expanded(
                child: _StatCard(
                  emoji: '🌍',
                  value: '${co2.toStringAsFixed(0)} kg',
                  label: 'CO₂ économisé',
                  color: PulsarColors.ecoGreen,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: _StatCard(
                  emoji: '🎫',
                  value: '${profile.eventsBooked}',
                  label: 'Événements',
                  color: PulsarColors.primary,
                ),
              ),
            ],
          ).animate().fadeIn(delay: 200.ms, duration: 500.ms),

          const SizedBox(height: 12),

          Row(
            children: [
              Expanded(
                child: _StatCard(
                  emoji: '💰',
                  value: '${profile.moneySavedEur.toStringAsFixed(0)}€',
                  label: 'Économisés',
                  color: PulsarColors.secondary,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: _StatCard(
                  emoji: '🌳',
                  value: (co2 / 22).toStringAsFixed(1),
                  label: 'Arbres équiv./an',
                  color: PulsarColors.ecoTeal,
                ),
              ),
            ],
          ).animate().fadeIn(delay: 300.ms, duration: 500.ms),

          const SizedBox(height: 28),

          // ── Badges ──
          Text('🏅 Tes badges',
              style: theme.textTheme.headlineSmall)
              .animate().fadeIn(delay: 400.ms),
          const SizedBox(height: 12),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: _badgesFor(co2, profile.eventsBooked).map((b) {
              return _Badge(badge: b);
            }).toList(),
          ).animate().fadeIn(delay: 500.ms, duration: 500.ms),

          const SizedBox(height: 28),

          // ── Tips ──
          Text('💡 Conseils Pulsar',
              style: theme.textTheme.headlineSmall)
              .animate().fadeIn(delay: 600.ms),
          const SizedBox(height: 12),
          ..._tips.map((t) => _TipCard(tip: t)
              .animate()
              .fadeIn(delay: 700.ms + (50 * _tips.indexOf(t)).ms)
              .slideX(begin: 0.05)),

          const SizedBox(height: 32),
        ],
      ),
    );
  }

  int _scoreFromCo2(double co2) {
    return (co2 / 5).clamp(0, 100).round();
  }

  String _grade(int score) {
    if (score >= 90) return 'A+';
    if (score >= 75) return 'A';
    if (score >= 60) return 'B';
    if (score >= 40) return 'C';
    if (score >= 20) return 'D';
    return 'E';
  }

  static const _tips = [
    _Tip(
      emoji: '🚆',
      title: 'Privilégie le train',
      body: 'Le TGV émet 8x moins de CO₂ que la voiture solo.',
    ),
    _Tip(
      emoji: '🚗',
      title: 'Covoiture intelligemment',
      body: 'Diviser le trajet par 4 = empreinte divisée par 4.',
    ),
    _Tip(
      emoji: '🏨',
      title: 'Choisis local',
      body: 'Un hébergement proche réduit les trajets quotidiens.',
    ),
    _Tip(
      emoji: '🌱',
      title: 'Active le mode éco',
      body: 'Pulsar triera automatiquement par impact carbone.',
    ),
  ];

  List<_BadgeData> _badgesFor(double co2, int events) => [
        _BadgeData(
          emoji: '🌱',
          name: 'Premier pas',
          earned: events >= 1,
          requirement: '1 événement',
        ),
        _BadgeData(
          emoji: '🚆',
          name: 'Voyageur Eco',
          earned: co2 >= 20,
          requirement: '20 kg CO₂ économisés',
        ),
        _BadgeData(
          emoji: '🌍',
          name: 'Planète Heureuse',
          earned: co2 >= 100,
          requirement: '100 kg CO₂',
        ),
        _BadgeData(
          emoji: '🎯',
          name: 'Régulier',
          earned: events >= 5,
          requirement: '5 événements',
        ),
        _BadgeData(
          emoji: '🏆',
          name: 'Champion Vert',
          earned: co2 >= 500,
          requirement: '500 kg CO₂',
        ),
        _BadgeData(
          emoji: '💎',
          name: 'Légende Pulsar',
          earned: events >= 25 && co2 >= 1000,
          requirement: '25 évts + 1000 kg',
        ),
      ];
}

class _StatCard extends StatelessWidget {
  final String emoji;
  final String value;
  final String label;
  final Color color;

  const _StatCard({
    required this.emoji,
    required this.value,
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isDark ? PulsarColors.cardDark : PulsarColors.cardLight,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: color.withValues(alpha: 0.2)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(emoji, style: const TextStyle(fontSize: 22)),
          const SizedBox(height: 8),
          Text(
            value,
            style: theme.textTheme.headlineSmall?.copyWith(
              color: color,
              fontWeight: FontWeight.w800,
            ),
          ),
          Text(label, style: theme.textTheme.bodySmall),
        ],
      ),
    );
  }
}

class _BadgeData {
  final String emoji;
  final String name;
  final bool earned;
  final String requirement;

  const _BadgeData({
    required this.emoji,
    required this.name,
    required this.earned,
    required this.requirement,
  });
}

class _Badge extends StatelessWidget {
  final _BadgeData badge;

  const _Badge({required this.badge});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    return Container(
      width: (MediaQuery.of(context).size.width - 60) / 3,
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
      decoration: BoxDecoration(
        color: badge.earned
            ? PulsarColors.ecoGreen.withValues(alpha: 0.1)
            : (isDark ? PulsarColors.cardDark : PulsarColors.cardLight),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: badge.earned
              ? PulsarColors.ecoGreen.withValues(alpha: 0.4)
              : theme.colorScheme.outline,
        ),
      ),
      child: Column(
        children: [
          Opacity(
            opacity: badge.earned ? 1 : 0.35,
            child: Text(badge.emoji, style: const TextStyle(fontSize: 32)),
          ),
          const SizedBox(height: 6),
          Text(
            badge.name,
            style: theme.textTheme.bodySmall?.copyWith(
              fontWeight: FontWeight.w700,
              color: badge.earned
                  ? PulsarColors.ecoGreen
                  : theme.colorScheme.onSurface,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 2),
          Text(
            badge.requirement,
            style: theme.textTheme.bodySmall?.copyWith(fontSize: 9),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class _Tip {
  final String emoji;
  final String title;
  final String body;
  const _Tip({required this.emoji, required this.title, required this.body});
}

class _TipCard extends StatelessWidget {
  final _Tip tip;
  const _TipCard({required this.tip});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: isDark ? PulsarColors.cardDark : PulsarColors.cardLight,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          Text(tip.emoji, style: const TextStyle(fontSize: 24)),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(tip.title,
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w700,
                    )),
                Text(tip.body, style: theme.textTheme.bodySmall),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
