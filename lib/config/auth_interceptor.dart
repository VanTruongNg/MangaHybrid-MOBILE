import 'dart:collection';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:webtoon_mobile/services/token_service.dart';
import 'package:webtoon_mobile/services/device_id_service.dart';

class AuthInterceptor extends Interceptor {
  final TokenService _tokenService;
  final DeviceIdService _deviceIdService;
  final Dio _dio;
  bool _isRefreshing = false;
  final VoidCallback? onRefreshFailed;
  final Queue<_RetryRequest> _queue = Queue();
  String? _cachedDeviceId;

  AuthInterceptor(this._tokenService, this._dio, this._deviceIdService,
      {this.onRefreshFailed}) {
    _initDeviceId();
  }

  Future<void> _initDeviceId() async {
    _cachedDeviceId = await _deviceIdService.getOrCreateDeviceId();
  }

  void resetCachedDeviceId() {
    _cachedDeviceId = null;
  }

  static const _authEndpoints = [
    'auth/login',
    'auth/google',
    'auth/logout',
    'auth/refresh-token',
  ];

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final isAuthEndpoint = _authEndpoints.any(
      (endpoint) => options.path.contains(endpoint)
    );

    if (isAuthEndpoint) {
      if (options.path.contains('auth/login') || options.path.contains('auth/google')) {
        _cachedDeviceId = await _deviceIdService.getOrCreateDeviceId();
        options.headers['device-id'] = _cachedDeviceId;
      } 
      else if (_cachedDeviceId != null) {
        options.headers['device-id'] = _cachedDeviceId;
      }
    }

    final token = await _tokenService.getAccessToken();
    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    return handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401) {
      final retryRequest = _RetryRequest(
        options: err.requestOptions,
        handler: handler,
      );
      _queue.add(retryRequest);

      if (_isRefreshing) return;
      _isRefreshing = true;

      try {
        final newTokens = await _refreshToken();
        if (newTokens != null) {
          await _tokenService.saveTokens(
            accessToken: newTokens['accessToken']!,
            refreshToken: newTokens['refreshToken']!,
          );

          while (_queue.isNotEmpty) {
            final request = _queue.removeFirst();
            await _retryRequest(request, newTokens['accessToken']!);
          }
        } else {
          _onRefreshFailed();
        }
      } catch (e) {
        _onRefreshFailed();
      } finally {
        _isRefreshing = false;
        _queue.clear();
      }
    } else {
      handler.next(err);
    }
  }

  Future<void> _retryRequest(_RetryRequest request, String newToken) async {
    final options = request.options;
    options.headers['Authorization'] = 'Bearer $newToken';

    try {
      final response = await _dio.fetch(options);
      request.handler.resolve(response);
    } catch (e) {
      request.handler.reject(e as DioException);
    }
  }

  void _onRefreshFailed() {
    onRefreshFailed?.call();

    while (_queue.isNotEmpty) {
      final request = _queue.removeFirst();
      request.handler.reject(
        DioException(
          requestOptions: request.options,
          error: 'token_expired',
          type: DioExceptionType.badResponse,
          response: Response(
            statusCode: 401,
            requestOptions: request.options,
            statusMessage: 'Token expired',
          ),
        ),
      );
    }
  }

  Future<Map<String, String>?> _refreshToken() async {
    try {
      final refreshToken = await _tokenService.getRefreshToken();
      if (refreshToken == null) {
        _onRefreshFailed();
        return null;
      }

      final tokenDio = Dio(BaseOptions(
        baseUrl: _dio.options.baseUrl,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'device-id': _cachedDeviceId,
        },
      ));

      try {
        final response = await tokenDio.post(
          'auth/refresh-token',
          data: {
            'refreshToken': refreshToken,
          },
        );

        if (response.statusCode == 200 || response.statusCode == 201) {
          return {
            'accessToken': response.data['accessToken'],
            'refreshToken': response.data['refreshToken'],
          };
        }
        return null;
      } on DioException catch (e) {
        if (e.response?.statusCode == 401) {
          _onRefreshFailed();
        }
        return null;
      }
    } catch (e) {
      return null;
    }
  }
}

class _RetryRequest {
  final RequestOptions options;
  final ErrorInterceptorHandler handler;

  _RetryRequest({required this.options, required this.handler});
}
