import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:webtoon_mobile/models/user/user.model.dart';
import 'package:webtoon_mobile/providers/auth/auth_provider.dart';
import 'package:webtoon_mobile/providers/websocket_provider.dart';

class AuthStateNotifier extends StateNotifier<AsyncValue<UserModel?>> {
  final Ref ref;
  bool _shouldReconnectSocket = false;

  AuthStateNotifier(this.ref) : super(const AsyncValue.data(null));

  Future<void> refreshUser({bool shouldReconnectSocket = false}) async {
    if (state.value == null) return;

    try {
      final user = await ref.read(authServiceProvider).refreshUser();

      if (_hasUserDataChanged(state.value!, user)) {
        state = AsyncValue.data(user);

        if (shouldReconnectSocket) {
          ref.read(socketControllerProvider.notifier).connect();
        }
      }
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
    }
  }

  bool _hasUserDataChanged(UserModel oldUser, UserModel newUser) {
    return oldUser.favoritesManga.length != newUser.favoritesManga.length ||
        oldUser.followingManga.length != newUser.followingManga.length ||
        oldUser.email != newUser.email ||
        oldUser.name != newUser.name;
  }

  void setUser(UserModel user) {
    state = AsyncValue.data(user);
  }

  void clearUser() {
    state = const AsyncValue.data(null);
  }
}

final authStateProvider =
    StateNotifierProvider<AuthStateNotifier, AsyncValue<UserModel?>>((ref) {
  return AuthStateNotifier(ref);
});
