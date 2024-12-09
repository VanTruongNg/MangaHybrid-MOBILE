import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:webtoon_mobile/models/user/user.model.dart';
import 'package:webtoon_mobile/providers/auth/auth_state_provider.dart';
import 'package:webtoon_mobile/providers/dio_provider.dart';
import 'package:webtoon_mobile/providers/websocket_provider.dart';
import 'package:webtoon_mobile/services/auth_service.dart';

final authServiceProvider = Provider<AuthService>((ref) {
  final dio = ref.watch(dioProvider);
  final tokenService = ref.watch(tokenServiceProvider);
  final socketController = ref.watch(socketControllerProvider.notifier);
  return AuthService(
    dio: dio,
    tokenService: tokenService,
    socketController: socketController,
    ref: ref,
  );
});

class AuthNotifier extends StateNotifier<void> {
  final AuthService _authService;
  final AuthStateNotifier _authStateController;
  final Ref ref;

  AuthNotifier(
    this._authService,
    this._authStateController,
    this.ref,
  ) : super(const AsyncValue.data(null));

  Future<void> signUp(Map<String, dynamic> signUpData) async {
    _authStateController.state = const AsyncValue.loading();
    try {
      final success = await _authService.signUp(signUpData);
      if (success) {
        _authStateController.state = const AsyncValue.data(null);
      }
    } catch (error, stack) {
      _authStateController.state = AsyncValue.error(error, stack);
    }
  }

  Future<void> verifyEmail(String email, String token) async {
    _authStateController.state = const AsyncValue.loading();
    try {
      final success = await _authService.verifyEmail(email, token);
      if (success) {
        _authStateController.state = const AsyncValue.data(null);
      } else {
        throw Exception(
            'Xác thực không thành công. Vui lòng kiểm tra mã OTP hoặc thử lại sau');
      }
    } catch (error, stack) {
      _authStateController.state = AsyncValue.error(error, stack);
    }
  }

  Future<void> login(String email, String password) async {
    _authStateController.state = const AsyncValue.loading();
    try {
      final result = await _authService.login(email, password);
      final user = result['user'] as UserModel;
      _authStateController.state = AsyncValue.data(user);

      ref.read(socketControllerProvider.notifier).connect();
    } catch (error, stack) {
      _authStateController.state = AsyncValue.error(error, stack);
    }
  }

  Future<void> loginWithGoogle() async {
    _authStateController.state = const AsyncValue.loading();
    try {
      final result = await _authService.loginWithGoogle();
      final user = result['user'] as UserModel;
      _authStateController.state = AsyncValue.data(user);

      ref.read(socketControllerProvider.notifier).connect();
    } catch (error, stack) {
      _authStateController.state = AsyncValue.error(error, stack);
    }
  }

  Future<void> checkAuth() async {
    _authStateController.state = const AsyncValue.loading();
    try {
      final user = await _authService.checkAuth();
      _authStateController.state = AsyncValue.data(user);
    } catch (error, stack) {
      _authStateController.state = AsyncValue.error(error, stack);
      rethrow;
    }
  }

  Future<void> refreshUser() async {
    if (_authStateController.state.value == null) return;

    _authStateController.state = const AsyncValue.loading();
    try {
      final user = await _authService.refreshUser();
      _authStateController.state = AsyncValue.data(user);
    } catch (error, stack) {
      _authStateController.state = AsyncValue.error(error, stack);
    }
  }

  Future<void> logout({bool force = false}) async {
    try {
      if (!force) {
        await _authService.logout();
      }
    } catch (error) {
      force = true;
    } finally {
      ref.read(socketControllerProvider.notifier).disconnect();
      _authService.tokenService.clearTokens();
      _authStateController.state = const AsyncValue.data(null);
    }
  }
}

final authProvider = StateNotifierProvider<AuthNotifier, void>((ref) {
  final authService = ref.watch(authServiceProvider);
  final authStateController = ref.watch(authStateProvider.notifier);
  return AuthNotifier(authService, authStateController, ref);
});
