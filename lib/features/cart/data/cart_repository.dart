import 'package:isar/isar.dart';
import '../../../core/database/isar_collections.dart';
import '../domain/cart_model.dart';

/// Repository for the shopping cart. Persisted in Isar for offline support.
/// Cart items are scoped per user via `ownerEmail`.
class CartRepository {
  final Isar _isar;

  CartRepository(this._isar);

  Future<String?> _currentUserEmail() async {
    final session = await _isar.isarAuthSessions
        .filter()
        .keyEqualTo('session')
        .findFirst();
    return session?.activeEmail;
  }

  Future<List<CartItem>> getCartItems() async {
    final email = await _currentUserEmail();
    if (email == null) return [];
    final results = await _isar.isarCartItems
        .filter()
        .ownerEmailEqualTo(email, caseSensitive: false)
        .findAll();
    return results.map(_toModel).toList();
  }

  Future<void> addItem(CartItem item) async {
    final email = await _currentUserEmail();
    if (email == null) return;
    final existing = await _isar.isarCartItems
        .filter()
        .ownerEmailEqualTo(email, caseSensitive: false)
        .and()
        .eventIdEqualTo(item.eventId)
        .findFirst();

    await _isar.writeTxn(() async {
      if (existing != null) {
        existing.quantity = existing.quantity + item.quantity;
        await _isar.isarCartItems.put(existing);
      } else {
        await _isar.isarCartItems.put(_toIsar(item, email));
      }
    });
  }

  Future<void> updateQuantity(String eventId, int quantity) async {
    if (quantity < 1) {
      await removeItem(eventId);
      return;
    }
    final email = await _currentUserEmail();
    if (email == null) return;
    final existing = await _isar.isarCartItems
        .filter()
        .ownerEmailEqualTo(email, caseSensitive: false)
        .and()
        .eventIdEqualTo(eventId)
        .findFirst();
    if (existing == null) return;
    existing.quantity = quantity;
    await _isar.writeTxn(() async {
      await _isar.isarCartItems.put(existing);
    });
  }

  Future<void> removeItem(String eventId) async {
    final email = await _currentUserEmail();
    if (email == null) return;
    final existing = await _isar.isarCartItems
        .filter()
        .ownerEmailEqualTo(email, caseSensitive: false)
        .and()
        .eventIdEqualTo(eventId)
        .findFirst();
    if (existing == null) return;

    await _isar.writeTxn(() async {
      await _isar.isarCartItems.delete(existing.isarId);
    });
  }

  Future<void> clearCart() async {
    final email = await _currentUserEmail();
    if (email == null) return;
    await _isar.writeTxn(() async {
      final items = await _isar.isarCartItems
          .filter()
          .ownerEmailEqualTo(email, caseSensitive: false)
          .findAll();
      for (final i in items) {
        await _isar.isarCartItems.delete(i.isarId);
      }
    });
  }

  Future<int> get itemCount async {
    final email = await _currentUserEmail();
    if (email == null) return 0;
    return _isar.isarCartItems
        .filter()
        .ownerEmailEqualTo(email, caseSensitive: false)
        .count();
  }

  // ── Mappers ──

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

  IsarCartItem _toIsar(CartItem m, String ownerEmail) => IsarCartItem()
    ..ownerEmail = ownerEmail
    ..eventId = m.eventId
    ..eventName = m.eventName
    ..eventDate = m.eventDate
    ..eventLocation = m.eventLocation
    ..eventImageUrl = m.eventImageUrl
    ..unitPrice = m.unitPrice
    ..quantity = m.quantity
    ..ticketType = m.ticketType
    ..transportOption = m.transportOption
    ..transportPrice = m.transportPrice
    ..accommodationOption = m.accommodationOption
    ..accommodationPrice = m.accommodationPrice;
}
