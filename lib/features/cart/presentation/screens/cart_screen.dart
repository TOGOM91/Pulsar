import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/widgets/gradient_button.dart';
import '../../../../core/widgets/micro_interactions.dart';
import '../providers/cart_providers.dart';
import '../../../tickets/presentation/providers/ticket_providers.dart';
import '../../../auth/presentation/providers/auth_provider.dart';
import '../../../admin/presentation/providers/admin_provider.dart';
import '../../../../core/providers/core_providers.dart';
import '../../domain/cart_model.dart';
import '../../domain/promo_code.dart';

class CartScreen extends ConsumerWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final cartState = ref.watch(cartNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const Text('🛍️', style: TextStyle(fontSize: 22)),
            const SizedBox(width: 8),
            Text('MON PANIER',
                style: PulsarTheme.display(28,
                    color: theme.colorScheme.onSurface)),
          ],
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: () => context.pop(),
        ),
      ),
      body: cartState.when(
        data: (items) {
          if (items.isEmpty) return const _EmptyCart();

          final breakdown = ref.watch(checkoutBreakdownProvider);

          return Column(
            children: [
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.fromLTRB(20, 8, 20, 16),
                  children: [
                    // Cart items
                    for (var i = 0; i < items.length; i++)
                      _CartItemCard(
                        item: items[i],
                        index: i,
                        onIncrement: () => ref
                            .read(cartNotifierProvider.notifier)
                            .updateQuantity(items[i].eventId,
                                items[i].quantity + 1),
                        onDecrement: () => ref
                            .read(cartNotifierProvider.notifier)
                            .updateQuantity(items[i].eventId,
                                items[i].quantity - 1),
                        onRemove: () => ref
                            .read(cartNotifierProvider.notifier)
                            .removeItem(items[i].eventId),
                      ),

                    const SizedBox(height: 20),

                    // Promo code section
                    const _PromoSection(),

                    const SizedBox(height: 20),

                    // Payment method
                    const _PaymentSection(),

                    const SizedBox(height: 20),

                    // Breakdown
                    _BreakdownSection(breakdown: breakdown),

                    const SizedBox(height: 20),
                  ],
                ),
              ),

              // ── Checkout footer ──
              Container(
                padding: const EdgeInsets.fromLTRB(20, 16, 20, 24),
                decoration: BoxDecoration(
                  color: isDark
                      ? PulsarColors.cardDark
                      : PulsarColors.cardLight,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black
                          .withValues(alpha: isDark ? 0.3 : 0.08),
                      blurRadius: 20,
                      offset: const Offset(0, -4),
                    ),
                  ],
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(28),
                  ),
                ),
                child: SafeArea(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('TOTAL TTC',
                                  style: theme.textTheme.bodySmall),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    breakdown.total.toStringAsFixed(2),
                                    style: PulsarTheme.display(40,
                                        color:
                                            theme.colorScheme.onSurface),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 6),
                                    child: Text(
                                      '€',
                                      style: PulsarTheme.display(22,
                                          color: theme
                                              .colorScheme.onSurface),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          if (breakdown.discount > 0)
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              decoration: BoxDecoration(
                                color: PulsarColors.ecoGreen
                                    .withValues(alpha: 0.15),
                                borderRadius:
                                    BorderRadius.circular(50),
                              ),
                              child: Text(
                                '💰 -${breakdown.discount.toStringAsFixed(2)}€',
                                style: const TextStyle(
                                  color: PulsarColors.ecoGreen,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      GradientButton(
                        text: 'Payer maintenant',
                        icon: Icons.lock_rounded,
                        isFullWidth: true,
                        onPressed: () => _checkout(context, ref, items),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('Erreur: $e')),
      ),
    );
  }

  Future<void> _checkout(
    BuildContext context,
    WidgetRef ref,
    List<CartItem> items,
  ) async {
    final breakdown = ref.read(checkoutBreakdownProvider);
    final promo = ref.read(appliedPromoProvider);
    final paymentMethod = ref.read(selectedPaymentProvider);

    // Auth & settings sanity check
    final profile = ref.read(authProvider).maybeWhen(
          data: (a) => a is AuthAuthenticated ? a.profile : null,
          orElse: () => null,
        );
    if (profile == null) return;
    final settings = await ref.read(appSettingsProvider.future);
    if (!context.mounted) return;
    final totalItems = items.fold<int>(0, (s, i) => s + i.quantity);
    if (totalItems > settings.maxTicketsPerOrder) {
      _toast(context,
          'Maximum ${settings.maxTicketsPerOrder} billets par commande.');
      return;
    }
    if (settings.maintenanceMode) {
      _toast(
          context,
          settings.maintenanceMessage.isEmpty
              ? 'Service en maintenance.'
              : settings.maintenanceMessage);
      return;
    }

    // Loading dialog
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => const _CheckoutProgressDialog(),
    );

    final orderRepo = ref.read(orderRepositoryProvider);
    final paymentService = await ref.read(paymentServiceProvider.future);

    // 1. Create pending order
    final order = await orderRepo.createPending(
      customerEmail: profile.email,
      subtotal: breakdown.subtotal,
      discount: breakdown.discount,
      serviceFee: breakdown.serviceFee,
      tax: breakdown.tax,
      total: breakdown.total,
      currency: settings.currencySymbol,
      promoCode: promo?.code,
      paymentMethod: paymentMethod.brandLabel,
      paymentBrand: paymentMethod.brand.name,
      paymentLast4: paymentMethod.last4.isEmpty ? null : paymentMethod.last4,
      itemCount: totalItems,
    );

    // 2. Process payment
    final result = await paymentService.charge(
      amountEur: breakdown.total,
      customerEmail: profile.email,
      paymentMethodId: paymentMethod.id,
    );

    if (!result.success) {
      await orderRepo.markFailed(
        orderId: order.orderId,
        reason: result.failureReason ?? 'Erreur inconnue',
      );
      if (context.mounted) {
        Navigator.of(context).pop(); // close loader
        _toast(context, '❌ ${result.failureReason}');
      }
      return;
    }

    // 3. Generate tickets
    final ticketNotifier = ref.read(ticketNotifierProvider.notifier);
    final ticketIds = <String>[];
    for (final item in items) {
      for (var i = 0; i < item.quantity; i++) {
        final ticket = await ticketNotifier.purchaseTicket(
          eventId: item.eventId,
          eventName: item.eventName,
          eventDate: item.eventDate,
          eventLocation: item.eventLocation,
          eventImageUrl: item.eventImageUrl,
          price: item.unitPrice,
          ticketType: item.ticketType,
        );
        ticketIds.add(ticket.id);
      }
    }

    // 4. Mark order paid + bump stats
    await orderRepo.markPaid(orderId: order.orderId, ticketIds: ticketIds);
    await ref.read(authProvider.notifier).updateProfile(
          eventsBookedDelta: totalItems,
          moneySavedDelta: breakdown.discount,
          co2SavedKgDelta: totalItems * 18, // ~18kg avg per event
        );

    await ref.read(cartNotifierProvider.notifier).clearCart();
    ref.read(appliedPromoProvider.notifier).state = null;

    ref.invalidate(dashboardStatsProvider);

    if (!context.mounted) return;
    Navigator.of(context).pop(); // close loader

    await showDialog(
      context: context,
      builder: (ctx) => Stack(
        alignment: Alignment.center,
        children: [
          const Positioned.fill(child: ConfettiBurst()),
          Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(28)),
            child: Padding(
              padding: const EdgeInsets.all(28),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: PulsarColors.ecoGreen.withValues(alpha: 0.1),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.check_circle_rounded,
                      color: PulsarColors.ecoGreen,
                      size: 56,
                    ),
                  ).animate().scale(
                        begin: const Offset(0.5, 0.5),
                        end: const Offset(1, 1),
                        duration: 400.ms,
                        curve: Curves.elasticOut,
                      ),
                  const SizedBox(height: 20),
                  Text(
                    'Paiement confirmé !',
                    style: Theme.of(ctx).textTheme.headlineSmall,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    order.orderId,
                    style: Theme.of(ctx).textTheme.bodySmall?.copyWith(
                          color:
                              Theme.of(ctx).colorScheme.onSurfaceVariant,
                        ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '🎉 $totalItems billet(s) ajouté(s) à ton compte',
                    style: Theme.of(ctx).textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Total payé : ${breakdown.total.toStringAsFixed(2)} ${settings.currencySymbol}',
                    style: PulsarTheme.display(24,
                        color: Theme.of(ctx).colorScheme.onSurface),
                  ),
                  const SizedBox(height: 20),
                  GradientButton(
                    text: 'Voir mes billets',
                    icon: Icons.confirmation_number_rounded,
                    isFullWidth: true,
                    onPressed: () {
                      Navigator.pop(ctx);
                      context.go('/tickets');
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _toast(BuildContext context, String msg) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(msg), backgroundColor: PulsarColors.error),
    );
  }
}

class _CheckoutProgressDialog extends StatelessWidget {
  const _CheckoutProgressDialog();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 28),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const CircularProgressIndicator(color: PulsarColors.primary),
            const SizedBox(height: 18),
            Text(
              'Paiement en cours...',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
      ),
    );
  }
}

// ── Cart item card with quantity stepper ──
class _CartItemCard extends StatelessWidget {
  final CartItem item;
  final int index;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;
  final VoidCallback onRemove;

  const _CartItemCard({
    required this.item,
    required this.index,
    required this.onIncrement,
    required this.onDecrement,
    required this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Dismissible(
      key: ValueKey('cart-${item.eventId}'),
      direction: DismissDirection.endToStart,
      background: Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: PulsarColors.error,
          borderRadius: BorderRadius.circular(20),
        ),
        alignment: Alignment.centerRight,
        child: const Icon(Icons.delete_outline_rounded,
            color: Colors.white, size: 28),
      ),
      onDismissed: (_) => onRemove(),
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: isDark ? PulsarColors.cardDark : PulsarColors.cardLight,
          borderRadius: BorderRadius.circular(20),
          boxShadow: PulsarColors.shadowSm(isDark),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: SizedBox(
                width: 72,
                height: 72,
                child: item.eventImageUrl != null
                    ? CachedNetworkImage(
                        imageUrl: item.eventImageUrl!,
                        fit: BoxFit.cover,
                      )
                    : Container(
                        color: PulsarColors.primary.withValues(alpha: 0.1),
                        child: const Icon(Icons.music_note),
                      ),
              ),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.eventName,
                    style: theme.textTheme.titleMedium,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 2),
                  Text(item.eventDate, style: theme.textTheme.bodySmall),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${item.totalPrice.toStringAsFixed(0)}€',
                        style: theme.textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.w800,
                          color: PulsarColors.primary,
                        ),
                      ),
                      _QtyStepper(
                        quantity: item.quantity,
                        onIncrement: onIncrement,
                        onDecrement: onDecrement,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      )
          .animate()
          .fadeIn(delay: Duration(milliseconds: 60 * index), duration: 300.ms)
          .slideX(begin: 0.05),
    );
  }
}

class _QtyStepper extends StatelessWidget {
  final int quantity;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  const _QtyStepper({
    required this.quantity,
    required this.onIncrement,
    required this.onDecrement,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.primary.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          BounceTap(
            onTap: onDecrement,
            child: Padding(
              padding: const EdgeInsets.all(6),
              child: Icon(Icons.remove_rounded,
                  size: 18, color: theme.colorScheme.primary),
            ),
          ),
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 200),
            transitionBuilder: (c, anim) => ScaleTransition(
              scale: anim,
              child: c,
            ),
            child: Padding(
              key: ValueKey(quantity),
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Text(
                '$quantity',
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ),
          BounceTap(
            onTap: onIncrement,
            child: Padding(
              padding: const EdgeInsets.all(6),
              child: Icon(Icons.add_rounded,
                  size: 18, color: theme.colorScheme.primary),
            ),
          ),
        ],
      ),
    );
  }
}

// ── Promo code section ──
class _PromoSection extends ConsumerStatefulWidget {
  const _PromoSection();

  @override
  ConsumerState<_PromoSection> createState() => _PromoSectionState();
}

class _PromoSectionState extends ConsumerState<_PromoSection> {
  final _ctrl = TextEditingController();
  String? _error;

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  Future<void> _apply() async {
    final input = _ctrl.text.trim();
    if (input.isEmpty) return;
    final code = await ref.read(findPromoByCodeProvider(input).future);
    if (code == null) {
      setState(() => _error = 'Code invalide');
      return;
    }
    final breakdown = ref.read(checkoutBreakdownProvider);
    if (breakdown.subtotal < code.minSubtotal) {
      setState(() => _error =
          'Minimum ${code.minSubtotal.toStringAsFixed(0)}€ requis');
      return;
    }
    setState(() => _error = null);
    ref.read(appliedPromoProvider.notifier).state = code;
    _ctrl.clear();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final applied = ref.watch(appliedPromoProvider);

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isDark ? PulsarColors.cardDark : PulsarColors.cardLight,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: applied != null
              ? PulsarColors.ecoGreen.withValues(alpha: 0.4)
              : theme.colorScheme.outline.withValues(alpha: 0.4),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text('🎟️', style: TextStyle(fontSize: 18)),
              const SizedBox(width: 8),
              Text(
                'CODE PROMO',
                style: PulsarTheme.display(20,
                    color: theme.colorScheme.onSurface),
              ),
            ],
          ),
          const SizedBox(height: 12),
          if (applied != null)
            _AppliedPromoChip(promo: applied)
          else
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _ctrl,
                    textCapitalization: TextCapitalization.characters,
                    decoration: InputDecoration(
                      hintText: 'PULSAR10, ECO20...',
                      errorText: _error,
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 14, vertical: 12),
                      isDense: true,
                    ),
                    onSubmitted: (_) => _apply(),
                  ),
                ),
                const SizedBox(width: 8),
                GradientButton(
                  text: 'Appliquer',
                  compact: true,
                  onPressed: _apply,
                ),
              ],
            ),
          const SizedBox(height: 10),
          ref.watch(availablePromosProvider).maybeWhen(
                data: (codes) => Wrap(
                  spacing: 6,
                  runSpacing: 6,
                  children: codes.take(3).map((c) {
                    return BounceTap(
                      onTap: () {
                        _ctrl.text = c.code;
                        _apply();
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                          color: theme.colorScheme.primary
                              .withValues(alpha: 0.08),
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            color: theme.colorScheme.primary
                                .withValues(alpha: 0.25),
                          ),
                        ),
                        child: Text(
                          '${c.emoji} ${c.code}',
                          style: TextStyle(
                            color: theme.colorScheme.primary,
                            fontWeight: FontWeight.w700,
                            fontSize: 11,
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
                orElse: () => const SizedBox.shrink(),
              ),
        ],
      ),
    );
  }
}

class _AppliedPromoChip extends ConsumerWidget {
  final PromoCode promo;

  const _AppliedPromoChip({required this.promo});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      decoration: BoxDecoration(
        gradient: PulsarColors.ecoGradient,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          Text(promo.emoji, style: const TextStyle(fontSize: 18)),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  promo.code,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontSize: 14,
                  ),
                ),
                Text(
                  promo.label,
                  style: TextStyle(
                    color: Colors.white.withValues(alpha: 0.9),
                    fontSize: 11,
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            icon: const Icon(Icons.close_rounded, color: Colors.white),
            onPressed: () =>
                ref.read(appliedPromoProvider.notifier).state = null,
          ),
        ],
      ),
    ).animate().fadeIn(duration: 200.ms).scale(
          begin: const Offset(0.95, 0.95),
          end: const Offset(1, 1),
          duration: 200.ms,
          curve: Curves.easeOutCubic,
        );
  }
}

// ── Payment method selector ──
class _PaymentSection extends ConsumerWidget {
  const _PaymentSection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final selected = ref.watch(selectedPaymentProvider);

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isDark ? PulsarColors.cardDark : PulsarColors.cardLight,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: theme.colorScheme.outline.withValues(alpha: 0.4),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text('💳', style: TextStyle(fontSize: 18)),
              const SizedBox(width: 8),
              Text(
                'PAIEMENT',
                style: PulsarTheme.display(20,
                    color: theme.colorScheme.onSurface),
              ),
            ],
          ),
          const SizedBox(height: 12),
          SizedBox(
            height: 92,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: PaymentCatalog.methods.length,
              itemBuilder: (context, i) {
                final m = PaymentCatalog.methods[i];
                final isSelected = m.id == selected.id;
                return Padding(
                  padding: EdgeInsets.only(right: 10, left: i == 0 ? 0 : 0),
                  child: BounceTap(
                    onTap: () => ref
                        .read(selectedPaymentProvider.notifier)
                        .state = m,
                    child: _PaymentCard(method: m, isSelected: isSelected),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _PaymentCard extends StatelessWidget {
  final PaymentMethod method;
  final bool isSelected;

  const _PaymentCard({required this.method, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      width: 150,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        gradient: isSelected ? PulsarColors.heroGradient : null,
        color: isSelected
            ? null
            : theme.colorScheme.primary.withValues(alpha: 0.05),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
          color: isSelected
              ? Colors.transparent
              : theme.colorScheme.outline.withValues(alpha: 0.3),
          width: 1,
        ),
        boxShadow: isSelected
            ? [
                BoxShadow(
                  color: PulsarColors.primary.withValues(alpha: 0.3),
                  blurRadius: 14,
                  offset: const Offset(0, 4),
                ),
              ]
            : null,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                _brandIcon(method.brand),
                color: isSelected
                    ? Colors.white
                    : theme.colorScheme.primary,
                size: 22,
              ),
              const Spacer(),
              if (isSelected)
                const Icon(Icons.check_circle_rounded,
                    color: Colors.white, size: 18),
            ],
          ),
          Text(
            method.displayLabel,
            style: TextStyle(
              color: isSelected
                  ? Colors.white
                  : theme.colorScheme.onSurface,
              fontWeight: FontWeight.w800,
              fontSize: 13,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }

  IconData _brandIcon(PaymentBrand b) {
    switch (b) {
      case PaymentBrand.visa:
      case PaymentBrand.mastercard:
      case PaymentBrand.amex:
        return Icons.credit_card_rounded;
      case PaymentBrand.applepay:
        return Icons.apple_rounded;
      case PaymentBrand.googlepay:
        return Icons.g_mobiledata_rounded;
      case PaymentBrand.paypal:
        return Icons.account_balance_wallet_rounded;
    }
  }
}

// ── Breakdown section ──
class _BreakdownSection extends StatelessWidget {
  final CheckoutBreakdown breakdown;

  const _BreakdownSection({required this.breakdown});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isDark ? PulsarColors.cardDark : PulsarColors.cardLight,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: theme.colorScheme.outline.withValues(alpha: 0.4),
        ),
      ),
      child: Column(
        children: [
          _line(theme, 'Sous-total', breakdown.subtotal),
          if (breakdown.discount > 0) ...[
            const SizedBox(height: 8),
            _line(theme, 'Code promo', -breakdown.discount,
                color: PulsarColors.ecoGreen),
          ],
          const SizedBox(height: 8),
          _line(theme, 'Frais de service (5%)', breakdown.serviceFee,
              dim: true),
          const SizedBox(height: 8),
          _line(theme, 'TVA (20%)', breakdown.tax, dim: true),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Divider(height: 1),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Total TTC', style: theme.textTheme.titleLarge),
              Text(
                '${breakdown.total.toStringAsFixed(2)} €',
                style: theme.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w900,
                  color: PulsarColors.primary,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _line(ThemeData theme, String label, double value,
      {bool dim = false, Color? color}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label,
            style: dim
                ? theme.textTheme.bodySmall
                : theme.textTheme.bodyMedium),
        Text(
          '${value >= 0 ? '' : '-'}${value.abs().toStringAsFixed(2)} €',
          style: theme.textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.w700,
            color: color ??
                (dim ? theme.colorScheme.onSurfaceVariant : null),
          ),
        ),
      ],
    );
  }
}

class _EmptyCart extends StatelessWidget {
  const _EmptyCart();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: PulsarColors.primary.withValues(alpha: 0.08),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.shopping_bag_outlined,
              size: 56,
              color: PulsarColors.primary.withValues(alpha: 0.5),
            ),
          ),
          const SizedBox(height: 20),
          Text('Panier vide', style: theme.textTheme.headlineSmall),
          const SizedBox(height: 8),
          Text(
            'Ajoute des événements pour commencer\nton aventure 🎶',
            style: theme.textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          OutlinedButton.icon(
            onPressed: () => context.go('/explore'),
            icon: const Icon(Icons.explore_rounded),
            label: const Text('Explorer'),
          ),
        ],
      ),
    ).animate().fadeIn(duration: 500.ms);
  }
}
