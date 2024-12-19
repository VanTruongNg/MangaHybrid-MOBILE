import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:webtoon_mobile/models/chat_message/chat_message.model.dart';
import 'package:webtoon_mobile/models/chat_room/chat_room.model.dart' as room;
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
    // Khi vào màn hình, gọi openPrivateRoom để lấy tin nhắn
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref
          .read(socketControllerProvider.notifier)
          .openPrivateRoom(widget.roomId);
    });
  }

  @override
  void dispose() {
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

  void _handleSendMessage() {
    final content = _messageController.text.trim();
    if (content.isEmpty) return;

    final tempId = ref
        .read(socketControllerProvider.notifier)
        .sendPrivateMessage(widget.roomId, content);

    if (tempId != null) {
      final currentUser = ref.read(authStateProvider).value;
      if (currentUser == null) return;

      final room = ref.read(roomByIdProvider(widget.roomId));
      if (room == null) return;

      final currentChatUser = ChatUser(
        id: currentUser.id,
        name: currentUser.name,
        avatarUrl: currentUser.avatarUrl,
      );

      final tempMessage = PrivateChatMessageUI(
        message: PrivateChatMessage(
          id: tempId,
          roomId: room.id,
          sender: currentChatUser,
          content: content,
          readBy: [currentUser.id],
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
          version: 0,
        ),
        tempId: tempId,
        isSending: true,
      );

      ref.read(privateChatProvider.notifier).addMessage(tempMessage);
      _messageController.clear();
      _scrollToBottom();
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentUser = ref.watch(authStateProvider).value;
    final room = ref.watch(roomByIdProvider(widget.roomId));
    final messages = ref.watch(privateChatProvider);

    if (room == null || currentUser == null) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    final otherUser = room.participants.firstWhere(
      (user) => user.id != currentUser.id,
      orElse: () => room.participants.first,
    );

    // Sắp xếp tin nhắn theo thời gian, tin mới nhất ở dưới
    final sortedMessages = [...messages]..sort(
        (a, b) => a.message.createdAt.compareTo(b.message.createdAt),
      );

    // Nhóm tin nhắn theo ngày
    final groupedMessages = <String, List<PrivateChatMessageUI>>{};
    for (final message in sortedMessages) {
      final date = DateFormat('dd/MM/yyyy').format(message.message.createdAt);
      groupedMessages.putIfAbsent(date, () => []);
      groupedMessages[date]!.add(message);
    }

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: Row(
          children: [
            CircleAvatar(
              radius: 16,
              backgroundImage: otherUser.avatarUrl != null
                  ? NetworkImage(otherUser.avatarUrl!)
                  : null,
              child: otherUser.avatarUrl == null
                  ? const Icon(Icons.person, size: 16)
                  : null,
            ),
            const SizedBox(width: 8),
            Text(otherUser.name),
          ],
        ),
      ),
      body: Column(
        children: [
          // Messages list
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              itemCount: groupedMessages.length,
              itemBuilder: (context, index) {
                final date = groupedMessages.keys.elementAt(index);
                final messagesForDate = groupedMessages[date]!;

                return Column(
                  children: [
                    // Date header
                    Center(
                      child: Container(
                        margin: const EdgeInsets.symmetric(vertical: 8),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          date ==
                                  DateFormat('dd/MM/yyyy')
                                      .format(DateTime.now())
                              ? 'Hôm nay'
                              : date,
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[600],
                          ),
                        ),
                      ),
                    ),

                    // Messages for this date
                    ...messagesForDate.map((message) {
                      final isCurrentUser =
                          message.message.sender.id == currentUser.id;
                      final isFirstInGroup = messagesForDate.indexOf(message) ==
                              0 ||
                          messagesForDate[messagesForDate.indexOf(message) - 1]
                                  .message
                                  .sender
                                  .id !=
                              message.message.sender.id;
                      final isLastInGroup = messagesForDate.indexOf(message) ==
                              messagesForDate.length - 1 ||
                          messagesForDate[messagesForDate.indexOf(message) + 1]
                                  .message
                                  .sender
                                  .id !=
                              message.message.sender.id;

                      return MessageBubble(
                        message: message,
                        isCurrentUser: isCurrentUser,
                        isFirstInGroup: isFirstInGroup,
                        isLastInGroup: isLastInGroup,
                      );
                    }).toList(),
                  ],
                );
              },
            ),
          ),

          // Message input
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 3,
                  offset: const Offset(0, -1),
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
                      maxLines: null,
                      textInputAction: TextInputAction.send,
                      onSubmitted: (_) => _handleSendMessage(),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.send),
                    onPressed: _handleSendMessage,
                    color: Theme.of(context).primaryColor,
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
