import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/providers/core_providers.dart';
import '../../../events/presentation/providers/event_providers.dart';
import '../../../events/domain/event_model.dart';

/// Favorites screen — shows all favorited events.
class FavoritesScreen extends ConsumerWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final favoritesAsync = ref.watch(favoriteEventsProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Mes favoris', style: theme.textTheme.displaySmall),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: () => context.pop(),
        ),
      ),
      body: favoritesAsync.when(
        data: (events) {
          if (events.isEmpty) return const _EmptyFavorites();
          return ListView.builder(
            padding: const EdgeInsets.fromLTRB(20, 12, 20, 24),
            itemCount: events.length,
            itemBuilder: (context, index) {
              return _FavoriteCard(
                event: events[index],
                index: index,
                onUnfavorite: () async {
                  final repo = ref.read(eventRepositoryProvider);
                  await repo.toggleFavorite(events[index].id);
                  ref.invalidate(favoriteEventsProvider);
                },
              );
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('Erreur: $e')),
      ),
    );
  }
}

class _EmptyFavorites extends StatelessWidget {
  const _EmptyFavorites();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: PulsarColors.accent.withValues(alpha: 0.08),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.favorite_outline_rounded,
              size: 56,
              color: PulsarColors.accent.withValues(alpha: 0.5),
            ),
          ),
          const SizedBox(height: 20),
          Text('Aucun favori', style: theme.textTheme.headlineSmall),
          const SizedBox(height: 8),
          Text(
            'Tape sur le ♥ d\'un événement\npour le sauvegarder ici',
            style: theme.textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ).animate().fadeIn(duration: 500.ms);
  }
}

class _FavoriteCard extends StatelessWidget {
  final EventModel event;
  final int index;
  final VoidCallback onUnfavorite;

  const _FavoriteCard({
    required this.event,
    required this.index,
    required this.onUnfavorite,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return GestureDetector(
      onTap: () => context.push('/event/${event.id}'),
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        decoration: BoxDecoration(
          color: isDark ? PulsarColors.cardDark : PulsarColors.cardLight,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: isDark ? 0.2 : 0.06),
              blurRadius: 14,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Row(
          children: [
            SizedBox(
              width: 100,
              height: 100,
              child: CachedNetworkImage(
                imageUrl: event.imageUrl,
                fit: BoxFit.cover,
                errorWidget: (_, __, ___) => Container(
                  color: PulsarColors.primary.withValues(alpha: 0.1),
                  child: const Icon(Icons.music_note),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      event.name,
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4),
                    Text(event.details.date, style: theme.textTheme.bodySmall),
                    Text(event.details.location,
                        style: theme.textTheme.bodySmall, maxLines: 1),
                    const SizedBox(height: 6),
                    Text(
                      '${event.pricing.amount.toStringAsFixed(0)}${event.pricing.currency}',
                      style: theme.textTheme.titleMedium?.copyWith(
                        color: PulsarColors.primary,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            IconButton(
              onPressed: onUnfavorite,
              icon: const Icon(Icons.favorite_rounded,
                  color: PulsarColors.error),
            ),
            const SizedBox(width: 4),
          ],
        ),
      ),
    )
        .animate()
        .fadeIn(delay: Duration(milliseconds: 60 * index), duration: 400.ms)
        .slideX(begin: 0.05);
  }
}
