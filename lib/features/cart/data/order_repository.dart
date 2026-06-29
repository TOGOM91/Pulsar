import 'package:uuid/uuid.dart';
import '../../../core/database/firestore_service.dart';
import '../../../core/database/models.dart';

class OrderRepository {
  final FirestoreService _fs;
  static const _uuid = Uuid();

  OrderRepository(this._fs);

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
    final orderId = 'ord-${_uuid.v4().substring(0, 8)}';
    final order = IsarOrder(
      orderId: orderId,
      customerEmail: customerEmail,
      placedAt: DateTime.now(),
      subtotal: subtotal,
      discount: discount,
      serviceFee: serviceFee,
      tax: tax,
      total: total,
      currency: currency,
      promoCode: promoCode,
      paymentMethod: paymentMethod,
      paymentBrand: paymentBrand,
      paymentLast4: paymentLast4,
      status: 'pending',
      itemCount: itemCount,
    );
    await _fs.orders.doc(orderId).set(order.toFirestore());
    return order;
  }

  Future<IsarOrder> markPaid({
    required String orderId,
    required List<String> ticketIds,
  }) async {
    await _fs.orders.doc(orderId).update({
      'status': 'paid',
      'ticketIds': ticketIds,
    });
    return _readOrThrow(orderId);
  }

  Future<IsarOrder> markFailed({
    required String orderId,
    required String reason,
  }) async {
    await _fs.orders.doc(orderId).update({
      'status': 'failed',
      'failureReason': reason,
    });
    return _readOrThrow(orderId);
  }

  Future<List<IsarOrder>> ordersForCustomer(String email) async {
    final snap = await _fs.orders
        .where('customerEmail', isEqualTo: email)
        .orderBy('placedAt', descending: true)
        .get();
    return snap.docs.map(IsarOrder.fromFirestore).toList();
  }

  Future<IsarOrder> _readOrThrow(String orderId) async {
    final doc = await _fs.orders.doc(orderId).get();
    if (!doc.exists) throw StateError('Order $orderId not found');
    return IsarOrder.fromFirestore(doc);
  }
}
