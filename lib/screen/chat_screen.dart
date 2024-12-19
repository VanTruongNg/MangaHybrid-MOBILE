import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:webtoon_mobile/widgets/CustomAppbar.dart';

class ChatScreen extends ConsumerStatefulWidget {
  const ChatScreen({super.key});

  @override
  ConsumerState<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends ConsumerState<ChatScreen> {
  @override
  Widget build(BuildContext context) {
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

          // Private chat rooms (placeholder)
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://example.com/avatar1.jpg'),
              onBackgroundImageError: (_, __) => Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.person),
              ),
            ),
            title: const Text('Người dùng 1'),
            subtitle: const Text('Tin nhắn cuối cùng...'),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '12:30',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[600],
                  ),
                ),
                const SizedBox(height: 4),
                Container(
                  padding: const EdgeInsets.all(6),
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  child: const Text(
                    '2',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
            onTap: () {
              // TODO: Navigate to private chat room
            },
          ),

          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://example.com/avatar2.jpg'),
              onBackgroundImageError: (_, __) => Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.person),
              ),
            ),
            title: const Text('Người dùng 2'),
            subtitle: const Text('Tin nhắn cuối cùng...'),
            trailing: Text(
              'Hôm qua',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey[600],
              ),
            ),
            onTap: () {
              // TODO: Navigate to private chat room
            },
          ),
        ],
      ),
    );
  }
}
