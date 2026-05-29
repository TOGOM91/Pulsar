import 'package:isar/isar.dart';
import 'package:uuid/uuid.dart';
import '../../../core/database/isar_collections.dart';

class OrderRepository {
  final Isar _isar;
  static const _uuid = Uuid();

  OrderRepository(this._isar);

  Future<IsarOrder> createPending({
    required String customerEmail,
    required double subtotal,
    required double discount,
    required double serviceFee,
    required double tax,
    required double total,
    required String currency,
    String? promoCode,
    required String paymentMethod,
    required String paymentBrand,
    String? paymentLast4,
    required int itemCount,
  }) async {
    final order = IsarOrder()
      ..orderId = 'ord-${_uuid.v4().substring(0, 8)}'
      ..customerEmail = customerEmail
      ..placedAt = DateTime.now()
      ..subtotal = subtotal
      ..discount = discount
      ..serviceFee = serviceFee
      ..tax = tax
      ..total = total
      ..currency = currency
      ..promoCode = promoCode
      ..paymentMethod = paymentMethod
      ..paymentBrand = paymentBrand
      ..paymentLast4 = paymentLast4
      ..status = 'pending'
      ..itemCount = itemCount
      ..ticketIds = const [];
    await _isar.writeTxn(() async {
      await _isar.isarOrders.put(order);
    });
    return order;
  }

  Future<IsarOrder> markPaid({
    required String orderId,
    required List<String> ticketIds,
  }) async {
    final order = await _isar.isarOrders
        .filter()
        .orderIdEqualTo(orderId)
        .findFirst();
    if (order == null) throw StateError('Order $orderId not found');
    order
      ..status = 'paid'
      ..ticketIds = ticketIds;
    await _isar.writeTxn(() async {
      await _isar.isarOrders.put(order);
    });
    return order;
  }

  Future<IsarOrder> markFailed({
    required String orderId,
    required String reason,
  }) async {
    final order = await _isar.isarOrders
        .filter()
        .orderIdEqualTo(orderId)
        .findFirst();
    if (order == null) throw StateError('Order $orderId not found');
    order
      ..status = 'failed'
      ..failureReason = reason;
    await _isar.writeTxn(() async {
      await _isar.isarOrders.put(order);
    });
    return order;
  }

  Future<List<IsarOrder>> ordersForCustomer(String email) async {
    final orders = await _isar.isarOrders
        .filter()
        .customerEmailEqualTo(email, caseSensitive: false)
        .findAll();
    orders.sort((a, b) => b.placedAt.compareTo(a.placedAt));
    return orders;
  }
}
