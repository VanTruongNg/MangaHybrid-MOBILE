import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:webtoon_mobile/models/chat_message/chat_message.model.dart';
import 'package:webtoon_mobile/providers/auth/auth_state_provider.dart';
import 'package:webtoon_mobile/providers/chat/chat_provider.dart';
import 'package:webtoon_mobile/providers/chat/chat_room_provider.dart';
import 'package:webtoon_mobile/providers/websocket_provider.dart';
import 'package:webtoon_mobile/widgets/chat/message_bubble.dart';

class PrivateChatScreen extends ConsumerStatefulWidget {
  final String roomId;

  const PrivateChatScreen({
    super.key,
    required this.roomId,
  });

  @override
  ConsumerState<PrivateChatScreen> createState() => _PrivateChatScreenState();
}

class _PrivateChatScreenState extends ConsumerState<PrivateChatScreen> {
  final TextEditingController _messageController = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref
          .read(socketControllerProvider.notifier)
          .openPrivateRoom(widget.roomId);
      _scrollToBottom();
    });
  }

  @override
  void dispose() {
    ref.read(socketControllerProvider.notifier).leavePrivateRoom(widget.roomId);
    _messageController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollToBottom() {
    if (_scrollController.hasClients) {
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final messages = ref.watch(privateChatProvider);
    final room = ref.watch(roomByIdProvider(widget.roomId));

    // Tự động scroll xuống khi có tin nhắn mới
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollToBottom();
    });

    if (room == null) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    final otherUser = room.participants.firstWhere(
      (user) => user.id != ref.read(authStateProvider).value?.id,
      orElse: () => room.participants.first,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(otherUser.name),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              padding: const EdgeInsets.symmetric(vertical: 8),
              itemCount: messages.length,
              itemBuilder: (context, index) {
                final message = messages[index];
                final isCurrentUser = message.message.sender.id ==
                    ref.read(authStateProvider).value?.id;
                final isFirstInGroup = index == 0 ||
                    messages[index - 1].message.sender.id !=
                        message.message.sender.id;
                final isLastInGroup = index == messages.length - 1 ||
                    messages[index + 1].message.sender.id !=
                        message.message.sender.id;

                return MessageBubble(
                  message: message,
                  isCurrentUser: isCurrentUser,
                  isFirstInGroup: isFirstInGroup,
                  isLastInGroup: isLastInGroup,
                );
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
              vertical: 4,
            ),
            decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 4,
                  offset: const Offset(0, -2),
                ),
              ],
            ),
            child: SafeArea(
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _messageController,
                      decoration: const InputDecoration(
                        hintText: 'Nhập tin nhắn...',
                        border: InputBorder.none,
                      ),
                      minLines: 1,
                      maxLines: 5,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      final content = _messageController.text.trim();
                      if (content.isNotEmpty) {
                        ref
                            .read(socketControllerProvider.notifier)
                            .sendPrivateMessage(widget.roomId, content);
                        _messageController.clear();
                      }
                    },
                    icon: const Icon(Icons.send),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
