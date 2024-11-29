import 'package:dio/dio.dart';
import 'package:webtoon_mobile/models/user/user.model.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:webtoon_mobile/services/token_service.dart';

class AuthService {
  final Dio dio;
  final TokenService tokenService;

  AuthService({required this.dio, required this.tokenService});

  Future<Map<String, dynamic>> login(String email, String password) async {
    try {
      final response = await dio.post('auth/login', data: {
        'email': email,
        'password': password,
      });

      if (response.statusCode == 201 || response.statusCode == 200) {
        return await _handleAuthResponse(response);
      }
      throw Exception('Đăng nhập không thành công');
    } on DioException catch (error) {
      _handleDioError(error);
      rethrow;
    }
  }

  Future<Map<String, dynamic>> _handleAuthResponse(Response response) async {
    final accessToken = response.data['accessToken'] as String;
    final refreshToken = response.data['refreshToken'] as String;

    await tokenService.saveTokens(
      accessToken: accessToken,
      refreshToken: refreshToken,
    );

    final userResponse = await dio.get('user/me');
    if (userResponse.data != null) {
      final user = UserModel.fromJson(userResponse.data);
      return {
        'user': user,
        'accessToken': accessToken,
        'refreshToken': refreshToken,
      };
    }
    throw Exception('Không thể lấy thông tin người dùng');
  }

  void _handleDioError(DioException error) {
    if (error.type == DioExceptionType.connectionError ||
        error.type == DioExceptionType.connectionTimeout) {
      throw Exception('network_error');
    }
  }

  Future<Map<String, dynamic>> loginWithGoogle() async {
    try {
      final GoogleSignIn googleSignIn = GoogleSignIn();
      final GoogleSignInAccount? googleUser = await googleSignIn.signIn();

      if (googleUser == null) {
        throw Exception('Đăng nhập Google bị hủy');
      }

      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;
      final String accessToken = googleAuth.accessToken ?? '';

      if (accessToken.isEmpty) {
        throw Exception('Không thể lấy token từ Google');
      }

      final response = await dio.post('auth/google', data: {
        'accessToken': accessToken,
      });

      if (response.statusCode == 201 || response.statusCode == 200) {
        return await _handleAuthResponse(response);
      }
      throw Exception('Đăng nhập không thành công');
    } on DioException catch (error) {
      _handleDioError(error);
      rethrow;
    } catch (e) {
      throw Exception('Lỗi đăng nhập Google: $e');
    }
  }

  Future<bool> signUp(Map<String, dynamic> signUpData) async {
    try {
      final response = await dio.post('auth/signup', data: signUpData);

      if (response.statusCode == 201) {
        return true;
      }
      throw Exception('Lỗi không xác định - Status: ${response.statusCode}');
    } on DioException catch (error) {
      if (error.response?.statusCode == 401) {
        throw Exception('Mật khẩu không trùng khớp!');
      } else if (error.response?.statusCode == 406) {
        throw Exception('Tạo tài khoản không thành công');
      } else if (error.response?.statusCode == 409) {
        throw Exception('Email đã tồn tại');
      }
      rethrow;
    }
  }

  Future<bool> verifyEmail(String email, String token) async {
    try {
      final response = await dio.get('auth/email/verify/$email/$token');

      if (response.statusCode == 200) {
        return true;
      }
      return false;
    } on DioException catch (error) {
      if (error.response?.statusCode == 404) {
        throw Exception('Tài khoản không tồn tại');
      } else if (error.response?.statusCode == 400) {
        throw Exception('Tài khoản đã được xác thực');
      } else if (error.response?.statusCode == 403) {
        throw Exception('OTP không hợp lệ!');
      }
      throw Exception('Lỗi hệ thống, vui lòng thử lại sau');
    }
  }

  Future<UserModel?> checkAuth() async {
    try {
      final token = await tokenService.getAccessToken();
      if (token == null) return null;

      try {
        final response = await dio.get('user/me');
        if (response.data != null) {
          return UserModel.fromJson(response.data);
        }
      } on DioException catch (e) {
        if (e.response?.statusCode == 401) {
          throw Exception('401');
        }
        rethrow;
      }
      return null;
    } catch (e) {
      rethrow;
    }
  }

  Future<UserModel> refreshUser() async {
    try {
      final response = await dio.get('user/me');
      if (response.data != null) {
        return UserModel.fromJson(response.data);
      }
      throw Exception('Không thể lấy thông tin người dùng');
    } on DioException catch (error) {
      _handleDioError(error);
      rethrow;
    }
  }
}
