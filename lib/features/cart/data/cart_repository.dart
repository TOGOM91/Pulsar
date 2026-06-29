import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../../core/database/firestore_service.dart';
import '../../../core/database/models.dart';
import '../domain/cart_model.dart';

/// Shopping cart in Firestore. Items live in `users/{email}/cart/{eventId}`
/// so each user's cart syncs across their devices.
class CartRepository {
  final FirestoreService _fs;

  CartRepository(this._fs);

  String? _email() => FirebaseAuth.instance.currentUser?.email?.toLowerCase();

  Future<List<CartItem>> getCartItems() async {
    final email = _email();
    if (email == null) return [];
    final snap = await _safeGet(_fs.cartFor(email));
    return snap.docs
        .map((d) => _toModel(IsarCartItem.fromFirestore(d, email)))
        .toList();
  }

  Future<void> addItem(CartItem item) async {
    final email = _email();
    if (email == null) return;
    final ref = _fs.cartFor(email).doc(item.eventId);
    final existing = await ref.get();
    if (existing.exists) {
      final current = IsarCartItem.fromFirestore(existing, email);
      await ref.set(IsarCartItem(
        ownerEmail: email,
        eventId: current.eventId,
        eventName: current.eventName,
        eventDate: current.eventDate,
        eventLocation: current.eventLocation,
        eventImageUrl: current.eventImageUrl,
        unitPrice: current.unitPrice,
        quantity: current.quantity + item.quantity,
        ticketType: current.ticketType,
        transportOption: current.transportOption,
        transportPrice: current.transportPrice,
        accommodationOption: current.accommodationOption,
        accommodationPrice: current.accommodationPrice,
      ).toFirestore());
    } else {
      await ref.set(IsarCartItem(
        ownerEmail: email,
        eventId: item.eventId,
        eventName: item.eventName,
        eventDate: item.eventDate,
        eventLocation: item.eventLocation,
        eventImageUrl: item.eventImageUrl,
        unitPrice: item.unitPrice,
        quantity: item.quantity,
        ticketType: item.ticketType,
        transportOption: item.transportOption,
        transportPrice: item.transportPrice,
        accommodationOption: item.accommodationOption,
        accommodationPrice: item.accommodationPrice,
      ).toFirestore());
    }
  }

  Future<void> updateQuantity(String eventId, int quantity) async {
    if (quantity < 1) {
      await removeItem(eventId);
      return;
    }
    final email = _email();
    if (email == null) return;
    await _fs.cartFor(email).doc(eventId).update({'quantity': quantity});
  }

  Future<void> removeItem(String eventId) async {
    final email = _email();
    if (email == null) return;
    await _fs.cartFor(email).doc(eventId).delete();
  }

  Future<void> clearCart() async {
    final email = _email();
    if (email == null) return;
    final snap = await _fs.cartFor(email).get();
    final batch = _fs.db.batch();
    for (final d in snap.docs) {
      batch.delete(d.reference);
    }
    await batch.commit();
  }

  Future<int> get itemCount async {
    final email = _email();
    if (email == null) return 0;
    try {
      final snap = await _fs.cartFor(email).count().get();
      return snap.count ?? 0;
    } on FirebaseException {
      // count() doesn't support cache; fall back to full read.
      final snap = await _safeGet(_fs.cartFor(email));
      return snap.size;
    }
  }

  // ── Offline helper ───────────────────────────────────────────────────────

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

  CartItem _toModel(IsarCartItem e) => CartItem(
        eventId: e.eventId,
        eventName: e.eventName,
        eventDate: e.eventDate,
        eventLocation: e.eventLocation,
        eventImageUrl: e.eventImageUrl,
        unitPrice: e.unitPrice,
        quantity: e.quantity,
        ticketType: e.ticketType,
        transportOption: e.transportOption,
        transportPrice: e.transportPrice,
        accommodationOption: e.accommodationOption,
        accommodationPrice: e.accommodationPrice,
      );
}
