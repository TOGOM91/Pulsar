import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/providers/core_providers.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/widgets/gradient_button.dart';
import '../../../../core/widgets/micro_interactions.dart';
import '../../../auth/presentation/providers/auth_provider.dart';
import '../../../admin/presentation/providers/admin_provider.dart';
import '../providers/cart_providers.dart';

/// Landing screen after Stripe Checkout. Reached either by the Stripe redirect
/// (web `success_url`) or by [context.go] right after launching Checkout
/// (mobile). It listens to the order document and reacts to the webhook flipping
/// it to `paid`. The client never marks the order paid itself.
class CheckoutResultScreen extends ConsumerStatefulWidget {
  final String orderId;
  final bool cancelled;

  const CheckoutResultScreen({
    super.key,
    required this.orderId,
    this.cancelled = false,
  });

  @override
  ConsumerState<CheckoutResultScreen> createState() =>
      _CheckoutResultScreenState();
}

class _CheckoutResultScreenState extends ConsumerState<CheckoutResultScreen> {
  bool _settled = false;

  void _onPaid() {
    if (_settled) return;
    _settled = true;
    // Clear local checkout UI state once the server confirmed the payment.
    ref.read(appliedPromoProvider.notifier).state = null;
    ref.read(authProvider.notifier).refresh();
    ref.invalidate(dashboardStatsProvider);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    if (widget.cancelled) {
      return _Frame(
        icon: Icons.cancel_rounded,
        iconColor: PulsarColors.error,
        title: 'Paiement annulé',
        subtitle: 'Aucun montant n’a été débité. Ton panier est intact.',
        primaryLabel: 'Retour au panier',
        onPrimary: () => context.go('/cart'),
      );
    }

    final orderStream = ref.watch(checkoutServiceProvider).watchOrder(widget.orderId);

    return StreamBuilder(
      stream: orderStream,
      builder: (context, snapshot) {
        final order = snapshot.data;
        final status = order?.status ?? 'pending';

        if (status == 'paid') {
          WidgetsBinding.instance.addPostFrameCallback((_) => _onPaid());
          return Stack(
            alignment: Alignment.center,
            children: [
              const Positioned.fill(child: ConfettiBurst()),
              _Frame(
                icon: Icons.check_circle_rounded,
                iconColor: PulsarColors.ecoGreen,
                title: 'Paiement confirmé !',
                subtitle:
                    'Commande ${widget.orderId} • ${order!.itemCount} billet(s).\n'
                    'Total payé : ${order.total.toStringAsFixed(2)} ${order.currency}',
                primaryLabel: 'Voir mes billets',
                onPrimary: () => context.go('/tickets'),
              ),
            ],
          );
        }

        if (status == 'failed') {
          return _Frame(
            icon: Icons.error_rounded,
            iconColor: PulsarColors.error,
            title: 'Paiement échoué',
            subtitle: order?.failureReason ??
                'Le paiement n’a pas abouti. Réessaie depuis ton panier.',
            primaryLabel: 'Retour au panier',
            onPrimary: () => context.go('/cart'),
          );
        }

        // pending — waiting for the Stripe webhook.
        return _Frame(
          icon: Icons.hourglass_top_rounded,
          iconColor: PulsarColors.primary,
          title: 'Validation du paiement…',
          subtitle:
              'On confirme ta transaction auprès de Stripe. Cela prend quelques secondes.',
          showSpinner: true,
          primaryLabel: 'Voir mes billets',
          onPrimary: () => context.go('/tickets'),
          secondaryLabel: 'Retour à l’accueil',
          onSecondary: () => context.go('/'),
          theme: theme,
        );
      },
    );
  }
}

class _Frame extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String title;
  final String subtitle;
  final String primaryLabel;
  final VoidCallback onPrimary;
  final String? secondaryLabel;
  final VoidCallback? onSecondary;
  final bool showSpinner;
  final ThemeData? theme;

  const _Frame({
    required this.icon,
    required this.iconColor,
    required this.title,
    required this.subtitle,
    required this.primaryLabel,
    required this.onPrimary,
    this.secondaryLabel,
    this.onSecondary,
    this.showSpinner = false,
    this.theme,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: iconColor.withValues(alpha: 0.12),
                  shape: BoxShape.circle,
                ),
                child: showSpinner
                    ? SizedBox(
                        width: 56,
                        height: 56,
                        child: CircularProgressIndicator(color: iconColor),
                      )
                    : Icon(icon, color: iconColor, size: 56),
              ),
              const SizedBox(height: 24),
              Text(
                title,
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),
              Text(
                subtitle,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 28),
              GradientButton(
                text: primaryLabel,
                isFullWidth: true,
                onPressed: onPrimary,
              ),
              if (secondaryLabel != null) ...[
                const SizedBox(height: 8),
                TextButton(onPressed: onSecondary, child: Text(secondaryLabel!)),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
