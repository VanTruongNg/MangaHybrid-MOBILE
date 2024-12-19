import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:webtoon_mobile/models/chat_message/chat_message.model.dart'
    show ChatUser;
import 'package:webtoon_mobile/models/chat_room/chat_room.model.dart'
    as chat_room;

final chatRoomProvider =
    StateNotifierProvider<ChatRoomNotifier, List<chat_room.ChatRoom>>((ref) {
  return ChatRoomNotifier();
});

final roomByIdProvider =
    Provider.family<chat_room.ChatRoom?, String>((ref, roomId) {
  final rooms = ref.watch(chatRoomProvider);
  try {
    return rooms.firstWhere((room) => room.id == roomId);
  } catch (_) {
    return null;
  }
});

class ChatRoomNotifier extends StateNotifier<List<chat_room.ChatRoom>> {
  ChatRoomNotifier() : super([]);

  void setRooms(List<chat_room.ChatRoom> rooms) {
    state = rooms;
  }

  void updateLatestMessage(
    String roomId,
    String content,
    ChatUser sender,
    DateTime lastMessageAt,
  ) {
    state = [
      for (final room in state)
        if (room.id == roomId)
          room.copyWith(
            lastMessage: content,
            lastMessageAt: lastMessageAt,
            lastSender: sender,
          )
        else
          room,
    ];
  }

  void updateRoomData(chat_room.ChatRoom updatedRoom) {
    final index = state.indexWhere((room) => room.id == updatedRoom.id);
    if (index != -1) {
      state = [...state]..setAll(index, [updatedRoom]);
    }
  }

  void clearRooms() {
    state = [];
  }

  void addRoom(chat_room.ChatRoom room) {
    final exists = state.any((r) => r.id == room.id);
    if (!exists) {
      state = [...state, room];
    }
  }

  void removeRoom(String roomId) {
    state = state.where((r) => r.id != roomId).toList();
  }

  @override
  void dispose() {
    clearRooms();
    super.dispose();
  }
}

final privateRoomsProvider = Provider<List<chat_room.ChatRoom>>((ref) {
  final rooms = ref.watch(chatRoomProvider);
  return rooms.where((room) => room.type == 'private').toList();
});

final publicRoomsProvider = Provider<List<chat_room.ChatRoom>>((ref) {
  final rooms = ref.watch(chatRoomProvider);
  return rooms.where((room) => room.type == 'public').toList();
});

final userRoomsProvider =
    Provider.family<List<chat_room.ChatRoom>, String>((ref, userId) {
  final rooms = ref.watch(chatRoomProvider);
  return rooms.where((room) => room.participants.contains(userId)).toList();
});

final activeRoomsProvider = Provider<List<chat_room.ChatRoom>>((ref) {
  final rooms = ref.watch(chatRoomProvider);
  return rooms.where((room) => room.isActive).toList();
});
