import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:isar/isar.dart';
import '../../../../core/database/isar_collections.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/theme/app_theme.dart';
import '../providers/admin_provider.dart';

class AdminPromosScreen extends ConsumerWidget {
  const AdminPromosScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final promos = ref.watch(adminPromosListProvider);
    final role = ref.watch(currentRoleProvider);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: () => context.pop(),
        ),
        title: Row(
          children: [
            const Text('🏷️', style: TextStyle(fontSize: 22)),
            const SizedBox(width: 8),
            Text('CODES PROMO',
                style: PulsarTheme.display(24,
                    color: theme.colorScheme.onSurface)),
          ],
        ),
      ),
      floatingActionButton: role.canManagePromos
          ? FloatingActionButton.extended(
              icon: const Icon(Icons.add_rounded),
              label: const Text('Nouveau'),
              onPressed: () => _editDialog(context, ref, null),
            )
          : null,
      body: promos.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('Erreur: $e')),
        data: (list) {
          if (list.isEmpty) {
            return const Center(child: Text('Aucun code promo.'));
          }
          return RefreshIndicator(
            color: PulsarColors.primary,
            onRefresh: () async => ref.invalidate(adminPromosListProvider),
            child: ListView.separated(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 140),
              itemCount: list.length,
              separatorBuilder: (_, __) => const SizedBox(height: 10),
              itemBuilder: (_, i) {
                final p = list[i];
                return _PromoCard(
                  promo: p,
                  canManage: role.canManagePromos,
                  canDelete: role.canDeletePromos,
                  onEdit: () => _editDialog(context, ref, p),
                  onToggle: () async {
                    final actor = ref.read(currentProfileProvider);
                    if (actor == null) return;
                    await ref
                        .read(adminRepositoryProvider)
                        .togglePromo(actor: actor, code: p.code);
                    ref.invalidate(adminPromosListProvider);
                    ref.invalidate(activePromosProvider);
                  },
                  onDelete: () async {
                    final actor = ref.read(currentProfileProvider);
                    if (actor == null) return;
                    await ref
                        .read(adminRepositoryProvider)
                        .deletePromo(actor: actor, code: p.code);
                    ref.invalidate(adminPromosListProvider);
                    ref.invalidate(activePromosProvider);
                  },
                );
              },
            ),
          );
        },
      ),
    );
  }

  Future<void> _editDialog(
    BuildContext context,
    WidgetRef ref,
    IsarPromoCode? existing,
  ) async {
    final code = TextEditingController(text: existing?.code ?? '');
    final label = TextEditingController(text: existing?.label ?? '');
    final emoji = TextEditingController(text: existing?.emoji ?? '🎁');
    final value = TextEditingController(
        text: existing?.discountValue.toStringAsFixed(0) ?? '10');
    final minSubtotal = TextEditingController(
        text: existing?.minSubtotal.toStringAsFixed(0) ?? '0');
    final maxUses =
        TextEditingController(text: existing?.maxUses.toString() ?? '0');

    var type = existing?.discountType ?? 'percent';

    final ok = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(existing == null ? 'Nouveau code' : 'Éditer ${existing.code}'),
        content: SingleChildScrollView(
          child: SizedBox(
            width: 360,
            child: StatefulBuilder(builder: (ctx, setStateInner) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(children: [
                    SizedBox(
                      width: 60,
                      child: TextField(
                        controller: emoji,
                        decoration: const InputDecoration(labelText: '🎁'),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: TextField(
                        controller: code,
                        decoration: const InputDecoration(labelText: 'Code'),
                        textCapitalization: TextCapitalization.characters,
                      ),
                    ),
                  ]),
                  const SizedBox(height: 8),
                  TextField(
                    controller: label,
                    decoration: const InputDecoration(labelText: 'Description'),
                  ),
                  const SizedBox(height: 8),
                  Row(children: [
                    Expanded(
                      child: DropdownButtonFormField<String>(
                        initialValue: type,
                        decoration: const InputDecoration(labelText: 'Type'),
                        items: const [
                          DropdownMenuItem(
                              value: 'percent', child: Text('% pourcentage')),
                          DropdownMenuItem(
                              value: 'fixed', child: Text('€ fixe')),
                        ],
                        onChanged: (v) => setStateInner(() => type = v!),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: TextField(
                        controller: value,
                        decoration: InputDecoration(
                            labelText:
                                type == 'percent' ? 'Pourcentage' : 'Euros'),
                        keyboardType: const TextInputType.numberWithOptions(
                            decimal: true),
                      ),
                    ),
                  ]),
                  const SizedBox(height: 8),
                  Row(children: [
                    Expanded(
                      child: TextField(
                        controller: minSubtotal,
                        decoration: const InputDecoration(
                            labelText: 'Min subtotal (€)'),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: TextField(
                        controller: maxUses,
                        decoration: const InputDecoration(
                            labelText: 'Max utilisations (0 = illimité)'),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ]),
                ],
              );
            }),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx, false),
            child: const Text('Annuler'),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(ctx, true),
            child: const Text('Enregistrer'),
          ),
        ],
      ),
    );
    if (ok != true) return;

    final actor = ref.read(currentProfileProvider);
    if (actor == null) return;

    final promo = existing ?? IsarPromoCode();
    if (existing == null) {
      promo
        ..isarId = Isar.autoIncrement
        ..usedCount = 0
        ..isActive = true;
    }
    promo
      ..code = code.text.trim().toUpperCase()
      ..label = label.text.trim()
      ..emoji = emoji.text.trim().isEmpty ? '🎁' : emoji.text.trim()
      ..discountType = type
      ..discountValue = double.tryParse(value.text.trim()) ?? 0
      ..minSubtotal = double.tryParse(minSubtotal.text.trim()) ?? 0
      ..maxUses = int.tryParse(maxUses.text.trim()) ?? 0;

    await ref.read(adminRepositoryProvider).savePromo(actor: actor, promo: promo);
    ref.invalidate(adminPromosListProvider);
    ref.invalidate(activePromosProvider);
  }
}

class _PromoCard extends StatelessWidget {
  final IsarPromoCode promo;
  final bool canManage;
  final bool canDelete;
  final VoidCallback onEdit;
  final VoidCallback onToggle;
  final VoidCallback onDelete;

  const _PromoCard({
    required this.promo,
    required this.canManage,
    required this.canDelete,
    required this.onEdit,
    required this.onToggle,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: isDark ? PulsarColors.cardDark : PulsarColors.cardLight,
        borderRadius: BorderRadius.circular(PulsarTokens.radiusLg),
        border: Border.all(
          color: promo.isActive
              ? PulsarColors.ecoGreen.withValues(alpha: 0.35)
              : theme.colorScheme.outline.withValues(alpha: 0.3),
        ),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              gradient: promo.isActive
                  ? PulsarColors.ecoGradient
                  : LinearGradient(colors: [
                      PulsarColors.warning.withValues(alpha: 0.7),
                      PulsarColors.warning.withValues(alpha: 0.4),
                    ]),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(promo.emoji, style: const TextStyle(fontSize: 22)),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(promo.code,
                        style: theme.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w900,
                          letterSpacing: 1,
                        )),
                    const SizedBox(width: 6),
                    if (!promo.isActive)
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 6, vertical: 1),
                        decoration: BoxDecoration(
                          color: PulsarColors.warning.withValues(alpha: 0.15),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Text(
                          'INACTIF',
                          style: TextStyle(
                            color: PulsarColors.warning,
                            fontWeight: FontWeight.w800,
                            fontSize: 9,
                          ),
                        ),
                      ),
                  ],
                ),
                Text(promo.label, style: theme.textTheme.bodySmall),
                const SizedBox(height: 4),
                Row(
                  children: [
                    _kv('Réduction',
                        '${promo.discountValue.toStringAsFixed(0)}${promo.discountType == "percent" ? "%" : "€"}'),
                    const SizedBox(width: 8),
                    if (promo.minSubtotal > 0)
                      _kv('Min', '${promo.minSubtotal.toStringAsFixed(0)}€'),
                    const SizedBox(width: 8),
                    _kv(
                      'Utilisations',
                      promo.maxUses == 0
                          ? '${promo.usedCount}/∞'
                          : '${promo.usedCount}/${promo.maxUses}',
                    ),
                  ],
                ),
              ],
            ),
          ),
          if (canManage)
            PopupMenuButton<String>(
              icon: const Icon(Icons.more_vert_rounded),
              onSelected: (v) {
                if (v == 'edit') onEdit();
                if (v == 'toggle') onToggle();
                if (v == 'delete') onDelete();
              },
              itemBuilder: (_) => [
                const PopupMenuItem(
                  value: 'edit',
                  child: ListTile(
                    leading: Icon(Icons.edit_rounded),
                    title: Text('Éditer'),
                    dense: true,
                  ),
                ),
                PopupMenuItem(
                  value: 'toggle',
                  child: ListTile(
                    leading: Icon(promo.isActive
                        ? Icons.toggle_off_rounded
                        : Icons.toggle_on_rounded),
                    title: Text(promo.isActive ? 'Désactiver' : 'Activer'),
                    dense: true,
                  ),
                ),
                if (canDelete)
                  const PopupMenuItem(
                    value: 'delete',
                    child: ListTile(
                      leading: Icon(Icons.delete_outline_rounded,
                          color: PulsarColors.error),
                      title: Text('Supprimer',
                          style: TextStyle(color: PulsarColors.error)),
                      dense: true,
                    ),
                  ),
              ],
            ),
        ],
      ),
    );
  }

  Widget _kv(String k, String v) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      decoration: BoxDecoration(
        color: PulsarColors.primary.withValues(alpha: 0.08),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Text(
        '$k $v',
        style: const TextStyle(
          color: PulsarColors.primary,
          fontWeight: FontWeight.w700,
          fontSize: 10,
        ),
      ),
    );
  }
}
