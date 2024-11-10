import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:webtoon_mobile/models/user/user.model.dart';
import 'package:webtoon_mobile/providers/dio_provider.dart';
import 'package:webtoon_mobile/services/auth_service.dart';

final secureStorageProvider = Provider<FlutterSecureStorage>((ref) {
  return const FlutterSecureStorage();
});

final authServiceProvider = Provider<AuthService>((ref) {
  final dio = ref.watch(dioProvider);
  return AuthService(dio: dio);
});

class AuthNotifier extends StateNotifier<AsyncValue<User?>> {
  final FlutterSecureStorage _secureStorage;
  final AuthService _authService;

  AuthNotifier(this._authService, this._secureStorage)
      : super(const AsyncValue.data(null));

  Future<void> signUp(Map<String, dynamic> signUpData) async {
    state = const AsyncValue.loading();
    try {
      final success = await _authService.signUp(signUpData);
      if (success) {
        state = const AsyncValue.data(null);
      }
    } catch (error, stack) {
      state = AsyncValue.error(error, stack);
    }
  }

  Future<void> verifyEmail(String email, String token) async {
    state = const AsyncValue.loading();
    try {
      final success = await _authService.verifyEmail(email, token);
      if (success) {
        state = const AsyncValue.data(null);
      } else {
        throw Exception(
            'Xác thực không thành công. Vui lòng kiểm tra mã OTP hoặc thử lại sau');
      }
    } catch (error, stack) {
      state = AsyncValue.error(error, stack);
    }
  }

  Future<void> login(String email, String password) async {
    state = const AsyncValue.loading();
    try {
      final result = await _authService.login(email, password);
      final user = result['user'] as User;

      // Lưu token
      await _secureStorage.write(
          key: 'access_token', value: result['accessToken']);
      await _secureStorage.write(
          key: 'refresh_token', value: result['refreshToken']);

      state = AsyncValue.data(user);
    } catch (error, stack) {
      state = AsyncValue.error(error, stack);
    }
  }

  void logout() {
    _secureStorage.deleteAll();
    state = const AsyncValue.data(null);
  }
}

final authProvider =
    StateNotifierProvider<AuthNotifier, AsyncValue<User?>>((ref) {
  final authService = ref.watch(authServiceProvider);
  final storage = ref.watch(secureStorageProvider);
  return AuthNotifier(authService, storage);
});
