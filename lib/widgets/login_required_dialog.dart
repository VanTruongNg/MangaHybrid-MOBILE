import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginRequiredDialog extends StatelessWidget {
  const LoginRequiredDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Yêu cầu đăng nhập'),
      content: const Text('Bạn cần đăng nhập để sử dụng tính năng này'),
      actions: [
        TextButton(
          onPressed: () =>
              context.pop(false),
          child: const Text('Huỷ'),
        ),
        TextButton(
          onPressed: () {
            context.pop(true);
            context.push('/login');
          },
          child: const Text('Đăng nhập'),
        ),
      ],
    );
  }
}
