import 'dart:math';
import '../../../core/database/isar_collections.dart';

/// Result of a payment attempt.
class PaymentResult {
  final bool success;
  final String? transactionId;
  final String? failureReason;
  const PaymentResult.success(this.transactionId)
      : success = true,
        failureReason = null;
  const PaymentResult.failure(this.failureReason)
      : success = false,
        transactionId = null;
}

/// Lightweight payment processor.
///
/// In simulation mode, it returns success after a short artificial delay,
/// with a tiny random failure chance (for testing the failure UI path).
/// When app settings carry a real Stripe publishable key AND simulation
/// is disabled, this is where you'd plug a Stripe Payment Sheet flow
/// (`flutter_stripe`) — left as a TODO so the user-facing checkout already
/// has all the wiring it needs.
class PaymentService {
  final IsarAppSettings _settings;
  final Random _rng = Random();

  PaymentService(this._settings);

  Future<PaymentResult> charge({
    required double amountEur,
    required String customerEmail,
    required String paymentMethodId,
  }) async {
    if (_settings.maintenanceMode) {
      return PaymentResult.failure(
        _settings.maintenanceMessage.isEmpty
            ? 'Service en maintenance, réessaie plus tard.'
            : _settings.maintenanceMessage,
      );
    }

    if (_settings.paymentSimulation) {
      // 800ms simulated processing
      await Future.delayed(const Duration(milliseconds: 800));
      // 2% random failure rate to exercise the error UI
      if (_rng.nextInt(50) == 0) {
        return const PaymentResult.failure(
          'Paiement refusé par la banque (carte refusée).',
        );
      }
      final txId = 'sim_${DateTime.now().millisecondsSinceEpoch}';
      return PaymentResult.success(txId);
    }

    // Real Stripe call goes here.
    // 1. Server-side : POST /create-payment-intent { amount, currency }
    //    using the Stripe secret key. Returns clientSecret.
    // 2. Client : Stripe.instance.confirmPayment(paymentIntentClientSecret).
    // 3. Mark order as paid when Stripe webhook confirms.
    //
    // Stub : refuse cleanly when no live key configured.
    if (_settings.stripePublishableKey == null ||
        _settings.stripePublishableKey!.isEmpty) {
      return const PaymentResult.failure(
        'Stripe live non configuré. Réactive le mode simulation ou ajoute ta clé.',
      );
    }
    return const PaymentResult.failure(
      'TODO: brancher flutter_stripe (clé live détectée).',
    );
  }
}
