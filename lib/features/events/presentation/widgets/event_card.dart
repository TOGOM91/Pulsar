import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/providers/core_providers.dart';
import '../../../../core/widgets/micro_interactions.dart';
import '../../domain/event_model.dart';
import '../providers/event_providers.dart';

/// Premium event card — big hero image, floating badges, heart toggle, CTA.
class EventCard extends ConsumerStatefulWidget {
  final EventModel event;
  final VoidCallback? onAddToCart;
  final int animationDelay;

  const EventCard({
    super.key,
    required this.event,
    this.onAddToCart,
    this.animationDelay = 0,
  });

  @override
  ConsumerState<EventCard> createState() => _EventCardState();
}

class _EventCardState extends ConsumerState<EventCard> {
  bool _pressed = false;

  @override
  Widget build(BuildContext context) {
    final event = widget.event;
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final isFav = ref.watch(isFavoriteProvider(event.id)).valueOrNull ?? false;

    return GestureDetector(
      onTapDown: (_) => setState(() => _pressed = true),
      onTapUp: (_) => setState(() => _pressed = false),
      onTapCancel: () => setState(() => _pressed = false),
      onTap: () => context.push('/event/${event.id}'),
      child: AnimatedScale(
        scale: _pressed ? 0.97 : 1.0,
        duration: const Duration(milliseconds: 150),
        child: Container(
          width: 300,
          margin: const EdgeInsets.only(right: 16),
          decoration: BoxDecoration(
            color: isDark ? PulsarColors.cardDark : PulsarColors.cardLight,
            borderRadius: BorderRadius.circular(PulsarTokens.radiusXl),
            boxShadow: PulsarColors.shadowLg(isDark),
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ── Hero image with overlay ──
              SizedBox(
                height: 200,
                width: double.infinity,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    CachedNetworkImage(
                      imageUrl: event.imageUrl,
                      fit: BoxFit.cover,
                      placeholder: (_, __) => Container(
                        color: PulsarColors.primary.withValues(alpha: 0.1),
                      ),
                      errorWidget: (_, __, ___) => Container(
                        color: PulsarColors.primary.withValues(alpha: 0.1),
                        child: const Icon(Icons.music_note, size: 48),
                      ),
                    ),
                    // Gradient overlay (top + bottom)
                    Positioned.fill(
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.black.withValues(alpha: 0.4),
                              Colors.transparent,
                              Colors.transparent,
                              Colors.black.withValues(alpha: 0.55),
                            ],
                            stops: const [0, 0.3, 0.6, 1],
                          ),
                        ),
                      ),
                    ),
                    // Badges (top left)
                    Positioned(
                      top: 12,
                      left: 12,
                      child: Wrap(
                        spacing: 6,
                        children: event.badges
                            .take(2)
                            .map((b) => _BadgeChip(badge: b))
                            .toList(),
                      ),
                    ),
                    // Favorite button (top right) — animated heart with burst
                    Positioned(
                      top: 6,
                      right: 6,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black.withValues(alpha: 0.35),
                          shape: BoxShape.circle,
                        ),
                        padding: const EdgeInsets.all(2),
                        child: AnimatedHeartButton(
                          isFavorite: isFav,
                          size: 20,
                          onTap: () async {
                            final repo = ref.read(eventRepositoryProvider);
                            await repo.toggleFavorite(event.id);
                            ref.invalidate(isFavoriteProvider(event.id));
                            ref.invalidate(favoriteEventsProvider);
                          },
                        ),
                      ),
                    ),
                    // Category + date (bottom on image)
                    Positioned(
                      bottom: 12,
                      left: 16,
                      right: 16,
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 3),
                            decoration: BoxDecoration(
                              color: Colors.white.withValues(alpha: 0.25),
                              borderRadius: BorderRadius.circular(
                                  PulsarTokens.radiusFull),
                            ),
                            child: Text(
                              event.category.toUpperCase(),
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 9,
                                fontWeight: FontWeight.w800,
                                letterSpacing: 1,
                              ),
                            ),
                          ),
                          const Spacer(),
                          const Icon(Icons.access_time_rounded,
                              size: 11, color: Colors.white70),
                          const SizedBox(width: 3),
                          Text(
                            event.duration,
                            style: const TextStyle(
                              color: Colors.white70,
                              fontSize: 11,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // ── Body ──
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      event.name,
                      style: theme.textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.w800,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 10),
                    _DetailRow(
                      icon: Icons.calendar_today_rounded,
                      text: event.details.date,
                    ),
                    const SizedBox(height: 4),
                    _DetailRow(
                      icon: Icons.location_on_rounded,
                      text: event.details.location,
                    ),
                    const SizedBox(height: 14),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  event.pricing.amount.toStringAsFixed(0),
                                  style: PulsarTheme.display(
                                    32,
                                    color: theme.colorScheme.onSurface,
                                  ),
                                ),
                                Text(
                                  event.pricing.currency,
                                  style: PulsarTheme.display(
                                    20,
                                    color: theme.colorScheme.onSurface,
                                  ).copyWith(height: 1.4),
                                ),
                              ],
                            ),
                            if (event.pricing.savings != null)
                              Text(
                                '💰 -${event.pricing.savings!.toStringAsFixed(0)}€',
                                style: theme.textTheme.bodySmall?.copyWith(
                                  color: PulsarColors.ecoGreen,
                                  fontWeight: FontWeight.w700,
                                ),
                              )
                            else if (event.pricing.savingsText != null)
                              Text(
                                event.pricing.savingsText!,
                                style: theme.textTheme.bodySmall?.copyWith(
                                  color: PulsarColors.ecoGreen,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                          ],
                        ),
                        if (widget.onAddToCart != null)
                          _AddButton(onTap: widget.onAddToCart!),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    )
        .animate()
        .fadeIn(
          delay: Duration(milliseconds: 100 * widget.animationDelay),
          duration: 500.ms,
        )
        .slideX(
          begin: 0.08,
          delay: Duration(milliseconds: 100 * widget.animationDelay),
          duration: 500.ms,
          curve: Curves.easeOutCubic,
        );
  }
}

class _AddButton extends StatelessWidget {
  final VoidCallback onTap;
  const _AddButton({required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
        decoration: BoxDecoration(
          gradient: PulsarColors.heroGradient,
          borderRadius: BorderRadius.circular(PulsarTokens.radiusMd),
          boxShadow: [
            BoxShadow(
              color: PulsarColors.primary.withValues(alpha: 0.35),
              blurRadius: 14,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.add_rounded, color: Colors.white, size: 16),
            SizedBox(width: 4),
            Text(
              'Ajouter',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w800,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _BadgeChip extends StatelessWidget {
  final EventBadge badge;

  const _BadgeChip({required this.badge});

  Color get _bgColor {
    switch (badge.type) {
      case 'eco':
        return PulsarColors.ecoGreen;
      case 'hot':
        return PulsarColors.warning;
      case 'new':
        return PulsarColors.accent;
      default:
        return PulsarColors.info;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: _bgColor.withValues(alpha: 0.95),
        borderRadius: BorderRadius.circular(PulsarTokens.radiusFull),
        boxShadow: [
          BoxShadow(
            color: _bgColor.withValues(alpha: 0.4),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Text(
        badge.text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 10,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }
}

class _DetailRow extends StatelessWidget {
  final IconData icon;
  final String text;

  const _DetailRow({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      children: [
        Icon(icon, size: 13, color: theme.colorScheme.onSurfaceVariant),
        const SizedBox(width: 6),
        Expanded(
          child: Text(
            text,
            style: theme.textTheme.bodySmall?.copyWith(fontSize: 12),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
