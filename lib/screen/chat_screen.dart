import 'package:flutter/material.dart';
import 'package:webtoon_mobile/widgets/CustomAppbar.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: 'Chat',
      ),
      body: Center(
        child: Text('Chat Screen'),
      ),
    );
  }
}
