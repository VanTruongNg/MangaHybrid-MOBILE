import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OfflineScreen extends StatelessWidget {
  const OfflineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chế độ Offline'),
        actions: [
          TextButton.icon(
            onPressed: () => context.push('/offline/library'),
            icon: const Icon(Icons.library_books),
            label: const Text('Thư viện'),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.wifi_off,
              size: 64,
              color: Colors.grey,
            ),
            const SizedBox(height: 16),
            const Text(
              'Bạn đang ở chế độ offline',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 8),
            const Text(
              'Chỉ có thể xem các nội dung đã tải',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 32),
            ElevatedButton.icon(
              onPressed: () => context.push('/offline/library'),
              icon: const Icon(Icons.library_books),
              label: const Text('Đi đến thư viện offline'),
            ),
          ],
        ),
      ),
    );
  }
}