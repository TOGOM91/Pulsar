import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../../core/database/firestore_service.dart';
import '../../../core/database/models.dart';
import '../domain/event_model.dart';

/// Cloud Firestore-backed event catalog.
/// All reads fall back to the SDK's local cache when the network is unavailable.
class EventRepository {
  final FirestoreService _fs;

  EventRepository(this._fs);

  Future<List<EventModel>> getEventsBySection(String section) async {
    final snap = await _safeGet(
      _fs.events
          .where('section', isEqualTo: section)
          .where('isPublished', isEqualTo: true)
          .orderBy('sortOrder'),
    );
    return snap.docs.map((d) => _toModel(IsarEvent.fromFirestore(d))).toList();
  }

  Future<List<EventModel>> getAllEvents() async {
    final snap = await _safeGet(
      _fs.events.where('isPublished', isEqualTo: true),
    );
    final rows = snap.docs.map(IsarEvent.fromFirestore).toList();
    rows.sort((a, b) => a.sortOrder.compareTo(b.sortOrder));
    return rows.map(_toModel).toList();
  }

  Future<EventModel?> getEventById(String eventId) async {
    final doc = await _safeDocGet(_fs.events.doc(eventId));
    if (!doc.exists) return null;
    return _toModel(IsarEvent.fromFirestore(doc));
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

  String? _currentEmail() =>
      FirebaseAuth.instance.currentUser?.email?.toLowerCase();

  Future<List<EventModel>> getFavorites() async {
    final email = _currentEmail();
    if (email == null) return [];
    final snap = await _safeGet(_fs.favoritesFor(email));
    if (snap.docs.isEmpty) return [];
    final ids = snap.docs.map((d) => d.id).toSet();
    final all = await getAllEvents();
    return all.where((e) => ids.contains(e.id)).toList();
  }

  Future<bool?> toggleFavorite(String eventId) async {
    final email = _currentEmail();
    if (email == null) return null;
    final ref = _fs.favoritesFor(email).doc(eventId);
    final existing = await _safeDocGet(ref);
    if (existing.exists) {
      await ref.delete();
      return false;
    }
    await ref.set({'addedAt': Timestamp.fromDate(DateTime.now())});
    return true;
  }

  Future<bool> isFavorite(String eventId) async {
    final email = _currentEmail();
    if (email == null) return false;
    final doc = await _safeDocGet(_fs.favoritesFor(email).doc(eventId));
    return doc.exists;
  }

  // ── Offline helpers ──────────────────────────────────────────────────────

  /// Tries the server; on network failure falls back to the SDK's local cache.
  static Future<QuerySnapshot<Map<String, dynamic>>> _safeGet(
    Query<Map<String, dynamic>> query,
  ) async {
    try {
      return await query.get();
    } on FirebaseException catch (e) {
      if (e.code == 'unavailable') {
        return query.get(const GetOptions(source: Source.cache));
      }
      rethrow;
    }
  }

  static Future<DocumentSnapshot<Map<String, dynamic>>> _safeDocGet(
    DocumentReference<Map<String, dynamic>> ref,
  ) async {
    try {
      return await ref.get();
    } on FirebaseException catch (e) {
      if (e.code == 'unavailable') {
        return ref.get(const GetOptions(source: Source.cache));
      }
      rethrow;
    }
  }

  // ── Model mapping ────────────────────────────────────────────────────────

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
