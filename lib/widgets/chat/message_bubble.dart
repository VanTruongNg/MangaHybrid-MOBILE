import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:webtoon_mobile/models/chat_message/chat_message.model.dart';

class MessageBubble extends StatelessWidget {
  final PrivateChatMessageUI message;
  final bool isCurrentUser;
  final bool isFirstInGroup;
  final bool isLastInGroup;

  const MessageBubble({
    super.key,
    required this.message,
    required this.isCurrentUser,
    required this.isFirstInGroup,
    required this.isLastInGroup,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Padding(
      padding: const EdgeInsets.only(
        bottom: 12,
        left: 8,
        right: 8,
      ),
      child: Column(
        crossAxisAlignment:
            isCurrentUser ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          if (isFirstInGroup)
            Padding(
              padding: EdgeInsets.only(
                left: !isCurrentUser ? 48 : 0,
                right: isCurrentUser ? 48 : 0,
                bottom: 4,
              ),
              child: Text(
                message.message.sender.name,
                style: TextStyle(
                  fontSize: 12,
                  color: isDark ? Colors.grey[300] : Colors.grey[600],
                ),
              ),
            ),
          Row(
            mainAxisAlignment:
                isCurrentUser ? MainAxisAlignment.end : MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              if (!isCurrentUser && isFirstInGroup) ...[
                CircleAvatar(
                  radius: 16,
                  backgroundImage: message.message.sender.avatarUrl != null
                      ? NetworkImage(message.message.sender.avatarUrl!)
                      : null,
                  child: message.message.sender.avatarUrl == null
                      ? const Icon(Icons.person, size: 16)
                      : null,
                ),
                const SizedBox(width: 8),
              ] else if (!isCurrentUser) ...[
                const SizedBox(width: 48),
              ],
              Flexible(
                child: Container(
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.7,
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    color: isCurrentUser
                        ? Theme.of(context).primaryColor
                        : (isDark ? Colors.grey[800] : Colors.grey[300]),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(
                          isFirstInGroup || isCurrentUser ? 20 : 5),
                      topRight: Radius.circular(
                          isFirstInGroup || !isCurrentUser ? 20 : 5),
                      bottomLeft: Radius.circular(isLastInGroup ? 20 : 5),
                      bottomRight: Radius.circular(isLastInGroup ? 20 : 5),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 5,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: isCurrentUser
                        ? CrossAxisAlignment.end
                        : CrossAxisAlignment.start,
                    children: [
                      Text(
                        message.message.content,
                        style: TextStyle(
                          color: isCurrentUser || isDark
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                      if (isLastInGroup)
                        Padding(
                          padding: const EdgeInsets.only(top: 4),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                DateFormat('HH:mm')
                                    .format(message.message.createdAt),
                                style: TextStyle(
                                  fontSize: 10,
                                  color: isCurrentUser || isDark
                                      ? Colors.white.withOpacity(0.7)
                                      : Colors.black54,
                                ),
                              ),
                              if (message.isSending) ...[
                                const SizedBox(width: 4),
                                SizedBox(
                                  width: 12,
                                  height: 12,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 2,
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      isCurrentUser || isDark
                                          ? Colors.white
                                          : Colors.grey,
                                    ),
                                  ),
                                ),
                              ],
                            ],
                          ),
                        ),
                    ],
                  ),
                ),
              ),
              if (isCurrentUser && isFirstInGroup) ...[
                const SizedBox(width: 8),
                CircleAvatar(
                  radius: 16,
                  backgroundImage: message.message.sender.avatarUrl != null
                      ? NetworkImage(message.message.sender.avatarUrl!)
                      : null,
                  child: message.message.sender.avatarUrl == null
                      ? const Icon(Icons.person, size: 16)
                      : null,
                ),
              ] else if (isCurrentUser) ...[
                const SizedBox(width: 48),
              ],
            ],
          ),
        ],
      ),
    );
  }
} 