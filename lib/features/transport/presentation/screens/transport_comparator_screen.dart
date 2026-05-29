import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/widgets/gradient_button.dart';
import '../../../auth/presentation/providers/auth_provider.dart';
import '../../domain/transport_models.dart';
import '../providers/transport_provider.dart';

/// Comparator screen — sorts transport options by eco / duration / cost.
class TransportComparatorScreen extends ConsumerWidget {
  final String eventId;
  final String eventName;
  final String eventLocation;

  const TransportComparatorScreen({
    super.key,
    required this.eventId,
    required this.eventName,
    required this.eventLocation,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final options = ref.watch(transportOptionsProvider(
      (eventId: eventId, eventLocation: eventLocation),
    ));
    final sortBy = ref.watch(transportSortProvider);

    final sorted = [...options]..sort((a, b) {
        switch (sortBy) {
          case TransportSortBy.ecoScore:
            return b.ecoScore.compareTo(a.ecoScore);
          case TransportSortBy.duration:
            return a.duration.compareTo(b.duration);
          case TransportSortBy.cost:
            return a.cost.compareTo(b.cost);
        }
      });

    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Transport',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
            Text(
              eventName,
              style: theme.textTheme.bodySmall,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: () => context.pop(),
        ),
      ),
      body: Column(
        children: [
          // ── Eco insight banner ──
          Container(
            margin: const EdgeInsets.fromLTRB(20, 12, 20, 0),
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  PulsarColors.ecoGreen.withValues(alpha: 0.12),
                  PulsarColors.ecoTeal.withValues(alpha: 0.05),
                ],
              ),
              borderRadius: BorderRadius.circular(16),
              border:
                  Border.all(color: PulsarColors.ecoGreen.withValues(alpha: 0.25)),
            ),
            child: Row(
              children: [
                const Text('🌱', style: TextStyle(fontSize: 24)),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    '70% de l\'empreinte d\'un événement vient des déplacements. Choisis bas carbone pour économiser jusqu\'à 40 kg CO₂.',
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: PulsarColors.ecoGreen,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ).animate().fadeIn(duration: 400.ms),

          // ── Sort tabs ──
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 16, 20, 8),
            child: Row(
              children: [
                _SortChip(
                  label: 'Éco',
                  icon: Icons.eco_rounded,
                  active: sortBy == TransportSortBy.ecoScore,
                  onTap: () => ref.read(transportSortProvider.notifier).state =
                      TransportSortBy.ecoScore,
                ),
                const SizedBox(width: 8),
                _SortChip(
                  label: 'Durée',
                  icon: Icons.schedule_rounded,
                  active: sortBy == TransportSortBy.duration,
                  onTap: () => ref.read(transportSortProvider.notifier).state =
                      TransportSortBy.duration,
                ),
                const SizedBox(width: 8),
                _SortChip(
                  label: 'Prix',
                  icon: Icons.euro_rounded,
                  active: sortBy == TransportSortBy.cost,
                  onTap: () => ref.read(transportSortProvider.notifier).state =
                      TransportSortBy.cost,
                ),
              ],
            ),
          ),

          // ── Options list ──
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.fromLTRB(20, 4, 20, 24),
              itemCount: sorted.length,
              itemBuilder: (context, index) {
                return _TransportCard(
                  option: sorted[index],
                  index: index,
                  onSelect: () => _onSelect(context, ref, sorted[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _onSelect(
      BuildContext context, WidgetRef ref, TransportOption option) async {
    if (option.co2SavedKgVsCar > 0) {
      await ref.read(authProvider.notifier).updateProfile(
            co2SavedKgDelta: option.co2SavedKgVsCar,
          );
    }
    if (!context.mounted) return;
    showDialog(
      context: context,
      builder: (ctx) => Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        child: Padding(
          padding: const EdgeInsets.all(28),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: PulsarColors.ecoGreen.withValues(alpha: 0.1),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.check_circle_rounded,
                  color: PulsarColors.ecoGreen,
                  size: 48,
                ),
              ).animate().scale(
                  duration: 400.ms,
                  curve: Curves.elasticOut,
                  begin: const Offset(0.5, 0.5),
                  end: const Offset(1, 1)),
              const SizedBox(height: 16),
              Text(
                'Trajet réservé !',
                style: Theme.of(ctx).textTheme.headlineSmall,
              ),
              const SizedBox(height: 8),
              Text(
                '${option.mode.emoji} ${option.title}',
                style: Theme.of(ctx).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
              if (option.co2SavedKgVsCar > 0) ...[
                const SizedBox(height: 12),
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 14, vertical: 8),
                  decoration: BoxDecoration(
                    color: PulsarColors.ecoGreen.withValues(alpha: 0.12),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Text(
                    '🌍 ${option.co2SavedKgVsCar.toStringAsFixed(1)} kg CO₂ économisés',
                    style: const TextStyle(
                      color: PulsarColors.ecoGreen,
                      fontWeight: FontWeight.w700,
                      fontSize: 13,
                    ),
                  ),
                ),
              ],
              const SizedBox(height: 24),
              GradientButton(
                text: 'Super !',
                isFullWidth: true,
                onPressed: () {
                  Navigator.pop(ctx);
                  context.pop();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SortChip extends StatelessWidget {
  final String label;
  final IconData icon;
  final bool active;
  final VoidCallback onTap;

  const _SortChip({
    required this.label,
    required this.icon,
    required this.active,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        decoration: BoxDecoration(
          gradient: active ? PulsarColors.primaryGradient : null,
          color: active ? null : theme.cardTheme.color,
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
              color: active ? Colors.transparent : theme.colorScheme.outline),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon,
                size: 16,
                color: active ? Colors.white : theme.colorScheme.onSurface),
            const SizedBox(width: 6),
            Text(
              label,
              style: TextStyle(
                color: active ? Colors.white : theme.colorScheme.onSurface,
                fontWeight: FontWeight.w600,
                fontSize: 13,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _TransportCard extends StatelessWidget {
  final TransportOption option;
  final int index;
  final VoidCallback onSelect;

  const _TransportCard({
    required this.option,
    required this.index,
    required this.onSelect,
  });

  Color _ecoColor() {
    if (option.ecoScore >= 70) return PulsarColors.ecoGreen;
    if (option.ecoScore >= 40) return PulsarColors.secondary;
    return PulsarColors.error;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final ecoColor = _ecoColor();

    return Container(
      margin: const EdgeInsets.only(bottom: 14),
      decoration: BoxDecoration(
        color: isDark ? PulsarColors.cardDark : PulsarColors.cardLight,
        borderRadius: BorderRadius.circular(20),
        border: option.isRecommended
            ? Border.all(color: PulsarColors.ecoGreen, width: 2)
            : null,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: isDark ? 0.2 : 0.06),
            blurRadius: 16,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (option.isRecommended)
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
              decoration: const BoxDecoration(
                gradient: PulsarColors.ecoGradient,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(18),
                  topRight: Radius.circular(18),
                ),
              ),
              child: const Row(
                children: [
                  Icon(Icons.star_rounded, color: Colors.white, size: 14),
                  SizedBox(width: 4),
                  Text(
                    'RECOMMANDÉ PAR PULSAR',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1,
                    ),
                  ),
                ],
              ),
            ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(option.mode.emoji,
                        style: const TextStyle(fontSize: 28)),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(option.title,
                              style: theme.textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.w700,
                              )),
                          if (option.operator != null)
                            Text(
                              option.operator!,
                              style: theme.textTheme.bodySmall?.copyWith(
                                color: PulsarColors.primary,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                        ],
                      ),
                    ),
                    // Eco grade badge
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: ecoColor.withValues(alpha: 0.15),
                        shape: BoxShape.circle,
                        border: Border.all(color: ecoColor, width: 2),
                      ),
                      child: Center(
                        child: Text(
                          option.ecoGrade,
                          style: TextStyle(
                            color: ecoColor,
                            fontWeight: FontWeight.w800,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  option.description,
                  style: theme.textTheme.bodySmall,
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    _Metric(
                      icon: Icons.schedule_rounded,
                      label: option.durationLabel,
                    ),
                    const SizedBox(width: 16),
                    _Metric(
                      icon: Icons.euro_rounded,
                      label: '${option.cost.toStringAsFixed(0)}€',
                    ),
                    const SizedBox(width: 16),
                    _Metric(
                      icon: Icons.eco_rounded,
                      label: '${option.co2Kg.toStringAsFixed(1)}kg CO₂',
                      color: ecoColor,
                    ),
                  ],
                ),
                if (option.features.isNotEmpty) ...[
                  const SizedBox(height: 12),
                  Wrap(
                    spacing: 6,
                    runSpacing: 6,
                    children: option.features
                        .map((f) => Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 4),
                              decoration: BoxDecoration(
                                color: PulsarColors.primary
                                    .withValues(alpha: 0.08),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Text(
                                f,
                                style: const TextStyle(
                                  fontSize: 11,
                                  color: PulsarColors.primary,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ))
                        .toList(),
                  ),
                ],
                if (option.co2SavedKgVsCar > 0) ...[
                  const SizedBox(height: 12),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 6),
                    decoration: BoxDecoration(
                      color: PulsarColors.ecoGreen.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Text(
                      '🌍 -${option.co2SavedKgVsCar.toStringAsFixed(1)} kg CO₂ vs voiture solo',
                      style: const TextStyle(
                        color: PulsarColors.ecoGreen,
                        fontWeight: FontWeight.w700,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
                const SizedBox(height: 14),
                SizedBox(
                  width: double.infinity,
                  child: option.isRecommended
                      ? GradientButton(
                          text: 'Choisir ce trajet',
                          icon: Icons.check_rounded,
                          isFullWidth: true,
                          onPressed: onSelect,
                        )
                      : OutlinedButton.icon(
                          onPressed: onSelect,
                          icon: const Icon(Icons.check_rounded, size: 18),
                          label: const Text('Choisir'),
                        ),
                ),
              ],
            ),
          ),
        ],
      ),
    )
        .animate()
        .fadeIn(
          delay: Duration(milliseconds: 80 * index),
          duration: 400.ms,
        )
        .slideY(begin: 0.05);
  }
}

class _Metric extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color? color;

  const _Metric({required this.icon, required this.label, this.color});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final c = color ?? theme.colorScheme.onSurfaceVariant;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 14, color: c),
        const SizedBox(width: 4),
        Text(
          label,
          style: TextStyle(
            color: c,
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
