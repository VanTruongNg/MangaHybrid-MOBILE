import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:webtoon_mobile/models/chat_message/chat_message.model.dart';
import 'package:webtoon_mobile/models/chat_message/chat_response.model.dart';
import 'package:webtoon_mobile/providers/auth/auth_state_provider.dart';
import 'package:webtoon_mobile/providers/websocket_provider.dart';

final chatProvider =
    StateNotifierProvider<ChatNotifier, List<ChatMessageUI>>((ref) {
  return ChatNotifier(ref);
});

final privateChatProvider =
    StateNotifierProvider<PrivateChatNotifier, List<PrivateChatMessageUI>>(
        (ref) {
  return PrivateChatNotifier(ref);
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
            msg.message.createdAt
                    .difference(message.message.createdAt)
                    .inSeconds
                    .abs() <
                1));

    if (!exists) {
      state = [...state, message];
    }
  }

  void handleMessageAck(MessageAckResponse response) {
    state = [
      ...state.where((msg) => msg.tempId != response.tempId),
      ChatMessageUI(
        message: response.message,
        isSending: false,
      ),
    ];
  }

  void handleMessageError(MessageErrorResponse error) {
    state = [
      for (final msg in state)
        if (msg.tempId == error.tempId)
          msg.copyWith(error: error.error, isSending: false)
        else
          msg
    ];
  }

  void removeMessage(String tempId) {
    state = state.where((msg) => msg.tempId != tempId).toList();
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
      isSending: false,
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

class PrivateChatNotifier extends StateNotifier<List<PrivateChatMessageUI>> {
  final Ref ref;

  PrivateChatNotifier(this.ref) : super([]);

  void setPreviousMessages(List<PrivateChatMessage> messages) {
    state = messages.map((msg) => PrivateChatMessageUI(message: msg)).toList();
  }

  void addMessage(PrivateChatMessageUI message) {
    final exists = state.any((msg) =>
        msg.message.id == message.message.id ||
        (msg.tempId != null && msg.tempId == message.tempId) ||
        (msg.message.content == message.message.content &&
            msg.message.sender.id == message.message.sender.id &&
            msg.message.createdAt
                    .difference(message.message.createdAt)
                    .inSeconds
                    .abs() <
                1));

    if (!exists) {
      state = [...state, message.copyWith(isSending: false)];
    }
  }

  void setMessages(List<PrivateChatMessageUI> messages) {
    state = messages.map((msg) => msg.copyWith(isSending: false)).toList();
  }

  void updateMessage(String tempId, PrivateChatMessage message) {
    final existingMessageIndex = state.indexWhere(
      (msg) => msg.message.id == message.id && msg.tempId == null,
    );

    if (existingMessageIndex != -1) {
      state = state.where((msg) => msg.tempId != tempId).toList();
    } else {
      state = [
        ...state.where((msg) => msg.tempId != tempId),
        PrivateChatMessageUI(
          message: message,
          tempId: null,
          isSending: false,
        ),
      ];
    }
  }

  void removeMessage(String tempId) {
    state = state.where((msg) => msg.tempId != tempId).toList();
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
