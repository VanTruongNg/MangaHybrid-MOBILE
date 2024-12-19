import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../dio_provider.dart';
import '../auth/auth_state_provider.dart';
import '../../services/follow_service.dart';
import './public_profile_provider.dart';

final followServiceProvider = Provider<FollowService>((ref) {
  return FollowService(ref.watch(dioProvider));
});

class FollowNotifier extends StateNotifier<AsyncValue<bool>> {
  final FollowService _followService;
  final String userId;
  final Ref ref;

  FollowNotifier(this._followService, this.userId, this.ref)
      : super(const AsyncValue.loading()) {
    checkFollowStatus();
  }

  void checkFollowStatus() {
    final authState = ref.read(authStateProvider);
    authState.whenData((user) {
      if (user == null) {
        state = const AsyncValue.data(false);
        return;
      }

      final isFollowing =
          user.following.any((following) => following.id == userId);
      state = AsyncValue.data(isFollowing);
    });
  }

  Future<void> toggleFollow() async {
    try {
      final currentState = state.value ?? false;

      if (currentState) {
        await _followService.unfollowUser(userId);
      } else {
        await _followService.followUser(userId);
      }

      state = AsyncValue.data(!currentState);

      // Lấy lại thông tin user hiện tại
      ref.read(authStateProvider.notifier).refreshUser();

      // Refresh public profile để cập nhật số lượng followers
      ref.refresh(publicProfileProvider(userId));
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }
}

final followProvider =
    StateNotifierProvider.family<FollowNotifier, AsyncValue<bool>, String>(
  (ref, userId) => FollowNotifier(
    ref.watch(followServiceProvider),
    userId,
    ref,
  ),
);
