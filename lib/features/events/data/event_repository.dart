import 'package:drift/drift.dart';
import '../../../core/database/app_database.dart';
import '../domain/event_model.dart';

/// Repository for event data. Reads/writes to SQLite via Drift.
class EventRepository {
  final AppDatabase _db;

  EventRepository(this._db);

  // ── Queries ──

  Future<List<EventModel>> getEventsBySection(String section) async {
    final rows = await (_db.select(_db.isarEvents)
          ..where((e) => e.section.equals(section) & e.isPublished.equals(true))
          ..orderBy([(e) => OrderingTerm(expression: e.sortOrder)]))
        .get();
    return rows.map(_toModel).toList();
  }

  Future<List<EventModel>> getAllEvents() async {
    final rows = await (_db.select(_db.isarEvents)
          ..where((e) => e.isPublished.equals(true)))
        .get();
    return rows.map(_toModel).toList();
  }

  Future<EventModel?> getEventById(String eventId) async {
    final row = await (_db.select(_db.isarEvents)
          ..where((e) => e.eventId.equals(eventId)))
        .getSingleOrNull();
    return row != null ? _toModel(row) : null;
  }

  Future<List<EventModel>> searchEvents(String query) async {
    final lower = query.toLowerCase();
    final all = await getAllEvents();
    return all.where((e) {
      return e.name.toLowerCase().contains(lower) ||
          e.category.toLowerCase().contains(lower) ||
          e.details.location.toLowerCase().contains(lower) ||
          e.genres.any((g) => g.toLowerCase().contains(lower));
    }).toList();
  }

  Future<List<EventModel>> filterByGenre(String genre) async {
    final all = await getAllEvents();
    return all.where((e) {
      return e.genres.any((g) => g.toLowerCase() == genre.toLowerCase());
    }).toList();
  }

  Future<String?> _currentUserEmail() async {
    final row = await (_db.select(_db.isarAuthSessions)
          ..where((s) => s.key.equals('session')))
        .getSingleOrNull();
    return row?.activeEmail;
  }

  Future<List<EventModel>> getFavorites() async {
    final email = await _currentUserEmail();
    if (email == null) return [];
    final favs = await (_db.select(_db.isarFavorites)
          ..where((f) => f.userEmail.equals(email)))
        .get();
    final ids = favs.map((f) => f.eventId).toSet();
    if (ids.isEmpty) return [];
    final all = await getAllEvents();
    return all.where((e) => ids.contains(e.id)).toList();
  }

  // ── Mutations ──

  Future<bool?> toggleFavorite(String eventId) async {
    final email = await _currentUserEmail();
    if (email == null) return null;

    final existing = await (_db.select(_db.isarFavorites)
          ..where((f) => f.userEmail.equals(email) & f.eventId.equals(eventId)))
        .getSingleOrNull();

    if (existing != null) {
      await (_db.delete(_db.isarFavorites)
            ..where((f) => f.isarId.equals(existing.isarId)))
          .go();
      return false;
    }
    await _db.into(_db.isarFavorites).insert(
          IsarFavoritesCompanion.insert(
            userEmail: email,
            eventId: eventId,
            addedAt: DateTime.now(),
          ),
        );
    return true;
  }

  Future<bool> isFavorite(String eventId) async {
    final email = await _currentUserEmail();
    if (email == null) return false;
    final row = await (_db.select(_db.isarFavorites)
          ..where((f) => f.userEmail.equals(email) & f.eventId.equals(eventId)))
        .getSingleOrNull();
    return row != null;
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
