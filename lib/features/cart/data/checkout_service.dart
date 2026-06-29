import 'package:cloud_functions/cloud_functions.dart';
import 'package:flutter/foundation.dart';

import '../../../core/database/firestore_service.dart';
import '../../../core/database/models.dart';

/// Result of starting a checkout: the Stripe-hosted payment URL + our orderId.
class CheckoutSession {
  final String orderId;
  final String url;
  const CheckoutSession({required this.orderId, required this.url});
}

/// Talks to the `createCheckoutSession` Cloud Function. The server recomputes
/// the amount from canonical data — the client never sends a price.
class CheckoutService {
  final FirebaseFunctions _functions;
  final FirestoreService _fs;

  CheckoutService(this._fs, {FirebaseFunctions? functions})
      : _functions =
            functions ?? FirebaseFunctions.instanceFor(region: 'europe-west1');

  /// Web success/cancel URLs need an absolute origin to come back to the app.
  static String get _origin =>
      kIsWeb ? Uri.base.origin : 'https://pulsar-7d45e.web.app';

  Future<CheckoutSession> startCheckout({String? promoCode}) async {
    final res = await _functions.httpsCallable('createCheckoutSession').call({
      'promoCode': promoCode,
      'origin': _origin,
    });
    final data = Map<String, dynamic>.from(res.data as Map);
    return CheckoutSession(
      orderId: data['orderId'] as String,
      url: data['url'] as String,
    );
  }

  /// Real-time view of an order — used to await the webhook flipping it to `paid`.
  Stream<IsarOrder?> watchOrder(String orderId) {
    return _fs.orders.doc(orderId).snapshots().map(
          (doc) => doc.exists ? IsarOrder.fromFirestore(doc) : null,
        );
  }
}
