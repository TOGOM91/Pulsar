import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/widgets/skeleton.dart';
import '../../../../core/widgets/pulsar_logo.dart';
import '../../../../core/widgets/micro_interactions.dart';
import '../../../events/presentation/providers/event_providers.dart';
import '../../../events/presentation/widgets/event_card.dart';
import '../../../events/presentation/widgets/genre_filter_chips.dart';
import '../../../events/domain/event_model.dart';
import '../../../cart/domain/cart_model.dart';
import '../../../cart/presentation/providers/cart_providers.dart';
import '../../../tickets/presentation/providers/ticket_providers.dart';
import '../../../auth/presentation/providers/auth_provider.dart';
import '../../../notifications/presentation/providers/notifications_provider.dart';

/// Home screen — dramatic Pulsar-branded UI.
class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);

    return Scaffold(
      body: RefreshIndicator(
        color: PulsarColors.primary,
        onRefresh: () async {
          ref.invalidate(trendingEventsProvider);
          ref.invalidate(upcomingEventsProvider);
          await Future.delayed(const Duration(milliseconds: 600));
        },
        child: CustomScrollView(
          slivers: [
            // ── Sticky header ──
            SliverAppBar(
              floating: true,
              snap: true,
              expandedHeight: 64,
              elevation: 0,
              scrolledUnderElevation: 0,
              backgroundColor: theme.scaffoldBackgroundColor,
              titleSpacing: 20,
              title: const _PulsarTopBar(),
              actions: const [
                _NotifButton(),
                SizedBox(width: 8),
                _CartButton(),
                SizedBox(width: 16),
              ],
            ),

            // ── Hero ──
            const SliverToBoxAdapter(child: _HeroSection()),

            // ── Next event widget ──
            const SliverToBoxAdapter(child: _NextEventWidget()),

            // ── Personalized insight ──
            const SliverToBoxAdapter(child: _PersonalizedInsight()),

            // ── Search ──
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 28, 20, 14),
                child: TextField(
                  onChanged: (v) =>
                      ref.read(searchQueryProvider.notifier).state = v,
                  decoration: InputDecoration(
                    hintText: 'Recherche ton événement...',
                    prefixIcon: const Icon(Icons.search_rounded, size: 22),
                    suffixIcon: Container(
                      margin: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        gradient: PulsarColors.heroGradient,
                        borderRadius:
                            BorderRadius.circular(PulsarTokens.radiusSm),
                      ),
                      child: const Icon(
                        Icons.tune_rounded,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // ── Genre chips ──
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(bottom: 8),
                child: GenreFilterChips(),
              ),
            ),

            // ── Trending ──
            SliverToBoxAdapter(
              child: _EventSection(
                emoji: '🔥',
                title: 'EN TENDANCE',
                subtitle: 'Les events qui font le buzz',
                onLinkTap: () => context.go('/explore'),
                eventsProvider: trendingEventsProvider,
              ),
            ),

            // ── Upcoming ──
            SliverToBoxAdapter(
              child: _EventSection(
                emoji: '📅',
                title: 'PROCHAINEMENT',
                subtitle: 'À venir cette saison',
                onLinkTap: () => context.go('/explore'),
                eventsProvider: upcomingEventsProvider,
              ),
            ),

            const SliverPadding(padding: EdgeInsets.only(bottom: 120)),
          ],
        ),
      ),
    );
  }
}

// ── Top bar: logo + Live badge ──
class _PulsarTopBar extends StatelessWidget {
  const _PulsarTopBar();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const PulsarLogo(fontSize: 20),
        const SizedBox(width: 10),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
          decoration: BoxDecoration(
            color: PulsarColors.ecoGreen.withValues(alpha: 0.12),
            borderRadius: BorderRadius.circular(PulsarTokens.radiusFull),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 6,
                height: 6,
                decoration: const BoxDecoration(
                  color: PulsarColors.ecoGreen,
                  shape: BoxShape.circle,
                ),
              )
                  .animate(onPlay: (c) => c.repeat(reverse: true))
                  .fade(begin: 0.3, end: 1, duration: 800.ms),
              const SizedBox(width: 5),
              const Text(
                'LIVE',
                style: TextStyle(
                  color: PulsarColors.ecoGreen,
                  fontSize: 10,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 1,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// ── Cart button with badge ──
class _CartButton extends ConsumerWidget {
  const _CartButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartState = ref.watch(cartNotifierProvider);
    final count = cartState.when(
      data: (items) => items.length,
      loading: () => 0,
      error: (_, __) => 0,
    );

    return BounceTap(
      onTap: () => context.push('/cart'),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).cardTheme.color,
              shape: BoxShape.circle,
            ),
            padding: const EdgeInsets.all(10),
            child: const Icon(Icons.shopping_bag_outlined, size: 22),
          ),
          if (count > 0)
            Positioned(
              right: -2,
              top: -2,
              child: Container(
                padding: const EdgeInsets.all(4),
                constraints: const BoxConstraints(minWidth: 18, minHeight: 18),
                decoration: BoxDecoration(
                  gradient: PulsarColors.heroGradient,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    width: 2,
                  ),
                ),
                child: Text(
                  '$count',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.w800,
                  ),
                  textAlign: TextAlign.center,
                ),
              )
                  .animate(key: ValueKey('badge-$count'))
                  .scale(
                    begin: const Offset(0.4, 0.4),
                    end: const Offset(1, 1),
                    duration: 300.ms,
                    curve: Curves.elasticOut,
                  ),
            ),
        ],
      ),
    );
  }
}

// ── Notification button with unread badge ──
class _NotifButton extends ConsumerWidget {
  const _NotifButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final unread = ref.watch(unreadCountProvider);

    return BounceTap(
      onTap: () => context.push('/notifications'),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).cardTheme.color,
              shape: BoxShape.circle,
            ),
            padding: const EdgeInsets.all(10),
            child: const Icon(Icons.notifications_outlined, size: 22),
          ),
          if (unread > 0)
            Positioned(
              right: -2,
              top: -2,
              child: Container(
                padding: const EdgeInsets.all(4),
                constraints: const BoxConstraints(minWidth: 18, minHeight: 18),
                decoration: BoxDecoration(
                  color: PulsarColors.error,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    width: 2,
                  ),
                ),
                child: Text(
                  '$unread',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.w800,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
        ],
      ),
    );
  }
}

// ── Hero section — big Bebas Neue + gradient orbs ──
class _HeroSection extends ConsumerWidget {
  const _HeroSection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final auth = ref.watch(authProvider).valueOrNull;
    final userName = auth is AuthAuthenticated ? auth.profile.name : '';

    return Container(
      margin: const EdgeInsets.fromLTRB(16, 8, 16, 0),
      height: 260,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(PulsarTokens.radiusXl),
        color: isDark ? PulsarColors.surfaceDark : PulsarColors.cardLight,
        border: Border.all(
          color: theme.colorScheme.outline.withValues(alpha: 0.5),
        ),
      ),
      child: Stack(
        children: [
          // ── Gradient orbs background ──
          Positioned(
            top: -60,
            right: -40,
            child: Container(
              width: 200,
              height: 200,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [Color(0x6600D9CC), Color(0x0000D9CC)],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: -70,
            left: -40,
            child: Container(
              width: 220,
              height: 220,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [Color(0x44D96AE8), Color(0x00D96AE8)],
                ),
              ),
            ),
          ),

          // ── Content ──
          Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Greeting badge
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: PulsarColors.accent.withValues(alpha: 0.15),
                    borderRadius:
                        BorderRadius.circular(PulsarTokens.radiusFull),
                    border: Border.all(
                      color: PulsarColors.accent.withValues(alpha: 0.3),
                    ),
                  ),
                  child: Text(
                    userName.isEmpty
                        ? '⚡ 12 nouveaux événements'
                        : '👋 Salut $userName !',
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: PulsarColors.accent,
                    ),
                  ),
                ).animate().fadeIn(duration: 400.ms).slideX(begin: -0.1),

                // Bebas Neue title
                Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: RichText(
                    text: TextSpan(
                      style: PulsarTheme.display(
                        46,
                        color: theme.colorScheme.onSurface,
                        letterSpacing: -1,
                      ).copyWith(height: 0.95),
                      children: [
                        const TextSpan(text: "L'ÉVÉNEMENT\nDE TES "),
                        TextSpan(
                          text: 'RÊVES',
                          style: PulsarTheme.display(
                            46,
                            letterSpacing: -1,
                          ).copyWith(
                            height: 0.95,
                            foreground: Paint()
                              ..shader =
                                  PulsarColors.heroGradient.createShader(
                                const Rect.fromLTWH(0, 0, 200, 60),
                              ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ).animate().fadeIn(delay: 200.ms, duration: 500.ms),

                // Stats row
                const Row(
                  children: [
                    _HeroStat(emoji: '💸', value: '-42%', label: 'Prix'),
                    SizedBox(width: 12),
                    _HeroStat(emoji: '🌍', value: '-73%', label: 'CO₂'),
                    SizedBox(width: 12),
                    _HeroStat(emoji: '⚡', value: '90s', label: 'Réservation'),
                  ],
                ).animate().fadeIn(delay: 500.ms, duration: 500.ms),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _HeroStat extends StatelessWidget {
  final String emoji;
  final String value;
  final String label;

  const _HeroStat({
    required this.emoji,
    required this.value,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
        decoration: BoxDecoration(
          color: isDark
              ? Colors.white.withValues(alpha: 0.06)
              : Colors.white.withValues(alpha: 0.6),
          borderRadius: BorderRadius.circular(PulsarTokens.radiusMd),
          border: Border.all(
            color: theme.colorScheme.outline.withValues(alpha: 0.4),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(emoji, style: const TextStyle(fontSize: 16)),
            const SizedBox(width: 6),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  value,
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w800,
                    height: 1.1,
                  ),
                ),
                Text(label,
                    style: theme.textTheme.bodySmall?.copyWith(fontSize: 10)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// ── Personalized insight ──
class _PersonalizedInsight extends ConsumerWidget {
  const _PersonalizedInsight();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Container(
      margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: isDark
              ? [
                  PulsarColors.secondary.withValues(alpha: 0.15),
                  PulsarColors.surfaceDark,
                ]
              : [
                  PulsarColors.secondary.withValues(alpha: 0.1),
                  PulsarColors.cardLight,
                ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(PulsarTokens.radiusLg),
        border: Border.all(
          color: PulsarColors.secondary.withValues(alpha: 0.25),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 36,
                height: 36,
                decoration: BoxDecoration(
                  color: PulsarColors.secondary.withValues(alpha: 0.18),
                  borderRadius:
                      BorderRadius.circular(PulsarTokens.radiusSm),
                ),
                child: const Center(
                  child: Text('🎯', style: TextStyle(fontSize: 18)),
                ),
              ),
              const SizedBox(width: 12),
              Text(
                'Spécialement pour toi',
                style: theme.textTheme.titleLarge,
              ),
            ],
          ),
          const SizedBox(height: 14),
          RichText(
            text: TextSpan(
              style: theme.textTheme.bodyMedium,
              children: const [
                TextSpan(text: "D'après ton profil, "),
                TextSpan(
                  text: '18 événements',
                  style: TextStyle(fontWeight: FontWeight.w800),
                ),
                TextSpan(text: ' correspondent à tes goûts.'),
              ],
            ),
          ),
          const SizedBox(height: 14),
          const Row(
            children: [
              Expanded(
                  child: _InsightMetric(
                      value: '720€', label: 'Économies possibles')),
              SizedBox(width: 12),
              Expanded(
                  child: _InsightMetric(value: '-540kg', label: 'CO₂ évitables')),
            ],
          ),
        ],
      ),
    ).animate().fadeIn(delay: 300.ms, duration: 500.ms).slideY(begin: 0.05);
  }
}

class _InsightMetric extends StatelessWidget {
  final String value;
  final String label;

  const _InsightMetric({required this.value, required this.label});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          value,
          style: PulsarTheme.display(34,
              color: PulsarColors.secondaryDark),
        ),
        Text(label, style: theme.textTheme.bodySmall),
      ],
    );
  }
}

// ── Event section (horizontal scroll) ──
class _EventSection extends ConsumerWidget {
  final String emoji;
  final String title;
  final String subtitle;
  final VoidCallback onLinkTap;
  final FutureProvider<List<EventModel>> eventsProvider;

  const _EventSection({
    required this.emoji,
    required this.title,
    required this.subtitle,
    required this.onLinkTap,
    required this.eventsProvider,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final eventsAsync = ref.watch(eventsProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 28, 20, 14),
          child: Row(
            children: [
              Text(emoji, style: const TextStyle(fontSize: 20)),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title,
                        style: PulsarTheme.display(28,
                            color: theme.colorScheme.onSurface)),
                    Text(subtitle, style: theme.textTheme.bodySmall),
                  ],
                ),
              ),
              GestureDetector(
                onTap: onLinkTap,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: PulsarColors.primary.withValues(alpha: 0.1),
                    borderRadius:
                        BorderRadius.circular(PulsarTokens.radiusFull),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Voir tout',
                        style: TextStyle(
                          color: PulsarColors.primary,
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(width: 2),
                      Icon(Icons.chevron_right_rounded,
                          size: 16, color: PulsarColors.primary),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 400,
          child: eventsAsync.when(
            data: (events) {
              if (events.isEmpty) {
                return const Center(child: Text('Aucun événement'));
              }
              return ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 20),
                itemCount: events.length,
                itemBuilder: (context, index) {
                  final event = events[index];
                  return EventCard(
                    event: event,
                    animationDelay: index,
                    onAddToCart: () {
                      ref.read(cartNotifierProvider.notifier).addItem(
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
                          content: Text('${event.name} ajouté au panier !'),
                          action: SnackBarAction(
                            label: 'Voir',
                            textColor: PulsarColors.primaryLight,
                            onPressed: () => context.push('/cart'),
                          ),
                        ),
                      );
                    },
                  );
                },
              );
            },
            loading: () => ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 20),
              itemCount: 3,
              itemBuilder: (_, __) => const EventCardSkeleton(),
            ),
            error: (e, _) => Center(child: Text('Erreur: $e')),
          ),
        ),
      ],
    );
  }
}

// ── Next event widget — gradient hero card showing upcoming ticket ──
class _NextEventWidget extends ConsumerWidget {
  const _NextEventWidget();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ticketsAsync = ref.watch(ticketNotifierProvider);

    return ticketsAsync.when(
      data: (tickets) {
        if (tickets.isEmpty) return const SizedBox.shrink();
        final next = tickets.first;
        return Container(
          margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            gradient: PulsarColors.heroGradient,
            borderRadius: BorderRadius.circular(PulsarTokens.radiusXl),
            boxShadow: [
              BoxShadow(
                color: PulsarColors.primary.withValues(alpha: 0.35),
                blurRadius: 24,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.25),
                  borderRadius:
                      BorderRadius.circular(PulsarTokens.radiusFull),
                ),
                child: const Text(
                  '🎫  PROCHAIN ÉVÉNEMENT',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 1.5,
                  ),
                ),
              ),
              const SizedBox(height: 14),
              Text(
                next.eventName.toUpperCase(),
                style: PulsarTheme.display(32, color: Colors.white)
                    .copyWith(letterSpacing: -0.5, height: 1),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  const Icon(Icons.calendar_today_rounded,
                      size: 13, color: Colors.white70),
                  const SizedBox(width: 4),
                  Text(next.eventDate,
                      style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 13,
                          fontWeight: FontWeight.w600)),
                  const SizedBox(width: 14),
                  const Icon(Icons.location_on_rounded,
                      size: 13, color: Colors.white70),
                  const SizedBox(width: 4),
                  Expanded(
                    child: Text(
                      next.eventLocation,
                      style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 13,
                          fontWeight: FontWeight.w600),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () => context.go('/tickets'),
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.circular(PulsarTokens.radiusMd),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.qr_code_2_rounded,
                                size: 18, color: PulsarColors.primary),
                            SizedBox(width: 6),
                            Text(
                              'Mon QR code',
                              style: TextStyle(
                                color: PulsarColors.primary,
                                fontWeight: FontWeight.w800,
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: GestureDetector(
                      onTap: () => context.push(
                        '/transport/${next.eventId}',
                        extra: {
                          'eventName': next.eventName,
                          'eventLocation': next.eventLocation,
                        },
                      ),
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                          color: Colors.white.withValues(alpha: 0.2),
                          borderRadius:
                              BorderRadius.circular(PulsarTokens.radiusMd),
                          border: Border.all(
                              color: Colors.white.withValues(alpha: 0.4)),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.directions_bus_rounded,
                                size: 18, color: Colors.white),
                            SizedBox(width: 6),
                            Text(
                              'Trajet',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
            .animate()
            .fadeIn(delay: 100.ms, duration: 500.ms)
            .slideY(begin: 0.05);
      },
      loading: () => const SizedBox.shrink(),
      error: (_, __) => const SizedBox.shrink(),
    );
  }
}
