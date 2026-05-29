import 'package:drift/drift.dart';
import '../../../core/database/app_database.dart';
import '../domain/cart_model.dart';

/// Shopping cart repository. Cart items are scoped per user via `ownerEmail`.
class CartRepository {
  final AppDatabase _db;

  CartRepository(this._db);

  Future<String?> _currentUserEmail() async {
    final row = await (_db.select(_db.isarAuthSessions)
          ..where((s) => s.key.equals('session')))
        .getSingleOrNull();
    return row?.activeEmail;
  }

  Future<List<CartItem>> getCartItems() async {
    final email = await _currentUserEmail();
    if (email == null) return [];
    final rows = await (_db.select(_db.isarCartItems)
          ..where((c) => c.ownerEmail.equals(email)))
        .get();
    return rows.map(_toModel).toList();
  }

  Future<void> addItem(CartItem item) async {
    final email = await _currentUserEmail();
    if (email == null) return;

    final existing = await (_db.select(_db.isarCartItems)
          ..where(
              (c) => c.ownerEmail.equals(email) & c.eventId.equals(item.eventId)))
        .getSingleOrNull();

    if (existing != null) {
      await (_db.update(_db.isarCartItems)
            ..where((c) => c.isarId.equals(existing.isarId)))
          .write(IsarCartItemsCompanion(
        quantity: Value(existing.quantity + item.quantity),
      ));
    } else {
      await _db.into(_db.isarCartItems).insert(
            IsarCartItemsCompanion.insert(
              ownerEmail: email,
              eventId: item.eventId,
              eventName: item.eventName,
              eventDate: item.eventDate,
              eventLocation: item.eventLocation,
              eventImageUrl: Value(item.eventImageUrl),
              unitPrice: item.unitPrice,
              quantity: item.quantity,
              ticketType: item.ticketType,
              transportOption: Value(item.transportOption),
              transportPrice: Value(item.transportPrice),
              accommodationOption: Value(item.accommodationOption),
              accommodationPrice: Value(item.accommodationPrice),
            ),
          );
    }
  }

  Future<void> updateQuantity(String eventId, int quantity) async {
    if (quantity < 1) {
      await removeItem(eventId);
      return;
    }
    final email = await _currentUserEmail();
    if (email == null) return;
    await (_db.update(_db.isarCartItems)
          ..where(
              (c) => c.ownerEmail.equals(email) & c.eventId.equals(eventId)))
        .write(IsarCartItemsCompanion(quantity: Value(quantity)));
  }

  Future<void> removeItem(String eventId) async {
    final email = await _currentUserEmail();
    if (email == null) return;
    await (_db.delete(_db.isarCartItems)
          ..where(
              (c) => c.ownerEmail.equals(email) & c.eventId.equals(eventId)))
        .go();
  }

  Future<void> clearCart() async {
    final email = await _currentUserEmail();
    if (email == null) return;
    await (_db.delete(_db.isarCartItems)
          ..where((c) => c.ownerEmail.equals(email)))
        .go();
  }

  Future<int> get itemCount async {
    final email = await _currentUserEmail();
    if (email == null) return 0;
    final rows = await (_db.select(_db.isarCartItems)
          ..where((c) => c.ownerEmail.equals(email)))
        .get();
    return rows.length;
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
