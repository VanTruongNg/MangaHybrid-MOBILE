import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:webtoon_mobile/config/auth_interceptor.dart';
import 'package:webtoon_mobile/config/env.dart';
import 'package:webtoon_mobile/providers/auth/auth_state_provider.dart';
import 'package:webtoon_mobile/services/token_service.dart';

final secureStorageProvider = Provider<FlutterSecureStorage>((ref) {
  return const FlutterSecureStorage();
});

final tokenServiceProvider = Provider<TokenService>((ref) {
  final storage = ref.watch(secureStorageProvider);
  return TokenService(storage);
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
  final onRefreshFailed = ref.watch(authCallbackProvider);

  dio.interceptors.add(
    AuthInterceptor(
      tokenService,
      dio,
      onRefreshFailed: onRefreshFailed,
    ),
  );

  return dio;
});

final authCallbackProvider = Provider<void Function()>((ref) {
  return () {
    ref.read(authStateProvider.notifier).state = const AsyncValue.error(
      'session_expired',
      StackTrace.empty,
    );

    final tokenService = ref.read(tokenServiceProvider);
    tokenService.clearTokens();
  };
});
