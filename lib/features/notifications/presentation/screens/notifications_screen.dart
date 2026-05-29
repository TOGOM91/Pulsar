import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/widgets/micro_interactions.dart';
import '../../domain/notification_model.dart';
import '../providers/notifications_provider.dart';

class NotificationsScreen extends ConsumerWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final notifications = ref.watch(notificationsProvider);
    final unread = notifications.where((n) => !n.isRead).length;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: () => context.pop(),
        ),
        title: Row(
          children: [
            const Text('🔔', style: TextStyle(fontSize: 22)),
            const SizedBox(width: 8),
            Text('NOTIFICATIONS',
                style: PulsarTheme.display(28,
                    color: theme.colorScheme.onSurface)),
          ],
        ),
        actions: [
          if (unread > 0)
            TextButton.icon(
              onPressed: () =>
                  ref.read(notificationsProvider.notifier).markAllAsRead(),
              icon: const Icon(Icons.done_all_rounded, size: 18),
              label: const Text('Tout lire'),
            ),
          const SizedBox(width: 8),
        ],
      ),
      body: notifications.isEmpty
          ? _EmptyState()
          : ListView.builder(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 32),
              itemCount: notifications.length,
              itemBuilder: (context, i) {
                final n = notifications[i];
                return _NotificationCard(notification: n, index: i)
                    .animate()
                    .fadeIn(
                      delay: Duration(milliseconds: 60 * i),
                      duration: 350.ms,
                    )
                    .slideY(begin: 0.05, duration: 350.ms);
              },
            ),
    );
  }
}

class _NotificationCard extends ConsumerWidget {
  final AppNotification notification;
  final int index;

  const _NotificationCard({required this.notification, required this.index});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final n = notification;

    final accent = _categoryColor(n.category);

    return BounceTap(
      onTap: () {
        ref.read(notificationsProvider.notifier).markAsRead(n.id);
        if (n.actionRoute != null) {
          context.push(n.actionRoute!);
        }
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: isDark ? PulsarColors.cardDark : PulsarColors.cardLight,
          borderRadius: BorderRadius.circular(PulsarTokens.radiusLg),
          border: Border.all(
            color: n.isRead
                ? theme.colorScheme.outline.withValues(alpha: 0.3)
                : accent.withValues(alpha: 0.4),
            width: n.isRead ? 1 : 1.5,
          ),
          boxShadow: n.isRead ? null : PulsarColors.shadowSm(isDark),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Unread indicator
            Container(
              width: 8,
              height: 8,
              margin: const EdgeInsets.only(top: 8, right: 12),
              decoration: BoxDecoration(
                color: n.isRead ? Colors.transparent : accent,
                shape: BoxShape.circle,
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          n.title,
                          style: theme.textTheme.titleMedium?.copyWith(
                            fontWeight: n.isRead
                                ? FontWeight.w500
                                : FontWeight.w700,
                          ),
                        ),
                      ),
                      Text(
                        _formatTime(n.time),
                        style: theme.textTheme.bodySmall?.copyWith(
                          fontSize: 11,
                          color: theme.colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Text(
                    n.body,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: n.isRead
                          ? theme.colorScheme.onSurfaceVariant
                          : theme.colorScheme.onSurface
                              .withValues(alpha: 0.8),
                    ),
                  ),
                  if (n.actionRoute != null) ...[
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 4),
                          decoration: BoxDecoration(
                            color: accent.withValues(alpha: 0.12),
                            borderRadius:
                                BorderRadius.circular(PulsarTokens.radiusFull),
                          ),
                          child: Text(
                            'Voir détails →',
                            style: TextStyle(
                              color: accent,
                              fontWeight: FontWeight.w700,
                              fontSize: 11,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Color _categoryColor(NotificationCategory c) {
    switch (c) {
      case NotificationCategory.event:
        return PulsarColors.primary;
      case NotificationCategory.transport:
        return PulsarColors.accent;
      case NotificationCategory.eco:
        return PulsarColors.ecoGreen;
      case NotificationCategory.social:
        return PulsarColors.secondary;
      case NotificationCategory.system:
        return PulsarColors.info;
    }
  }

  static String _formatTime(DateTime t) {
    final diff = DateTime.now().difference(t);
    if (diff.inMinutes < 1) return "à l'instant";
    if (diff.inMinutes < 60) return '${diff.inMinutes} min';
    if (diff.inHours < 24) return '${diff.inHours}h';
    if (diff.inDays < 7) return '${diff.inDays}j';
    return '${(diff.inDays / 7).floor()}sem';
  }
}

class _EmptyState extends StatelessWidget {
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
              Icons.notifications_none_rounded,
              size: 56,
              color: PulsarColors.primary.withValues(alpha: 0.5),
            ),
          ),
          const SizedBox(height: 20),
          Text('Tout est calme', style: theme.textTheme.headlineSmall),
          const SizedBox(height: 8),
          Text(
            'Tu seras notifié des nouveaux\névénements et offres ici',
            style: theme.textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
