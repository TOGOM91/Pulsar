import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/theme/app_theme.dart';
import '../providers/admin_provider.dart';

class AdminAuditScreen extends ConsumerWidget {
  const AdminAuditScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final actions = ref.watch(auditLogProvider);
    final fmt = DateFormat('dd/MM/yy HH:mm');

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: () => context.pop(),
        ),
        title: Row(
          children: [
            const Text('📓', style: TextStyle(fontSize: 22)),
            const SizedBox(width: 8),
            Text('JOURNAL ADMIN',
                style: PulsarTheme.display(24,
                    color: theme.colorScheme.onSurface)),
          ],
        ),
      ),
      body: actions.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('Erreur: $e')),
        data: (list) {
          if (list.isEmpty) {
            return const Center(child: Text('Aucune action enregistrée.'));
          }
          return RefreshIndicator(
            color: PulsarColors.primary,
            onRefresh: () async => ref.invalidate(auditLogProvider),
            child: ListView.separated(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 140),
              itemCount: list.length,
              separatorBuilder: (_, __) =>
                  Divider(color: theme.colorScheme.outlineVariant),
              itemBuilder: (_, i) {
                final a = list[i];
                final color = _colorFor(a.action);
                return ListTile(
                  leading: Container(
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(
                      color: color.withValues(alpha: 0.15),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    alignment: Alignment.center,
                    child: Icon(_iconFor(a.action),
                        color: color, size: 18),
                  ),
                  title: Text(
                    a.action,
                    style: theme.textTheme.titleSmall,
                  ),
                  subtitle: Text(
                    '${a.actorEmail} (${a.actorRole}) · ${a.entityType}:${a.entityId}',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodySmall,
                  ),
                  trailing: Text(
                    fmt.format(a.at),
                    style: theme.textTheme.bodySmall?.copyWith(fontSize: 11),
                  ),
                  isThreeLine: a.details != null,
                );
              },
            ),
          );
        },
      ),
    );
  }

  Color _colorFor(String action) {
    if (action.startsWith('event.')) return PulsarColors.primary;
    if (action.startsWith('user.')) return PulsarColors.accent;
    if (action.startsWith('order.')) return PulsarColors.info;
    if (action.startsWith('promo.')) return PulsarColors.warning;
    if (action.startsWith('settings.')) return PulsarColors.secondaryDark;
    if (action.startsWith('broadcast.')) return PulsarColors.ecoGreen;
    return PulsarColors.textSecondaryLight;
  }

  IconData _iconFor(String action) {
    if (action.startsWith('event.')) return Icons.event_rounded;
    if (action.startsWith('user.')) return Icons.person_rounded;
    if (action.startsWith('order.')) return Icons.receipt_long_rounded;
    if (action.startsWith('promo.')) return Icons.local_offer_rounded;
    if (action.startsWith('settings.')) return Icons.settings_rounded;
    if (action.startsWith('broadcast.')) return Icons.send_rounded;
    return Icons.history_rounded;
  }
}
