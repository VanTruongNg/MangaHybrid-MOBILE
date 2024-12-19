import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:webtoon_mobile/models/chat_message/chat_message.model.dart';
import 'package:webtoon_mobile/models/chat_message/chat_response.model.dart';
import 'package:webtoon_mobile/providers/auth/auth_state_provider.dart';
import 'package:webtoon_mobile/providers/websocket_provider.dart';

final chatProvider =
    StateNotifierProvider<ChatNotifier, List<ChatMessageUI>>((ref) {
  return ChatNotifier(ref);
});

class ChatNotifier extends StateNotifier<List<ChatMessageUI>> {
  final Ref ref;

  ChatNotifier(this.ref) : super([]);

  void setPreviousMessages(List<ChatMessage> messages) {
    state = messages.map((msg) => ChatMessageUI(message: msg)).toList();
  }

  void addMessage(ChatMessageUI message) {
    final exists = state.any((msg) => 
      msg.message.id == message.message.id ||
      (msg.tempId != null && msg.tempId == message.tempId) ||
      (msg.message.content == message.message.content &&
       msg.message.sender.id == message.message.sender.id &&
       msg.message.createdAt.difference(message.message.createdAt).inSeconds.abs() < 1)
    );

    if (!exists) {
      state = [...state, message];
    }
  }

  void handleMessageAck(MessageAckResponse response) {
    final index = state.indexWhere((msg) => msg.tempId == response.tempId);
    if (index != -1) {
      final existingMessageIndex = state.indexWhere(
        (msg) => msg.message.id == response.message.id && msg.tempId == null
      );
      
      if (existingMessageIndex == -1) {
        final newState = [...state];
        newState[index] = ChatMessageUI(message: response.message);
        state = newState;
      } else {
        state = state.where((msg) => msg.tempId != response.tempId).toList();
      }
    }
  }

  void handleMessageError(MessageErrorResponse error) {
    state = [
      for (final msg in state)
        if (msg.tempId == error.tempId)
          msg.copyWith(error: error.error)
        else
          msg
    ];
  }

  void sendMessage(String content) {
    if (content.trim().isEmpty) return;

    final authState = ref.read(authStateProvider);
    final currentUser = authState.value;
    if (currentUser == null) return;

    final tempId =
        ref.read(socketControllerProvider.notifier).sendChatMessage(content);
    if (tempId == null) return;

    final tempMessage = ChatMessageUI(
      message: ChatMessage(
        id: tempId,
        room: ChatRoom(
          id: 'public',
          type: 'public',
          participants: [currentUser.id],
          isActive: true,
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
          version: 0,
        ),
        sender: ChatUser(
          id: currentUser.id,
          name: currentUser.name,
          avatarUrl: currentUser.avatarUrl,
        ),
        content: content,
        readBy: [
          ChatUser(
            id: currentUser.id,
            name: currentUser.name,
            avatarUrl: currentUser.avatarUrl,
          )
        ],
        createdAt: DateTime.now(),
      ),
      tempId: tempId,
      isSending: true,
    );

    state = [...state, tempMessage];
  }

  void clearMessages() {
    state = [];
  }

  @override
  void dispose() {
    clearMessages();
    super.dispose();
  }
}

final isMessageSendingProvider = Provider<bool>((ref) {
  final messages = ref.watch(chatProvider);
  return messages.any((msg) => msg.isSending);
});

final messageCountProvider = Provider<int>((ref) {
  return ref.watch(chatProvider).length;
});

final userMessagesProvider =
    Provider.family<List<ChatMessageUI>, String>((ref, userId) {
  final messages = ref.watch(chatProvider);
  return messages.where((msg) => msg.message.sender.id == userId).toList();
});

final isCurrentUserMessageProvider =
    Provider.family<bool, ChatMessageUI>((ref, message) {
  final authState = ref.watch(authStateProvider);
  final currentUser = authState.value;
  if (currentUser == null) return false;

  return message.message.sender.id == currentUser.id;
});
