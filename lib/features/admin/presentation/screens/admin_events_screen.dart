import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/database/app_database.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../events/presentation/providers/event_providers.dart';
import '../providers/admin_provider.dart';

class AdminEventsScreen extends ConsumerWidget {
  const AdminEventsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final events = ref.watch(adminEventsListProvider);
    final role = ref.watch(currentRoleProvider);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: () => context.pop(),
        ),
        title: Row(
          children: [
            const Text('🎟�?', style: TextStyle(fontSize: 22)),
            const SizedBox(width: 8),
            Text('ÉVÉNEMENTS',
                style: PulsarTheme.display(26,
                    color: theme.colorScheme.onSurface)),
          ],
        ),
      ),
      floatingActionButton: role.canCreateEvent
          ? FloatingActionButton.extended(
              icon: const Icon(Icons.add_rounded),
              label: const Text('Nouveau'),
              onPressed: () => context.push('/admin/events/new'),
            )
          : null,
      body: events.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('Erreur: $e')),
        data: (list) {
          if (list.isEmpty) {
            return const Center(child: Text('Aucun événement.'));
          }
          return RefreshIndicator(
            color: PulsarColors.primary,
            onRefresh: () async {
              ref.invalidate(adminEventsListProvider);
            },
            child: ListView.separated(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 140),
              itemCount: list.length,
              separatorBuilder: (_, __) => const SizedBox(height: 10),
              itemBuilder: (context, i) {
                final e = list[i];
                return _EventAdminCard(
                  event: e,
                  role: role,
                  onEdit: () => context.push('/admin/events/${e.eventId}'),
                  onTogglePublish: role.canPublishEvent
                      ? () async {
                          final actor = ref.read(currentProfileProvider);
                          if (actor == null) return;
                          await ref
                              .read(adminRepositoryProvider)
                              .toggleEventPublished(
                                  actor: actor, eventId: e.eventId);
                          ref.invalidate(adminEventsListProvider);
                          ref.invalidate(allEventsProvider);
                          ref.invalidate(trendingEventsProvider);
                          ref.invalidate(upcomingEventsProvider);
                        }
                      : null,
                  onDelete: role.canDeleteEvent
                      ? () async {
                          final actor = ref.read(currentProfileProvider);
                          if (actor == null) return;
                          final confirm = await _confirm(
                            context,
                            title: 'Supprimer ${e.name} ?',
                            body:
                                'Cette action est irréversible. Les billets déjà émis restent valides.',
                          );
                          if (confirm != true) return;
                          await ref
                              .read(adminRepositoryProvider)
                              .deleteEvent(actor: actor, eventId: e.eventId);
                          ref.invalidate(adminEventsListProvider);
                          ref.invalidate(allEventsProvider);
                          ref.invalidate(trendingEventsProvider);
                          ref.invalidate(upcomingEventsProvider);
                        }
                      : null,
                ).animate().fadeIn(
                      delay: Duration(milliseconds: 40 * i),
                      duration: 300.ms,
                    );
              },
            ),
          );
        },
      ),
    );
  }
}

Future<bool?> _confirm(BuildContext context,
    {required String title, required String body}) {
  return showDialog<bool>(
    context: context,
    builder: (ctx) => AlertDialog(
      title: Text(title),
      content: Text(body),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(ctx, false),
          child: const Text('Annuler'),
        ),
        FilledButton(
          style: FilledButton.styleFrom(backgroundColor: PulsarColors.error),
          onPressed: () => Navigator.pop(ctx, true),
          child: const Text('Supprimer'),
        ),
      ],
    ),
  );
}

class _EventAdminCard extends StatelessWidget {
  final IsarEvent event;
  final dynamic role;
  final VoidCallback onEdit;
  final VoidCallback? onTogglePublish;
  final VoidCallback? onDelete;

  const _EventAdminCard({
    required this.event,
    required this.role,
    required this.onEdit,
    required this.onTogglePublish,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return InkWell(
      onTap: onEdit,
      borderRadius: BorderRadius.circular(PulsarTokens.radiusLg),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: isDark ? PulsarColors.cardDark : PulsarColors.cardLight,
          borderRadius: BorderRadius.circular(PulsarTokens.radiusLg),
          border: Border.all(
              color: theme.colorScheme.outline.withValues(alpha: 0.3)),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: SizedBox(
                width: 72,
                height: 72,
                child: event.imageUrl.isNotEmpty
                    ? CachedNetworkImage(
                        imageUrl: event.imageUrl,
                        fit: BoxFit.cover,
                        errorWidget: (_, __, ___) => Container(
                          color: PulsarColors.primary.withValues(alpha: 0.15),
                          child: const Icon(Icons.image_not_supported),
                        ),
                      )
                    : Container(
                        color: PulsarColors.primary.withValues(alpha: 0.15),
                        child: const Icon(Icons.event),
                      ),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          event.name,
                          style: theme.textTheme.titleMedium,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      _StatusChip(event.isPublished),
                    ],
                  ),
                  const SizedBox(height: 2),
                  Text(
                    '${event.category} • ${event.date}',
                    style: theme.textTheme.bodySmall,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(event.location,
                      style: theme.textTheme.bodySmall,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 3),
                        decoration: BoxDecoration(
                          color:
                              PulsarColors.primary.withValues(alpha: 0.12),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Text(
                          '${event.pricingAmount.toStringAsFixed(0)}${event.currency}',
                          style: const TextStyle(
                            color: PulsarColors.primary,
                            fontWeight: FontWeight.w800,
                            fontSize: 11,
                          ),
                        ),
                      ),
                      const SizedBox(width: 6),
                      if (event.totalTicketsSold > 0)
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 3),
                          decoration: BoxDecoration(
                            color: PulsarColors.ecoGreen
                                .withValues(alpha: 0.12),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Text(
                            '🎟�? ${event.totalTicketsSold}',
                            style: const TextStyle(
                              color: PulsarColors.ecoGreen,
                              fontWeight: FontWeight.w800,
                              fontSize: 11,
                            ),
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
            PopupMenuButton<String>(
              icon: const Icon(Icons.more_vert_rounded),
              onSelected: (v) {
                if (v == 'edit') onEdit();
                if (v == 'publish') onTogglePublish?.call();
                if (v == 'delete') onDelete?.call();
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
                if (onTogglePublish != null)
                  PopupMenuItem(
                    value: 'publish',
                    child: ListTile(
                      leading: Icon(event.isPublished
                          ? Icons.visibility_off_rounded
                          : Icons.visibility_rounded),
                      title: Text(event.isPublished
                          ? 'Dépublier'
                          : 'Publier'),
                      dense: true,
                    ),
                  ),
                if (onDelete != null)
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
      ),
    );
  }
}

class _StatusChip extends StatelessWidget {
  final bool published;
  const _StatusChip(this.published);

  @override
  Widget build(BuildContext context) {
    final color = published ? PulsarColors.ecoGreen : PulsarColors.warning;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Text(
        published ? 'Publié' : 'Brouillon',
        style: TextStyle(
          color: color,
          fontWeight: FontWeight.w700,
          fontSize: 10,
        ),
      ),
    );
  }
}
