import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:webtoon_mobile/models/chat_room/chat_room.model.dart';
import 'package:webtoon_mobile/providers/auth/auth_state_provider.dart';
import 'package:webtoon_mobile/providers/chat/chat_room_provider.dart';
import 'package:webtoon_mobile/providers/websocket_provider.dart';
import 'package:webtoon_mobile/widgets/CustomAppbar.dart';
import 'package:timeago/timeago.dart' as timeago;

class ChatScreen extends ConsumerStatefulWidget {
  const ChatScreen({super.key});

  @override
  ConsumerState<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends ConsumerState<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    final currentUser = ref.watch(authStateProvider).value;
    final privateRooms = ref.watch(privateRoomsProvider);

    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Chat',
      ),
      body: ListView(
        children: [
          // Public chat room
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue[100],
              child: const Icon(
                Icons.public,
                color: Colors.blue,
              ),
            ),
            title: const Text('Public Chat'),
            subtitle: const Text('Chat chung với mọi người'),
            onTap: () {
              context.push('/chat/public');
            },
          ),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              'Tin nhắn riêng',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
          ),

          // Private chat rooms
          ...privateRooms.map((room) {
            final otherUser = currentUser != null
                ? room.participants.firstWhere(
                    (user) => user.id != currentUser.id,
                  )
                : room.participants.first;

            return ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey[300],
                backgroundImage: otherUser.avatarUrl != null
                    ? NetworkImage(otherUser.avatarUrl!)
                    : null,
                child: otherUser.avatarUrl == null
                    ? const Icon(Icons.person)
                    : null,
              ),
              title: Text(otherUser.name),
              subtitle: room.lastMessage != null
                  ? RichText(
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      text: TextSpan(
                        style: DefaultTextStyle.of(context).style,
                        children: [
                          if (room.lastSender != null) ...[
                            TextSpan(
                              text: room.lastSender!.id == currentUser?.id
                                  ? 'Bạn: '
                                  : '${room.lastSender!.name}: ',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                          TextSpan(text: room.lastMessage),
                        ],
                      ),
                    )
                  : null,
              trailing: room.lastMessageAt != null
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          timeago.format(room.lastMessageAt!, locale: 'vi'),
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[600],
                          ),
                        ),
                        // TODO: Add unread message count
                      ],
                    )
                  : null,
              onTap: () {
                ref
                    .read(socketControllerProvider.notifier)
                    .openPrivateRoom(room.id);
                context.push('/chat/${room.id}');
              },
            );
          }).toList(),
        ],
      ),
    );
  }
}
