import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:webtoon_mobile/models/notification/notification.model.dart';
import 'package:webtoon_mobile/providers/websocket_provider.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

final notificationProvider =
    StateNotifierProvider<NotificationNotifier, List<NotificationModel>>((ref) {
  return NotificationNotifier(ref);
});

class NotificationNotifier extends StateNotifier<List<NotificationModel>> {
  final Ref ref;

  NotificationNotifier(this.ref) : super([]) {
    ref.listen(socketControllerProvider, (previous, next) {
      if (next?.connected == true) {
        _setupSocketListeners(next!);
      }
    });
  }

  void _setupSocketListeners(IO.Socket socket) {
    socket.on('unreadNotifications', (data) {
      final notifications = (data as List)
          .map((e) => NotificationModel.fromJson(e as Map<String, dynamic>))
          .toList();
      setNotifications(notifications);
    });

    socket.on('notification', (data) {
      final newNotification =
          NotificationModel.fromJson(data as Map<String, dynamic>);

      final exists =
          state.any((notification) => notification.id == newNotification.id);
      if (!exists) {
        addNotification(newNotification);
      }
    });
  }

  void addNotification(NotificationModel notification) {
    state = [notification, ...state];
  }

  void setNotifications(List<NotificationModel> notifications) {
    state = notifications;
  }

  void clearNotifications() {
    state = [];
  }

  void markAsRead(String notificationId) {
    state = [
      for (final notification in state)
        if (notification.id == notificationId)
          notification.copyWith(isRead: true)
        else
          notification,
    ];
  }
}
