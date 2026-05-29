import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/widgets/gradient_button.dart';
import '../../data/accommodation_service.dart';
import '../../domain/accommodation_models.dart';

final accommodationServiceProvider = Provider((_) => AccommodationService());

final accommodationsProvider = Provider.family<List<Accommodation>,
    ({String eventId, String eventLocation})>((ref, p) {
  return ref.watch(accommodationServiceProvider).getOptionsForEvent(
        eventId: p.eventId,
        eventLocation: p.eventLocation,
      );
});

/// Filter: all / classic / collaborative
final accommodationFilterProvider = StateProvider<String>((_) => 'all');

class AccommodationScreen extends ConsumerWidget {
  final String eventId;
  final String eventName;
  final String eventLocation;

  const AccommodationScreen({
    super.key,
    required this.eventId,
    required this.eventName,
    required this.eventLocation,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final all = ref.watch(accommodationsProvider(
      (eventId: eventId, eventLocation: eventLocation),
    ));
    final filter = ref.watch(accommodationFilterProvider);

    final filtered = filter == 'all'
        ? all
        : filter == 'collab'
            ? all.where((a) => a.type.isCollaborative).toList()
            : all.where((a) => !a.type.isCollaborative).toList();

    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Hébergement',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
            Text(eventName,
                style: theme.textTheme.bodySmall,
                maxLines: 1,
                overflow: TextOverflow.ellipsis),
          ],
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: () => context.pop(),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 12, 20, 8),
            child: Row(
              children: [
                _FilterChip(
                  label: 'Tout',
                  active: filter == 'all',
                  onTap: () => ref
                      .read(accommodationFilterProvider.notifier)
                      .state = 'all',
                ),
                const SizedBox(width: 8),
                _FilterChip(
                  label: '🏨 Classique',
                  active: filter == 'classic',
                  onTap: () => ref
                      .read(accommodationFilterProvider.notifier)
                      .state = 'classic',
                ),
                const SizedBox(width: 8),
                _FilterChip(
                  label: "👨‍👩‍👧 Chez l'hab.",
                  active: filter == 'collab',
                  onTap: () => ref
                      .read(accommodationFilterProvider.notifier)
                      .state = 'collab',
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.fromLTRB(20, 4, 20, 24),
              itemCount: filtered.length,
              itemBuilder: (context, index) {
                return _AccommodationCard(
                  accommodation: filtered[index],
                  index: index,
                  onBook: () => _onBook(context, filtered[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void _onBook(BuildContext context, Accommodation a) {
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
                  color: PulsarColors.primary.withValues(alpha: 0.1),
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.hotel_rounded,
                    color: PulsarColors.primary, size: 48),
              ),
              const SizedBox(height: 16),
              Text('Réservation confirmée !',
                  style: Theme.of(ctx).textTheme.headlineSmall),
              const SizedBox(height: 8),
              Text(
                '${a.type.emoji} ${a.name}',
                style: Theme.of(ctx).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              Text(
                '${a.pricePerNight.toStringAsFixed(0)}€/nuit',
                style: Theme.of(ctx).textTheme.titleMedium?.copyWith(
                      color: PulsarColors.primary,
                      fontWeight: FontWeight.w700,
                    ),
              ),
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

class _FilterChip extends StatelessWidget {
  final String label;
  final bool active;
  final VoidCallback onTap;

  const _FilterChip({
    required this.label,
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
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
        decoration: BoxDecoration(
          gradient: active ? PulsarColors.primaryGradient : null,
          color: active ? null : theme.cardTheme.color,
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
              color: active ? Colors.transparent : theme.colorScheme.outline),
        ),
        child: Text(
          label,
          style: TextStyle(
            color: active ? Colors.white : theme.colorScheme.onSurface,
            fontWeight: FontWeight.w600,
            fontSize: 13,
          ),
        ),
      ),
    );
  }
}

class _AccommodationCard extends StatelessWidget {
  final Accommodation accommodation;
  final int index;
  final VoidCallback onBook;

  const _AccommodationCard({
    required this.accommodation,
    required this.index,
    required this.onBook,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final a = accommodation;

    return Container(
      margin: const EdgeInsets.only(bottom: 14),
      decoration: BoxDecoration(
        color: isDark ? PulsarColors.cardDark : PulsarColors.cardLight,
        borderRadius: BorderRadius.circular(20),
        border: a.isRecommended
            ? Border.all(color: PulsarColors.primary, width: 2)
            : null,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: isDark ? 0.2 : 0.06),
            blurRadius: 14,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              SizedBox(
                height: 160,
                width: double.infinity,
                child: CachedNetworkImage(
                  imageUrl: a.imageUrl,
                  fit: BoxFit.cover,
                  errorWidget: (_, __, ___) => Container(
                    color: PulsarColors.primary.withValues(alpha: 0.1),
                    child: Center(
                      child: Text(a.type.emoji,
                          style: const TextStyle(fontSize: 48)),
                    ),
                  ),
                ),
              ),
              if (a.isRecommended)
                Positioned(
                  top: 10,
                  left: 10,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      gradient: PulsarColors.primaryGradient,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Text(
                      '⭐ RECOMMANDÉ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 0.8,
                      ),
                    ),
                  ),
                ),
              Positioned(
                top: 10,
                right: 10,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.black.withValues(alpha: 0.6),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(a.type.emoji,
                          style: const TextStyle(fontSize: 12)),
                      const SizedBox(width: 4),
                      Text(
                        a.type.label,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(a.name,
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w700,
                    )),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Icon(Icons.location_on_outlined,
                        size: 14, color: PulsarColors.textSecondaryLight),
                    const SizedBox(width: 4),
                    Text('${a.location} • ${a.distanceLabel}',
                        style: theme.textTheme.bodySmall),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Icon(Icons.star_rounded,
                        size: 16, color: PulsarColors.secondary),
                    const SizedBox(width: 4),
                    Text(
                      '${a.rating.toStringAsFixed(1)} (${a.reviewCount})',
                      style: theme.textTheme.bodySmall?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Text(
                      'Hôte: ${a.hostName}',
                      style: theme.textTheme.bodySmall,
                    ),
                    if (a.hostVerified) ...[
                      const SizedBox(width: 4),
                      const Icon(Icons.verified_rounded,
                          size: 14, color: PulsarColors.primary),
                    ],
                  ],
                ),
                if (a.amenities.isNotEmpty) ...[
                  const SizedBox(height: 10),
                  Wrap(
                    spacing: 6,
                    runSpacing: 4,
                    children: a.amenities.take(4).map((amenity) {
                      return Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 3),
                        decoration: BoxDecoration(
                          color: theme.colorScheme.primary
                              .withValues(alpha: 0.08),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Text(
                          amenity,
                          style: TextStyle(
                            fontSize: 10,
                            color: theme.colorScheme.primary,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ],
                const SizedBox(height: 14),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(
                        style: theme.textTheme.titleLarge?.copyWith(
                          color: PulsarColors.primary,
                          fontWeight: FontWeight.w800,
                        ),
                        children: [
                          TextSpan(
                              text: '${a.pricePerNight.toStringAsFixed(0)}€'),
                          TextSpan(
                            text: ' / nuit',
                            style: theme.textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 130,
                      child: a.isRecommended
                          ? GradientButton(
                              text: 'Réserver',
                              isFullWidth: true,
                              onPressed: onBook,
                              height: 40,
                            )
                          : OutlinedButton(
                              onPressed: onBook,
                              child: const Text('Réserver'),
                            ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    )
        .animate()
        .fadeIn(
            delay: Duration(milliseconds: 80 * index), duration: 400.ms)
        .slideY(begin: 0.05);
  }
}
