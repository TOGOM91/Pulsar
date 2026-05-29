import 'package:drift/drift.dart';
import 'package:uuid/uuid.dart';
import '../../../core/database/app_database.dart';

class OrderRepository {
  final AppDatabase _db;
  static const _uuid = Uuid();

  OrderRepository(this._db);

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
    await _db.into(_db.isarOrders).insert(IsarOrdersCompanion.insert(
          orderId: orderId,
          customerEmail: customerEmail,
          placedAt: DateTime.now(),
          subtotal: subtotal,
          discount: discount,
          serviceFee: serviceFee,
          tax: tax,
          total: total,
          currency: currency,
          promoCode: Value(promoCode),
          paymentMethod: paymentMethod,
          paymentBrand: paymentBrand,
          paymentLast4: Value(paymentLast4),
          status: 'pending',
          itemCount: itemCount,
        ));
    final row = await (_db.select(_db.isarOrders)
          ..where((o) => o.orderId.equals(orderId)))
        .getSingle();
    return row;
  }

  Future<IsarOrder> markPaid({
    required String orderId,
    required List<String> ticketIds,
  }) async {
    await (_db.update(_db.isarOrders)
          ..where((o) => o.orderId.equals(orderId)))
        .write(IsarOrdersCompanion(
      status: const Value('paid'),
      ticketIds: Value(ticketIds),
    ));
    return (_db.select(_db.isarOrders)..where((o) => o.orderId.equals(orderId)))
        .getSingle();
  }

  Future<IsarOrder> markFailed({
    required String orderId,
    required String reason,
  }) async {
    await (_db.update(_db.isarOrders)
          ..where((o) => o.orderId.equals(orderId)))
        .write(IsarOrdersCompanion(
      status: const Value('failed'),
      failureReason: Value(reason),
    ));
    return (_db.select(_db.isarOrders)..where((o) => o.orderId.equals(orderId)))
        .getSingle();
  }

  Future<List<IsarOrder>> ordersForCustomer(String email) async {
    return (_db.select(_db.isarOrders)
          ..where((o) => o.customerEmail.equals(email))
          ..orderBy([(o) => OrderingTerm.desc(o.placedAt)]))
        .get();
  }
}
