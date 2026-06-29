import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/notification_model.dart';

/// In-memory notifications (mocked). Per-session, no persistence yet.
class NotificationsNotifier extends StateNotifier<List<AppNotification>> {
  NotificationsNotifier() : super(_seed());

  static List<AppNotification> _seed() {
    final now = DateTime.now();
    return [
      AppNotification(
        id: 'n1',
        category: NotificationCategory.event,
        title: '🎫 Hellfest 2026 — billets ouverts',
        body: 'Réserve dès maintenant ton pack 3 jours avec transport bas carbone inclus.',
        time: now.subtract(const Duration(minutes: 12)),
        actionRoute: '/event/hellfest-2026',
      ),
      AppNotification(
        id: 'n2',
        category: NotificationCategory.eco,
        title: '🌍 Tu as économisé 42 kg de CO₂ ce mois-ci',
        body: 'Bravo ! Tu fais partie du top 20% des utilisateurs Pulsar.',
        time: now.subtract(const Duration(hours: 3)),
        actionRoute: '/eco-score',
      ),
      AppNotification(
        id: 'n3',
        category: NotificationCategory.transport,
        title: '🚄 TGV pour Avignon — promo -25%',
        body: 'Code FESTIVAL26 valable jusqu\'à dimanche.',
        time: now.subtract(const Duration(hours: 8)),
      ),
      AppNotification(
        id: 'n4',
        category: NotificationCategory.social,
        title: '👥 3 amis vont au Festival d\'Avignon',
        body: 'Léa, Marc et Sofia. Rejoins le carpool ?',
        time: now.subtract(const Duration(days: 1, hours: 2)),
        isRead: true,
      ),
      AppNotification(
        id: 'n5',
        category: NotificationCategory.event,
        title: '🎉 Solidays — early bird dispo',
        body: 'Pass 3 jours à 159€ jusqu\'au 30 mai.',
        time: now.subtract(const Duration(days: 2)),
        actionRoute: '/event/solidays-2026',
        isRead: true,
      ),
      AppNotification(
        id: 'n6',
        category: NotificationCategory.system,
        title: '✨ Nouveau dans Pulsar',
        body: 'Compare hôtels, B&B et hébergement chez l\'habitant directement depuis l\'app.',
        time: now.subtract(const Duration(days: 4)),
        isRead: true,
      ),
    ];
  }

  /// Inject an extra notification at the top of the list. Used when the
  /// admin broadcast composer fires — so the receiver sees it instantly
  /// without needing FCM/native push.
  void pushLocal(AppNotification n) {
    state = [n, ...state];
  }

  void markAsRead(String id) {
    state = [
      for (final n in state)
        if (n.id == id) n.copyWith(isRead: true) else n,
    ];
  }

  void markAllAsRead() {
    state = [for (final n in state) n.copyWith(isRead: true)];
  }

  int get unreadCount => state.where((n) => !n.isRead).length;
}

final notificationsProvider =
    StateNotifierProvider<NotificationsNotifier, List<AppNotification>>(
        (ref) => NotificationsNotifier());

final unreadCountProvider = Provider<int>((ref) {
  return ref.watch(notificationsProvider).where((n) => !n.isRead).length;
});
