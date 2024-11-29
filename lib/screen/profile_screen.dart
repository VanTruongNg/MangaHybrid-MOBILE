import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:webtoon_mobile/providers/auth/auth_provider.dart';
import 'package:webtoon_mobile/providers/auth/auth_state_provider.dart';
import 'package:webtoon_mobile/providers/connectivity_provider.dart';
import 'package:webtoon_mobile/widgets/ProfileScreen/user_profile_view.dart';
import 'package:webtoon_mobile/screen/offline/offline_screen.dart';
import 'package:webtoon_mobile/widgets/CustomAppbar.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isOnline = ref.watch(isOnlineProvider);

    if (!isOnline) {
      return const OfflineScreen();
    }

    final authState = ref.watch(authStateProvider);

    return Scaffold(
      appBar: CustomAppBar(
        title: 'Hồ sơ',
      ),
      body: authState.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) {
          if (error.toString().contains('network_error')) {
            return const SizedBox.shrink();
          }
          return Center(child: Text('Lỗi: $error'));
        },
        data: (user) {
          if (user == null) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Vui lòng đăng nhập để xem thông tin',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      context.push('/login');
                    },
                    child: const Text('Đăng nhập'),
                  ),
                ],
              ),
            );
          }
          return Column(
            children: [
              const UserProfileView(),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  ref.read(authProvider.notifier).logout();
                },
                child: const Text('Đăng xuất'),
              ),
            ],
          );
        },
      ),
    );
  }
}
