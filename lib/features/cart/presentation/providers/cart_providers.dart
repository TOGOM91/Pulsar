import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/database/isar_collections.dart';
import '../../../../core/providers/core_providers.dart';
import '../../../admin/presentation/providers/admin_provider.dart';
import '../../../auth/presentation/providers/auth_provider.dart';
import '../../data/payment_service.dart';
import '../../domain/cart_model.dart';
import '../../domain/promo_code.dart';

/// Cart items list (scoped per user).
final cartItemsProvider = FutureProvider<List<CartItem>>((ref) async {
  ref.watch(authProvider); // re-eval when user changes
  final repo = ref.watch(cartRepositoryProvider);
  return repo.getCartItems();
});

final cartCountProvider = FutureProvider<int>((ref) async {
  final repo = ref.watch(cartRepositoryProvider);
  return repo.itemCount;
});

final cartTotalProvider = FutureProvider<double>((ref) async {
  final items = await ref.watch(cartItemsProvider.future);
  return items.fold<double>(0.0, (sum, item) => sum + item.totalPrice);
});

class CartNotifier extends StateNotifier<AsyncValue<List<CartItem>>> {
  final Ref _ref;

  CartNotifier(this._ref) : super(const AsyncValue.loading()) {
    _load();
    _ref.listen(authProvider, (_, __) => _load());
  }

  Future<void> _load() async {
    try {
      final repo = _ref.read(cartRepositoryProvider);
      final items = await repo.getCartItems();
      state = AsyncValue.data(items);
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }

  Future<void> addItem(CartItem item) async {
    final repo = _ref.read(cartRepositoryProvider);
    await repo.addItem(item);
    await _load();
  }

  Future<void> removeItem(String eventId) async {
    final repo = _ref.read(cartRepositoryProvider);
    await repo.removeItem(eventId);
    await _load();
  }

  Future<void> updateQuantity(String eventId, int qty) async {
    final repo = _ref.read(cartRepositoryProvider);
    await repo.updateQuantity(eventId, qty);
    await _load();
  }

  Future<void> clearCart() async {
    final repo = _ref.read(cartRepositoryProvider);
    await repo.clearCart();
    await _load();
  }
}

final cartNotifierProvider =
    StateNotifierProvider<CartNotifier, AsyncValue<List<CartItem>>>((ref) {
  return CartNotifier(ref);
});

/// Currently applied promo code (or null).
final appliedPromoProvider = StateProvider<PromoCode?>((ref) => null);

/// Selected payment method.
final selectedPaymentProvider = StateProvider<PaymentMethod>(
  (ref) => PaymentCatalog.methods.firstWhere((p) => p.isDefault),
);

/// Available promo codes for the cart UI, sourced from Isar (admin-managed).
final availablePromosProvider = FutureProvider<List<PromoCode>>((ref) async {
  final isarPromos = await ref.watch(activePromosProvider.future);
  return isarPromos.map(_toPromoCode).toList();
});

PromoCode _toPromoCode(IsarPromoCode p) => PromoCode(
      code: p.code,
      label: p.label,
      emoji: p.emoji,
      minSubtotal: p.minSubtotal,
      percentOff: p.discountType == 'percent' ? p.discountValue : null,
      amountOff: p.discountType == 'fixed' ? p.discountValue : null,
    );

/// Looks up a code by string against the admin-managed list.
final findPromoByCodeProvider =
    FutureProvider.family<PromoCode?, String>((ref, code) async {
  final list = await ref.watch(availablePromosProvider.future);
  final normalized = code.trim().toUpperCase();
  for (final p in list) {
    if (p.code == normalized) return p;
  }
  return null;
});

/// Computed checkout breakdown using runtime tax/service rates from settings.
final checkoutBreakdownProvider = Provider<CheckoutBreakdown>((ref) {
  final items = ref.watch(cartNotifierProvider).valueOrNull ?? [];
  final subtotal = items.fold<double>(0, (s, i) => s + i.totalPrice);
  final promo = ref.watch(appliedPromoProvider);
  final settings = ref.watch(appSettingsProvider).maybeWhen(
        data: (s) => s,
        orElse: () => null,
      );
  final taxRate = settings?.taxRate ?? 0.20;
  final serviceFeeRate = settings?.serviceFeeRate ?? 0.05;
  return CheckoutBreakdown.from(
    subtotal: subtotal,
    promo: promo,
    taxRate: taxRate,
    serviceFeeRate: serviceFeeRate,
  );
});

/// Payment service — reads live app settings.
final paymentServiceProvider = FutureProvider<PaymentService>((ref) async {
  final settings = await ref.watch(appSettingsProvider.future);
  return PaymentService(settings);
});
