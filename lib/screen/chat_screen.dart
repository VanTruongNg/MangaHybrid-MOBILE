import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:webtoon_mobile/models/chat_message/chat_message.model.dart';
import 'package:webtoon_mobile/providers/chat/chat_provider.dart';
import 'package:webtoon_mobile/widgets/CustomAppbar.dart';
import 'package:webtoon_mobile/utils/date_utils.dart';

class ChatScreen extends ConsumerStatefulWidget {
  const ChatScreen({super.key});

  @override
  ConsumerState<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends ConsumerState<ChatScreen> {
  final TextEditingController _messageController = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    // Load previous messages if needed
    // ref.read(chatProvider.notifier).loadPreviousMessages();
  }

  @override
  void dispose() {
    _messageController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _sendMessage() {
    final content = _messageController.text;
    if (content.trim().isEmpty) return;

    ref.read(chatProvider.notifier).sendMessage(content);
    _messageController.clear();

    // Scroll to bottom after sending
    Future.delayed(const Duration(milliseconds: 100), () {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          0,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final messages = ref.watch(chatProvider);
    final isSending = ref.watch(isMessageSendingProvider);

    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Chat',
      ),
      body: Column(
        children: [
          Expanded(
            child: messages.isEmpty
                ? const Center(
                    child: Text('Chưa có tin nhắn nào'),
                  )
                : ListView.builder(
                    controller: _scrollController,
                    reverse: true,
                    padding: const EdgeInsets.all(8),
                    itemCount: messages.length,
                    itemBuilder: (context, index) {
                      final message = messages[messages.length - 1 - index];
                      final previousMessage = index < messages.length - 1
                          ? messages[messages.length - 2 - index]
                          : null;

                      final showDateDivider = previousMessage == null ||
                          !_isSameDay(message.message.createdAt,
                              previousMessage.message.createdAt);

                      return Column(
                        children: [
                          if (showDateDivider)
                            DateDivider(date: message.message.createdAt),
                          ChatBubble(message: message),
                        ],
                      );
                    },
                  ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
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
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 8,
                        ),
                      ),
                      maxLines: null,
                      textInputAction: TextInputAction.send,
                      onSubmitted: (_) => _sendMessage(),
                    ),
                  ),
                  const SizedBox(width: 8),
                  IconButton(
                    onPressed: isSending ? null : _sendMessage,
                    icon: isSending
                        ? const SizedBox(
                            width: 24,
                            height: 24,
                            child: CircularProgressIndicator(strokeWidth: 2),
                          )
                        : const Icon(Icons.send),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  bool _isSameDay(DateTime date1, DateTime date2) {
    return date1.year == date2.year &&
        date1.month == date2.month &&
        date1.day == date2.day;
  }
}

class DateDivider extends StatelessWidget {
  final DateTime date;

  const DateDivider({required this.date, super.key});

  String _getDateText() {
    return date.toMessageDate();
  }

  @override
  Widget build(BuildContext context) {
    return Text(_getDateText());
  }
}

class ChatBubble extends ConsumerWidget {
  final ChatMessageUI message;

  const ChatBubble({
    required this.message,
    super.key,
  });

  String getInitials(String name) {
    final nameParts = name.split(' ');
    if (nameParts.isEmpty) return '';
    if (nameParts.length == 1) return nameParts[0][0].toUpperCase();
    return (nameParts.first[0] + nameParts.last[0]).toUpperCase();
  }

  String _getTimeText(DateTime date) {
    return date.toMessageTime();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isMyMessage = ref.watch(isCurrentUserMessageProvider(message));

    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisAlignment:
            isMyMessage ? MainAxisAlignment.end : MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          if (!isMyMessage) ...[
            Container(
              margin: const EdgeInsets.only(right: 8),
              child: message.message.sender.avatarUrl != null
                  ? CircleAvatar(
                      radius: 16,
                      backgroundImage: NetworkImage(
                        message.message.sender.avatarUrl!,
                      ),
                      onBackgroundImageError: (_, __) => CircleAvatar(
                        radius: 16,
                        backgroundColor: Colors.grey[300],
                        child: Text(
                          getInitials(message.message.sender.name),
                          style: const TextStyle(
                            color: Colors.black54,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  : CircleAvatar(
                      radius: 16,
                      backgroundColor: Colors.grey[300],
                      child: Text(
                        getInitials(message.message.sender.name),
                        style: const TextStyle(
                          color: Colors.black54,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
            ),
          ],
          Flexible(
            child: Column(
              crossAxisAlignment: isMyMessage
                  ? CrossAxisAlignment.end
                  : CrossAxisAlignment.start,
              children: [
                if (!isMyMessage)
                  Padding(
                    padding: const EdgeInsets.only(left: 4, bottom: 4),
                    child: Text(
                      message.message.sender.name,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                Container(
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.75,
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    color: isMyMessage ? Colors.blue : Colors.grey[200],
                    borderRadius: BorderRadius.circular(16).copyWith(
                      bottomLeft:
                          !isMyMessage ? const Radius.circular(4) : null,
                      bottomRight:
                          isMyMessage ? const Radius.circular(4) : null,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        message.message.content,
                        style: TextStyle(
                          color: isMyMessage ? Colors.white : Colors.black,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            _getTimeText(message.message.createdAt),
                            style: TextStyle(
                              fontSize: 10,
                              color:
                                  isMyMessage ? Colors.white70 : Colors.black54,
                            ),
                          ),
                          const SizedBox(width: 4),
                          if (message.isSending)
                            Icon(
                              Icons.access_time,
                              size: 12,
                              color: isMyMessage ? Colors.white70 : Colors.grey,
                            )
                          else if (message.error != null)
                            const Icon(
                              Icons.error_outline,
                              size: 12,
                              color: Colors.red,
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          if (isMyMessage) ...[
            Container(
              margin: const EdgeInsets.only(left: 8),
              child: message.message.sender.avatarUrl != null
                  ? CircleAvatar(
                      radius: 16,
                      backgroundImage: NetworkImage(
                        message.message.sender.avatarUrl!,
                      ),
                      onBackgroundImageError: (_, __) => CircleAvatar(
                        radius: 16,
                        backgroundColor: Colors.grey[300],
                        child: Text(
                          getInitials(message.message.sender.name),
                          style: const TextStyle(
                            color: Colors.black54,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  : CircleAvatar(
                      radius: 16,
                      backgroundColor: Colors.grey[300],
                      child: Text(
                        getInitials(message.message.sender.name),
                        style: const TextStyle(
                          color: Colors.black54,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
            ),
          ],
        ],
      ),
    );
  }
}
