/// Promo code — supports fixed and percentage discounts.
class PromoCode {
  final String code;
  final String label;
  final double? percentOff;
  final double? amountOff;
  final double minSubtotal;
  final String emoji;

  const PromoCode({
    required this.code,
    required this.label,
    this.percentOff,
    this.amountOff,
    this.minSubtotal = 0,
    this.emoji = '🎁',
  });

  /// Discount applied to a subtotal (clamped to [0, subtotal]).
  double discountFor(double subtotal) {
    if (subtotal < minSubtotal) return 0;
    double d = 0;
    if (percentOff != null) d += subtotal * (percentOff! / 100);
    if (amountOff != null) d += amountOff!;
    return d.clamp(0, subtotal);
  }
}

/// Catalog of available promo codes (mock — would come from backend in prod).
class PromoCatalog {
  PromoCatalog._();

  static const codes = <PromoCode>[
    PromoCode(
      code: 'PULSAR10',
      label: '10% sur ta première commande',
      percentOff: 10,
      emoji: '✨',
    ),
    PromoCode(
      code: 'ECO20',
      label: '20% — Mode éco activé',
      percentOff: 20,
      minSubtotal: 100,
      emoji: '🌱',
    ),
    PromoCode(
      code: 'SUMMER50',
      label: '50€ sur les festivals d\'été',
      amountOff: 50,
      minSubtotal: 200,
      emoji: '☀️',
    ),
    PromoCode(
      code: 'STUDENT15',
      label: '15% étudiant',
      percentOff: 15,
      emoji: '🎓',
    ),
    PromoCode(
      code: 'BLACKFRIDAY',
      label: '-30% Black Friday',
      percentOff: 30,
      minSubtotal: 150,
      emoji: '🛍️',
    ),
  ];

  static PromoCode? findByCode(String input) {
    final normalized = input.trim().toUpperCase();
    for (final c in codes) {
      if (c.code == normalized) return c;
    }
    return null;
  }
}

/// Mock payment method.
enum PaymentBrand { visa, mastercard, amex, applepay, googlepay, paypal }

class PaymentMethod {
  final String id;
  final PaymentBrand brand;
  final String last4;
  final String holder;
  final String expiry;
  final bool isDefault;

  const PaymentMethod({
    required this.id,
    required this.brand,
    required this.last4,
    required this.holder,
    required this.expiry,
    this.isDefault = false,
  });

  String get brandLabel {
    switch (brand) {
      case PaymentBrand.visa:
        return 'Visa';
      case PaymentBrand.mastercard:
        return 'Mastercard';
      case PaymentBrand.amex:
        return 'Amex';
      case PaymentBrand.applepay:
        return 'Apple Pay';
      case PaymentBrand.googlepay:
        return 'Google Pay';
      case PaymentBrand.paypal:
        return 'PayPal';
    }
  }

  String get displayLabel {
    if (brand == PaymentBrand.applepay ||
        brand == PaymentBrand.googlepay ||
        brand == PaymentBrand.paypal) {
      return brandLabel;
    }
    return '$brandLabel •••• $last4';
  }
}

class PaymentCatalog {
  PaymentCatalog._();

  static const methods = <PaymentMethod>[
    PaymentMethod(
      id: 'pm1',
      brand: PaymentBrand.visa,
      last4: '4242',
      holder: 'Tom Farge',
      expiry: '08/28',
      isDefault: true,
    ),
    PaymentMethod(
      id: 'pm2',
      brand: PaymentBrand.mastercard,
      last4: '8801',
      holder: 'Tom Farge',
      expiry: '11/27',
    ),
    PaymentMethod(
      id: 'pm3',
      brand: PaymentBrand.applepay,
      last4: '',
      holder: '',
      expiry: '',
    ),
    PaymentMethod(
      id: 'pm4',
      brand: PaymentBrand.paypal,
      last4: '',
      holder: '',
      expiry: '',
    ),
  ];
}

/// Checkout breakdown — computed from cart + promo + fees.
class CheckoutBreakdown {
  final double subtotal;
  final double discount;
  final double serviceFee;
  final double tax;
  final double total;
  final PromoCode? appliedPromo;

  const CheckoutBreakdown({
    required this.subtotal,
    required this.discount,
    required this.serviceFee,
    required this.tax,
    required this.total,
    this.appliedPromo,
  });

  static const defaultServiceFeeRate = 0.05; // 5%
  static const defaultTaxRate = 0.20; // TVA 20%

  factory CheckoutBreakdown.from({
    required double subtotal,
    PromoCode? promo,
    double taxRate = defaultTaxRate,
    double serviceFeeRate = defaultServiceFeeRate,
  }) {
    final discount = promo?.discountFor(subtotal) ?? 0;
    final afterDiscount = subtotal - discount;
    final serviceFee = afterDiscount * serviceFeeRate;
    final tax = afterDiscount * taxRate;
    final total = afterDiscount + serviceFee + tax;
    return CheckoutBreakdown(
      subtotal: subtotal,
      discount: discount,
      serviceFee: serviceFee,
      tax: tax,
      total: total,
      appliedPromo: promo,
    );
  }
}
