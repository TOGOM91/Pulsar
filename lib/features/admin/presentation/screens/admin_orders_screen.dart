import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import '../../../../core/database/app_database.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/theme/app_theme.dart';
import '../providers/admin_provider.dart';

class AdminOrdersScreen extends ConsumerStatefulWidget {
  const AdminOrdersScreen({super.key});

  @override
  ConsumerState<AdminOrdersScreen> createState() => _AdminOrdersScreenState();
}

class _AdminOrdersScreenState extends ConsumerState<AdminOrdersScreen> {
  String? _filter;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final orders = ref.watch(adminOrdersListProvider(_filter));
    final role = ref.watch(currentRoleProvider);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: () => context.pop(),
        ),
        title: Row(
          children: [
            const Text('🧾', style: TextStyle(fontSize: 22)),
            const SizedBox(width: 8),
            Text('COMMANDES',
                style: PulsarTheme.display(24,
                    color: theme.colorScheme.onSurface)),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 4),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _Chip('Toutes', _filter == null,
                      () => setState(() => _filter = null)),
                  _Chip('Payées', _filter == 'paid',
                      () => setState(() => _filter = 'paid')),
                  _Chip('Remboursées', _filter == 'refunded',
                      () => setState(() => _filter = 'refunded')),
                  _Chip('Partielles', _filter == 'partial_refund',
                      () => setState(() => _filter = 'partial_refund')),
                  _Chip('Échouées', _filter == 'failed',
                      () => setState(() => _filter = 'failed')),
                ],
              ),
            ),
          ),
          Expanded(
            child: orders.when(
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (e, _) => Center(child: Text('Erreur: $e')),
              data: (list) {
                if (list.isEmpty) {
                  return const Center(child: Text('Aucune commande.'));
                }
                return ListView.separated(
                  padding: const EdgeInsets.fromLTRB(16, 8, 16, 140),
                  itemCount: list.length,
                  separatorBuilder: (_, __) => const SizedBox(height: 8),
                  itemBuilder: (_, i) => _OrderCard(
                    order: list[i],
                    canRefund: role.canRefundOrders,
                    onRefund: () => _showRefundDialog(context, list[i]),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _showRefundDialog(BuildContext context, IsarOrder order) async {
    final amountCtrl =
        TextEditingController(text: order.total.toStringAsFixed(2));
    final reasonCtrl = TextEditingController();
    final ok = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text('Rembourser ${order.orderId}'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: amountCtrl,
              decoration: const InputDecoration(labelText: 'Montant (€)'),
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: reasonCtrl,
              decoration: const InputDecoration(labelText: 'Motif'),
              maxLines: 2,
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx, false),
            child: const Text('Annuler'),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(ctx, true),
            child: const Text('Rembourser'),
          ),
        ],
      ),
    );
    if (ok != true) return;

    final actor = ref.read(currentProfileProvider);
    if (actor == null) return;
    final amount = double.tryParse(amountCtrl.text.trim());
    await ref.read(adminRepositoryProvider).refundOrder(
          actor: actor,
          orderId: order.orderId,
          reason: reasonCtrl.text.trim().isEmpty
              ? 'Non précisé'
              : reasonCtrl.text.trim(),
          partialAmount:
              amount != null && amount < order.total ? amount : null,
        );
    ref.invalidate(adminOrdersListProvider);
    ref.invalidate(dashboardStatsProvider);
  }
}

class _Chip extends StatelessWidget {
  final String label;
  final bool selected;
  final VoidCallback onTap;

  const _Chip(this.label, this.selected, this.onTap);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: ChoiceChip(
        label: Text(label),
        selected: selected,
        onSelected: (_) => onTap(),
        selectedColor: PulsarColors.primary.withValues(alpha: 0.18),
        labelStyle: TextStyle(
          color: selected
              ? PulsarColors.primary
              : Theme.of(context).colorScheme.onSurface,
          fontWeight: selected ? FontWeight.w800 : FontWeight.w500,
        ),
      ),
    );
  }
}

class _OrderCard extends StatelessWidget {
  final IsarOrder order;
  final bool canRefund;
  final VoidCallback onRefund;

  const _OrderCard({
    required this.order,
    required this.canRefund,
    required this.onRefund,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final fmt = DateFormat('dd/MM/yy HH:mm');

    final statusColor = switch (order.status) {
      'paid' => PulsarColors.ecoGreen,
      'refunded' => PulsarColors.error,
      'partial_refund' => PulsarColors.warning,
      'failed' => PulsarColors.error,
      _ => PulsarColors.info,
    };

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: isDark ? PulsarColors.cardDark : PulsarColors.cardLight,
        borderRadius: BorderRadius.circular(PulsarTokens.radiusLg),
        border: Border.all(
            color: theme.colorScheme.outline.withValues(alpha: 0.3)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  order.orderId,
                  style: theme.textTheme.titleSmall,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 8, vertical: 3),
                decoration: BoxDecoration(
                  color: statusColor.withValues(alpha: 0.12),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Text(
                  order.status.toUpperCase(),
                  style: TextStyle(
                    color: statusColor,
                    fontWeight: FontWeight.w800,
                    fontSize: 10,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 2),
          Text(order.customerEmail, style: theme.textTheme.bodySmall),
          Text(
            '${fmt.format(order.placedAt)} · ${order.itemCount} billet(s) · ${order.paymentMethod}',
            style: theme.textTheme.bodySmall?.copyWith(fontSize: 11),
          ),
          if (order.refundedAt != null)
            Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Text(
                'Remboursé le ${fmt.format(order.refundedAt!)} · ${order.refundReason ?? "—"}',
                style: theme.textTheme.bodySmall?.copyWith(
                  fontSize: 11,
                  color: PulsarColors.error,
                ),
              ),
            ),
          const SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: Text(
                  '${order.total.toStringAsFixed(2)} ${order.currency}',
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w900,
                    color: PulsarColors.primary,
                  ),
                ),
              ),
              if (canRefund && order.status == 'paid')
                OutlinedButton.icon(
                  onPressed: onRefund,
                  icon: const Icon(Icons.replay_rounded, size: 16),
                  label: const Text('Rembourser'),
                  style: OutlinedButton.styleFrom(
                    foregroundColor: PulsarColors.error,
                    side: const BorderSide(color: PulsarColors.error),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 4),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
