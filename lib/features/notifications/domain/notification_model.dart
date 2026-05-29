enum NotificationCategory { event, transport, social, system, eco }

class AppNotification {
  final String id;
  final NotificationCategory category;
  final String title;
  final String body;
  final DateTime time;
  final bool isRead;
  final String? actionRoute;
  final String? imageUrl;

  const AppNotification({
    required this.id,
    required this.category,
    required this.title,
    required this.body,
    required this.time,
    this.isRead = false,
    this.actionRoute,
    this.imageUrl,
  });

  AppNotification copyWith({bool? isRead}) => AppNotification(
        id: id,
        category: category,
        title: title,
        body: body,
        time: time,
        isRead: isRead ?? this.isRead,
        actionRoute: actionRoute,
        imageUrl: imageUrl,
      );
}
