import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/widgets/micro_interactions.dart';
import '../../../events/domain/event_model.dart';
import '../../../events/presentation/providers/event_providers.dart';
import '../../data/event_locations.dart';

class MapScreen extends ConsumerStatefulWidget {
  const MapScreen({super.key});

  @override
  ConsumerState<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends ConsumerState<MapScreen> {
  final MapController _mapCtrl = MapController();
  EventModel? _selectedEvent;

  @override
  void dispose() {
    _mapCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final eventsAsync = ref.watch(allEventsProvider);
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Scaffold(
      body: eventsAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('Erreur: $e')),
        data: (events) {
          final geoEvents = events
              .where((e) => EventLocations.forEvent(e.id) != null)
              .toList();

          return Stack(
            children: [
              FlutterMap(
                mapController: _mapCtrl,
                options: const MapOptions(
                  initialCenter: EventLocations.center,
                  initialZoom: 5.5,
                  minZoom: 4,
                  maxZoom: 16,
                ),
                children: [
                  TileLayer(
                    urlTemplate:
                        'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                    userAgentPackageName: 'app.pulsar.flowee_app',
                    maxNativeZoom: 19,
                  ),
                  MarkerLayer(
                    markers: geoEvents.map((event) {
                      final coords = EventLocations.forEvent(event.id)!;
                      final isSelected = _selectedEvent?.id == event.id;
                      return Marker(
                        point: coords,
                        width: 56,
                        height: 56,
                        alignment: Alignment.bottomCenter,
                        child: _EventMarker(
                          event: event,
                          isSelected: isSelected,
                          onTap: () {
                            setState(() => _selectedEvent = event);
                            _mapCtrl.move(coords, 11);
                          },
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),

              // ── Top bar ──
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
                    child: Row(
                      children: [
                        BounceTap(
                          onTap: () => context.pop(),
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: isDark
                                  ? PulsarColors.cardDark
                                  : Colors.white,
                              shape: BoxShape.circle,
                              boxShadow: PulsarColors.shadowMd(isDark),
                            ),
                            child: const Icon(Icons.arrow_back_rounded,
                                size: 20),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 12),
                            decoration: BoxDecoration(
                              color: isDark
                                  ? PulsarColors.cardDark
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(
                                  PulsarTokens.radiusFull),
                              boxShadow: PulsarColors.shadowMd(isDark),
                            ),
                            child: Row(
                              children: [
                                const Text('📍',
                                    style: TextStyle(fontSize: 16)),
                                const SizedBox(width: 8),
                                Text(
                                  '${geoEvents.length} événements',
                                  style: PulsarTheme.display(18,
                                      color: theme.colorScheme.onSurface),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // ── Selected event card ──
              if (_selectedEvent != null)
                Positioned(
                  left: 16,
                  right: 16,
                  bottom: 24,
                  child: _SelectedEventCard(
                    event: _selectedEvent!,
                    onClose: () => setState(() => _selectedEvent = null),
                  ),
                ),

              // ── Recenter FAB ──
              Positioned(
                right: 16,
                bottom: _selectedEvent != null ? 220 : 24,
                child: BounceTap(
                  onTap: () {
                    _mapCtrl.move(EventLocations.center, 5.5);
                    setState(() => _selectedEvent = null);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      gradient: PulsarColors.heroGradient,
                      shape: BoxShape.circle,
                      boxShadow: PulsarColors.glowPrimary(),
                    ),
                    child: const Icon(Icons.my_location_rounded,
                        color: Colors.white, size: 22),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class _EventMarker extends StatelessWidget {
  final EventModel event;
  final bool isSelected;
  final VoidCallback onTap;

  const _EventMarker({
    required this.event,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: TweenAnimationBuilder<double>(
        tween: Tween(begin: 0, end: 1),
        duration: const Duration(milliseconds: 400),
        curve: Curves.elasticOut,
        builder: (_, v, child) => Transform.scale(scale: v, child: child),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                  horizontal: 10, vertical: 6),
              decoration: BoxDecoration(
                gradient: isSelected
                    ? PulsarColors.heroGradient
                    : const LinearGradient(
                        colors: [
                          PulsarColors.primary,
                          PulsarColors.primaryLight,
                        ],
                      ),
                borderRadius:
                    BorderRadius.circular(PulsarTokens.radiusFull),
                boxShadow: PulsarColors.glowPrimary(
                    alpha: isSelected ? 0.5 : 0.3),
                border: Border.all(color: Colors.white, width: 2),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(_emoji(event.category),
                      style: const TextStyle(fontSize: 12)),
                  const SizedBox(width: 4),
                  Text(
                    '${event.pricing.amount.toStringAsFixed(0)}€',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
            ),
            CustomPaint(
              size: const Size(10, 8),
              painter: _PinPainter(
                color: isSelected
                    ? PulsarColors.accent
                    : PulsarColors.primary,
              ),
            ),
          ],
        ),
      ),
    );
  }

  static String _emoji(String category) {
    switch (category.toLowerCase()) {
      case 'festival':
        return '🎵';
      case 'concert':
        return '🎤';
      case 'sport':
        return '⚽';
      case 'salon':
        return '🎮';
      case 'opéra':
      case 'opera':
        return '🎭';
      case 'exposition':
        return '🖼️';
      default:
        return '📍';
    }
  }
}

class _PinPainter extends CustomPainter {
  final Color color;
  _PinPainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = color;
    final path = ui.Path()
      ..moveTo(0, 0)
      ..lineTo(size.width / 2, size.height)
      ..lineTo(size.width, 0)
      ..close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(_) => false;
}

class _SelectedEventCard extends StatelessWidget {
  final EventModel event;
  final VoidCallback onClose;

  const _SelectedEventCard({required this.event, required this.onClose});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Container(
      decoration: BoxDecoration(
        color: isDark ? PulsarColors.cardDark : Colors.white,
        borderRadius: BorderRadius.circular(PulsarTokens.radiusXl),
        boxShadow: PulsarColors.shadowLg(isDark),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: BounceTap(
        onTap: () => context.push('/event/${event.id}'),
        child: Row(
          children: [
            SizedBox(
              width: 110,
              height: 130,
              child: CachedNetworkImage(
                imageUrl: event.imageUrl,
                fit: BoxFit.cover,
                placeholder: (_, __) => Container(
                    color: PulsarColors.primary.withValues(alpha: 0.1)),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            event.name,
                            style: theme.textTheme.titleMedium,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        BounceTap(
                          onTap: onClose,
                          child: Icon(Icons.close_rounded,
                              size: 18,
                              color: theme.colorScheme.onSurfaceVariant),
                        ),
                      ],
                    ),
                    const SizedBox(height: 2),
                    Text(event.details.location,
                        style: theme.textTheme.bodySmall,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis),
                    const SizedBox(height: 2),
                    Text(event.details.date,
                        style: theme.textTheme.bodySmall),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '${event.pricing.amount.toStringAsFixed(0)}€',
                          style: theme.textTheme.titleLarge?.copyWith(
                            color: PulsarColors.primary,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(
                            gradient: PulsarColors.heroGradient,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Voir',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 11),
                              ),
                              SizedBox(width: 2),
                              Icon(Icons.chevron_right_rounded,
                                  color: Colors.white, size: 14),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ).animate().slideY(begin: 0.3, duration: 280.ms, curve: Curves.easeOutCubic).fadeIn();
  }
}
