import 'package:isar/isar.dart';
import '../../../core/database/isar_collections.dart';
import '../domain/event_model.dart';

/// Repository for event data. Reads/writes to Isar (offline-first).
class EventRepository {
  final Isar _isar;

  EventRepository(this._isar);

  // ── Queries ──

  /// Get all events for a section ("trending" / "upcoming").
  Future<List<EventModel>> getEventsBySection(String section) async {
    final results = await _isar.isarEvents
        .filter()
        .sectionEqualTo(section)
        .sortBySortOrder()
        .findAll();
    return results.map(_toModel).toList();
  }

  /// Get all events.
  Future<List<EventModel>> getAllEvents() async {
    final results = await _isar.isarEvents.where().findAll();
    return results.map(_toModel).toList();
  }

  /// Get single event by ID.
  Future<EventModel?> getEventById(String eventId) async {
    final result = await _isar.isarEvents
        .filter()
        .eventIdEqualTo(eventId)
        .findFirst();
    return result != null ? _toModel(result) : null;
  }

  /// Search events by name or genre.
  Future<List<EventModel>> searchEvents(String query) async {
    final lower = query.toLowerCase();
    final all = await _isar.isarEvents.where().findAll();
    final filtered = all.where((e) {
      return e.name.toLowerCase().contains(lower) ||
          e.category.toLowerCase().contains(lower) ||
          e.location.toLowerCase().contains(lower) ||
          e.genres.any((g) => g.toLowerCase().contains(lower));
    }).toList();
    return filtered.map(_toModel).toList();
  }

  /// Filter events by genre.
  Future<List<EventModel>> filterByGenre(String genre) async {
    final all = await _isar.isarEvents.where().findAll();
    final filtered = all.where((e) {
      return e.genres.any(
        (g) => g.toLowerCase() == genre.toLowerCase(),
      );
    }).toList();
    return filtered.map(_toModel).toList();
  }

  /// Current logged-in user email, or null if none.
  Future<String?> _currentUserEmail() async {
    final session = await _isar.isarAuthSessions
        .filter()
        .keyEqualTo('session')
        .findFirst();
    return session?.activeEmail;
  }

  /// Get favorite events for the current user.
  Future<List<EventModel>> getFavorites() async {
    final email = await _currentUserEmail();
    if (email == null) return [];
    final favs = await _isar.isarFavorites
        .filter()
        .userEmailEqualTo(email)
        .findAll();
    final ids = favs.map((f) => f.eventId).toSet();
    if (ids.isEmpty) return [];
    final all = await _isar.isarEvents.where().findAll();
    return all.where((e) => ids.contains(e.eventId)).map(_toModel).toList();
  }

  // ── Mutations ──

  /// Toggle favorite status for an event for the current user.
  /// Returns true if now favorited, false if removed, null if no user.
  Future<bool?> toggleFavorite(String eventId) async {
    final email = await _currentUserEmail();
    if (email == null) return null;

    final existing = await _isar.isarFavorites
        .filter()
        .userEmailEqualTo(email)
        .and()
        .eventIdEqualTo(eventId)
        .findFirst();

    await _isar.writeTxn(() async {
      if (existing != null) {
        await _isar.isarFavorites.delete(existing.isarId);
      } else {
        final fav = IsarFavorite()
          ..userEmail = email
          ..eventId = eventId
          ..addedAt = DateTime.now();
        await _isar.isarFavorites.put(fav);
      }
    });

    return existing == null;
  }

  /// Check if an event is favorited by the current user.
  Future<bool> isFavorite(String eventId) async {
    final email = await _currentUserEmail();
    if (email == null) return false;
    final existing = await _isar.isarFavorites
        .filter()
        .userEmailEqualTo(email)
        .and()
        .eventIdEqualTo(eventId)
        .findFirst();
    return existing != null;
  }

  // ── Mappers ──

  EventModel _toModel(IsarEvent e) {
    final badges = <EventBadge>[];
    for (var i = 0; i < e.badgeTypes.length && i < e.badgeTexts.length; i++) {
      badges.add(EventBadge(type: e.badgeTypes[i], text: e.badgeTexts[i]));
    }

    return EventModel(
      id: e.eventId,
      name: e.name,
      category: e.category,
      duration: e.duration,
      imageUrl: e.imageUrl,
      gradient: e.gradient,
      badges: badges,
      details: EventDetails(
        date: e.date,
        location: e.location,
        transport: e.transport,
        accommodation: e.accommodation,
      ),
      pricing: EventPricing(
        label: e.pricingLabel,
        amount: e.pricingAmount,
        savings: e.pricingSavings,
        savingsText: e.pricingSavingsText,
        currency: e.currency,
      ),
      genres: e.genres,
      isFavorite: e.isFavorite,
      delayAnimation: e.sortOrder,
    );
  }
}
