import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:webtoon_mobile/providers/auth/auth_provider.dart';
import 'package:webtoon_mobile/providers/auth/auth_state_provider.dart';
import 'package:webtoon_mobile/providers/connectivity_provider.dart';
import 'package:webtoon_mobile/widgets/ProfileScreen/user_profile_view.dart';
import 'package:webtoon_mobile/screen/offline/offline_screen.dart';
import 'package:webtoon_mobile/widgets/CustomAppbar.dart';

class ProfileScreen extends ConsumerStatefulWidget {
  const ProfileScreen({super.key});

  @override
  ConsumerState<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends ConsumerState<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final isOnline = ref.watch(isOnlineProvider);

    if (!isOnline) {
      return const OfflineScreen();
    }

    final authState = ref.watch(authStateProvider);

    return Scaffold(
      appBar: CustomAppBar(
        title: 'Hồ sơ',
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () => ref.read(authProvider.notifier).logout(),
          ),
        ],
      ),
      body: SafeArea(
        child: authState.when(
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
          error: (error, stack) {
            if (error.toString().contains('token_expired') ||
                error.toString().contains('401')) {
              return _buildLoginPrompt(context);
            }

            return Center(
              child: Text('Lỗi: $error'),
            );
          },
          data: (user) {
            if (user == null) {
              return _buildLoginPrompt(context);
            }
            return const UserProfileView();
          },
        ),
      ),
    );
  }

  Widget _buildLoginPrompt(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Vui lòng đăng nhập để xem thông tin',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () => context.push('/login'),
              child: const Text('Đăng nhập'),
            ),
          ],
        ),
      ),
    );
  }
}
