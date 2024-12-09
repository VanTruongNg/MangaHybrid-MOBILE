import 'dart:collection';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:webtoon_mobile/services/token_service.dart';
import 'package:webtoon_mobile/config/env.dart';

class AuthInterceptor extends Interceptor {
  final TokenService _tokenService;
  final Dio _dio;
  bool _isRefreshing = false;
  final VoidCallback? onRefreshFailed;
  final Queue<_RetryRequest> _queue = Queue();
  static final String _deviceId = Env.deviceId;

  AuthInterceptor(this._tokenService, this._dio, {this.onRefreshFailed});

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    options.headers['device-id'] = _deviceId;

    final token = await _tokenService.getAccessToken();
    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    return handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401) {
      print('AuthInterceptor: Got 401 error');
      
      final retryRequest = _RetryRequest(
        options: err.requestOptions,
        handler: handler,
      );
      _queue.add(retryRequest);

      if (_isRefreshing) return;
      _isRefreshing = true;

      try {
        print('AuthInterceptor: Attempting to refresh token');
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
          handler.reject(err);
        }
      } catch (e) {
        print('AuthInterceptor: Refresh token failed: $e');
        _onRefreshFailed();
        handler.reject(err);
      } finally {
        _isRefreshing = false;
        _queue.clear();
      }
    } else {
      return handler.next(err);
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
      if (refreshToken == null) throw Exception('No refresh token');

      final tokenDio = Dio(BaseOptions(
        baseUrl: _dio.options.baseUrl,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'device-id': _deviceId,
        },
      ));

      final response = await tokenDio.post(
        'auth/refresh-token',
        data: {'refreshToken': refreshToken},
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        return {
          'accessToken': response.data['accessToken'],
          'refreshToken': response.data['refreshToken'],
        };
      }
      throw Exception('Refresh token failed');
    } catch (e) {
      print('Refresh token error: $e');
      throw e;
    }
  }
}

class _RetryRequest {
  final RequestOptions options;
  final ErrorInterceptorHandler handler;

  _RetryRequest({required this.options, required this.handler});
}
