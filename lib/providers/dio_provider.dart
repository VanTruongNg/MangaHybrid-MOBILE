import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:webtoon_mobile/config/auth_interceptor.dart';
import 'package:webtoon_mobile/config/env.dart';
import 'package:webtoon_mobile/providers/auth/auth_state_provider.dart';
import 'package:webtoon_mobile/services/token_service.dart';
import 'package:webtoon_mobile/services/device_id_service.dart';

final secureStorageProvider = Provider<FlutterSecureStorage>((ref) {
  return const FlutterSecureStorage();
});

final tokenServiceProvider = Provider<TokenService>((ref) {
  final storage = ref.watch(secureStorageProvider);
  return TokenService(storage);
});

final deviceIdServiceProvider = Provider<DeviceIdService>((ref) {
  final storage = ref.watch(secureStorageProvider);
  return DeviceIdService(storage);
});

final dioProvider = Provider<Dio>((ref) {
  final dio = Dio(
    BaseOptions(
      baseUrl: Env.apiUrl,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json'
      },
      connectTimeout: const Duration(seconds: 15),
      receiveTimeout: const Duration(seconds: 15),
    ),
  );

  final tokenService = ref.watch(tokenServiceProvider);
  final deviceIdService = ref.watch(deviceIdServiceProvider);
  final onRefreshFailed = ref.watch(authCallbackProvider);

  dio.interceptors.add(
    AuthInterceptor(
      tokenService,
      dio,
      deviceIdService,
      onRefreshFailed: onRefreshFailed,
    ),
  );

  return dio;
});

final authCallbackProvider = Provider<void Function()>((ref) {
  return () {
    ref.read(authStateProvider.notifier).state = const AsyncValue.error(
      'token_expired',
      StackTrace.empty,
    );

    final tokenService = ref.read(tokenServiceProvider);
    tokenService.clearTokens();
  };
});
