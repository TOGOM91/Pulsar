import 'package:flutter_test/flutter_test.dart';
import 'package:flowee_app/features/cart/domain/promo_code.dart';

void main() {
  group('PromoCode.discountFor', () {
    const percent = PromoCode(code: 'P10', label: '', percentOff: 10);
    const fixed = PromoCode(code: 'F50', label: '', amountOff: 50, minSubtotal: 200);

    test('percentage discount', () {
      expect(percent.discountFor(100), 10);
    });

    test('fixed discount is ignored below minSubtotal', () {
      expect(fixed.discountFor(150), 0);
    });

    test('fixed discount applies at/above minSubtotal', () {
      expect(fixed.discountFor(200), 50);
    });

    test('discount never exceeds subtotal', () {
      const big = PromoCode(code: 'X', label: '', amountOff: 999);
      expect(big.discountFor(40), 40);
    });
  });

  group('CheckoutBreakdown.from', () {
    test('applies fees and tax on the discounted base', () {
      final b = CheckoutBreakdown.from(
        subtotal: 100,
        promo: const PromoCode(code: 'P10', label: '', percentOff: 10),
        taxRate: 0.20,
        serviceFeeRate: 0.05,
      );
      expect(b.discount, 10);
      // base 90 → service 4.5, tax 18, total 112.5
      expect(b.serviceFee, closeTo(4.5, 1e-9));
      expect(b.tax, closeTo(18.0, 1e-9));
      expect(b.total, closeTo(112.5, 1e-9));
    });

    test('honours custom (admin-configured) rates', () {
      final b = CheckoutBreakdown.from(
        subtotal: 200,
        taxRate: 0.10,
        serviceFeeRate: 0.0,
      );
      expect(b.discount, 0);
      expect(b.serviceFee, 0);
      expect(b.tax, closeTo(20.0, 1e-9));
      expect(b.total, closeTo(220.0, 1e-9));
    });

    test('no promo means no discount', () {
      final b = CheckoutBreakdown.from(subtotal: 50);
      expect(b.discount, 0);
      expect(b.appliedPromo, isNull);
    });
  });
}
