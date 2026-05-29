import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/widgets/gradient_button.dart';
import '../../../../core/widgets/micro_interactions.dart';
import '../../../../core/providers/core_providers.dart';
import '../providers/event_providers.dart';
import '../../../cart/domain/cart_model.dart';
import '../../../cart/presentation/providers/cart_providers.dart';

/// Event detail screen — hero image, transport, accommodation, booking CTA.
class EventDetailScreen extends ConsumerWidget {
  final String eventId;

  const EventDetailScreen({super.key, required this.eventId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final eventAsync = ref.watch(eventDetailProvider(eventId));
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Scaffold(
      body: eventAsync.when(
        data: (event) {
          if (event == null) {
            return const Center(child: Text('Événement non trouvé'));
          }

          return CustomScrollView(
            slivers: [
              // ── Hero image ──
              SliverAppBar(
                expandedHeight: 360,
                pinned: true,
                backgroundColor: theme.scaffoldBackgroundColor,
                elevation: 0,
                leading: Padding(
                  padding: const EdgeInsets.all(8),
                  child: CircleAvatar(
                    backgroundColor: Colors.black45,
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back, color: Colors.white),
                      onPressed: () => context.pop(),
                    ),
                  ),
                ),
                actions: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Consumer(builder: (context, ref, _) {
                      final isFav =
                          ref.watch(isFavoriteProvider(event.id)).valueOrNull ??
                              false;
                      return CircleAvatar(
                        backgroundColor: Colors.black45,
                        child: AnimatedHeartButton(
                          isFavorite: isFav,
                          size: 22,
                          onTap: () async {
                            final repo = ref.read(eventRepositoryProvider);
                            await repo.toggleFavorite(event.id);
                            ref.invalidate(isFavoriteProvider(event.id));
                            ref.invalidate(favoriteEventsProvider);
                          },
                        ),
                      );
                    }),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: CircleAvatar(
                      backgroundColor: Colors.black45,
                      child: IconButton(
                        icon:
                            const Icon(Icons.share_rounded, color: Colors.white),
                        onPressed: () {
                          // TODO: Share event
                        },
                      ),
                    ),
                  ),
                ],
                flexibleSpace: FlexibleSpaceBar(
                  background: Stack(
                    fit: StackFit.expand,
                    children: [
                      CachedNetworkImage(
                        imageUrl: event.imageUrl,
                        fit: BoxFit.cover,
                      ),
                      // Gradient overlay
                      const DecoratedBox(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent,
                              Colors.black54,
                            ],
                          ),
                        ),
                      ),
                      // Title overlay
                      Positioned(
                        bottom: 16,
                        left: 20,
                        right: 20,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Badges
                            Wrap(
                              spacing: 6,
                              children: event.badges.map((b) {
                                return Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 4,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.white24,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Text(
                                    b.text,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 11,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              event.name.toUpperCase(),
                              style: PulsarTheme.display(
                                42,
                                color: Colors.white,
                                letterSpacing: -1,
                              ).copyWith(height: 0.95),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 4),
                            Text(
                              '${event.details.date} • ${event.details.location}',
                              style: const TextStyle(
                                color: Colors.white70,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // ── Content ──
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Quick info cards
                      Row(
                        children: [
                          _InfoChip(
                            icon: Icons.category_rounded,
                            label: event.category,
                          ),
                          const SizedBox(width: 8),
                          _InfoChip(
                            icon: Icons.schedule_rounded,
                            label: event.duration,
                          ),
                          const SizedBox(width: 8),
                          const _InfoChip(
                            icon: Icons.eco_rounded,
                            label: 'Bas carbone',
                            color: PulsarColors.ecoGreen,
                          ),
                        ],
                      )
                          .animate()
                          .fadeIn(duration: 400.ms)
                          .slideY(begin: 0.05),

                      const SizedBox(height: 28),

                      // Transport section
                      const _SectionTitle(
                        icon: Icons.directions_bus_rounded,
                        title: 'Transport',
                      ).animate().fadeIn(delay: 100.ms),
                      const SizedBox(height: 12),
                      GestureDetector(
                        onTap: () => context.push(
                          '/transport/${event.id}',
                          extra: {
                            'eventName': event.name,
                            'eventLocation': event.details.location,
                          },
                        ),
                        child: _OptionCard(
                          icon: '🚌',
                          title: event.details.transport,
                          subtitle: 'Comparer 4+ options bas carbone',
                          trailing: const Row(
                            children: [
                              _EcoBadge(),
                              SizedBox(width: 6),
                              Icon(Icons.chevron_right_rounded),
                            ],
                          ),
                        ),
                      ).animate().fadeIn(delay: 200.ms).slideX(begin: 0.05),

                      const SizedBox(height: 24),
                      const _SectionTitle(
                        icon: Icons.hotel_rounded,
                        title: 'Hébergement',
                      ).animate().fadeIn(delay: 300.ms),
                      const SizedBox(height: 12),
                      GestureDetector(
                        onTap: () => context.push(
                          '/accommodation/${event.id}',
                          extra: {
                            'eventName': event.name,
                            'eventLocation': event.details.location,
                          },
                        ),
                        child: _OptionCard(
                          icon: '🏨',
                          title: event.details.accommodation ??
                              'Voir les hébergements',
                          subtitle:
                              'Hôtels, B&B, chez l\'habitant • Profils vérifiés',
                          trailing: const Icon(Icons.chevron_right_rounded),
                        ),
                      ).animate().fadeIn(delay: 400.ms).slideX(begin: 0.05),

                      const SizedBox(height: 24),

                      // CO2 impact card
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              PulsarColors.ecoGreen.withValues(alpha: 0.1),
                              PulsarColors.ecoTeal.withValues(alpha: 0.05),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            color: PulsarColors.ecoGreen.withValues(alpha: 0.2),
                          ),
                        ),
                        child: Row(
                          children: [
                            const Text('🌍', style: TextStyle(fontSize: 32)),
                            const SizedBox(width: 16),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Impact carbone réduit',
                                    style:
                                        theme.textTheme.titleMedium?.copyWith(
                                      color: PulsarColors.ecoGreen,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    'En choisissant cette option, tu économises environ 15kg de CO₂ par rapport à la voiture.',
                                    style: theme.textTheme.bodySmall,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ).animate().fadeIn(delay: 500.ms),

                      const SizedBox(height: 32),

                      // Pricing summary
                      Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: isDark
                              ? PulsarColors.cardDark
                              : PulsarColors.cardLight,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black
                                  .withValues(alpha: isDark ? 0.2 : 0.06),
                              blurRadius: 20,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Total',
                                    style: theme.textTheme.headlineSmall),
                                Text(
                                  '${event.pricing.amount.toStringAsFixed(0)}${event.pricing.currency}',
                                  style:
                                      theme.textTheme.displaySmall?.copyWith(
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ],
                            ),
                            if (event.pricing.savings != null) ...[
                              const SizedBox(height: 8),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 6,
                                ),
                                decoration: BoxDecoration(
                                  color:
                                      PulsarColors.ecoGreen.withValues(alpha: 0.1),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Text(
                                  '💰 Économie ${event.pricing.savings!.toStringAsFixed(0)}€',
                                  style: const TextStyle(
                                    color: PulsarColors.ecoGreen,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 13,
                                  ),
                                ),
                              ),
                            ],
                            const SizedBox(height: 20),
                            GradientButton(
                              text: 'Ajouter au panier',
                              icon: Icons.shopping_bag_rounded,
                              isFullWidth: true,
                              onPressed: () {
                                ref
                                    .read(cartNotifierProvider.notifier)
                                    .addItem(
                                      CartItem(
                                        eventId: event.id,
                                        eventName: event.name,
                                        eventDate: event.details.date,
                                        eventLocation: event.details.location,
                                        eventImageUrl: event.imageUrl,
                                        unitPrice: event.pricing.amount,
                                      ),
                                    );
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                        '${event.name} ajouté au panier !'),
                                    behavior: SnackBarBehavior.floating,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                );
                                context.pop();
                              },
                            ),
                          ],
                        ),
                      ).animate().fadeIn(delay: 600.ms).slideY(begin: 0.05),

                      const SizedBox(height: 40),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('Erreur: $e')),
      ),
    );
  }
}

class _SectionTitle extends StatelessWidget {
  final IconData icon;
  final String title;

  const _SectionTitle({required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      children: [
        Icon(icon, size: 20, color: theme.colorScheme.primary),
        const SizedBox(width: 8),
        Text(title, style: theme.textTheme.headlineSmall),
      ],
    );
  }
}

class _OptionCard extends StatelessWidget {
  final String icon;
  final String title;
  final String subtitle;
  final Widget? trailing;

  const _OptionCard({
    required this.icon,
    required this.title,
    required this.subtitle,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isDark ? PulsarColors.cardDark : PulsarColors.cardLight,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: theme.colorScheme.outline.withValues(alpha: 0.3),
        ),
      ),
      child: Row(
        children: [
          Text(icon, style: const TextStyle(fontSize: 24)),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: theme.textTheme.titleMedium),
                const SizedBox(height: 2),
                Text(subtitle, style: theme.textTheme.bodySmall),
              ],
            ),
          ),
          if (trailing != null) trailing!,
        ],
      ),
    );
  }
}

class _InfoChip extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color? color;

  const _InfoChip({required this.icon, required this.label, this.color});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final c = color ?? theme.colorScheme.primary;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: c.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
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
      ),
    );
  }
}

class _EcoBadge extends StatelessWidget {
  const _EcoBadge();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        gradient: PulsarColors.ecoGradient,
        borderRadius: BorderRadius.circular(50),
      ),
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.eco, size: 12, color: Colors.white),
          SizedBox(width: 4),
          Text(
            'Éco',
            style: TextStyle(
              color: Colors.white,
              fontSize: 11,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
