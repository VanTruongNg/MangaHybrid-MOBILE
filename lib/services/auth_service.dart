import 'package:dio/dio.dart';
import 'package:webtoon_mobile/models/user/user.model.dart';

class AuthService {
  final Dio dio;

  AuthService({required this.dio});

  Future<Map<String, dynamic>> login(String email, String password) async {
    try {
      final response = await dio.post('auth/login', data: {
        'email': email,
        'password': password,
      });

      if (response.statusCode == 201) {
        final accessToken = response.data['accessToken'] as String;
        final refreshToken = response.data['refreshToken'] as String;

        dio.options.headers['Authorization'] = 'Bearer $accessToken';

        final userResponse = await dio.get('user/me');

        if (userResponse.data != null) {
          try {
            final user = User.fromJson(userResponse.data);
            return {
              'user': user,
              'accessToken': accessToken,
              'refreshToken': refreshToken,
            };
          } catch (e, stack) {
            throw Exception('Lỗi khi xử lý thông tin người dùng: $e');
          }
        }
        throw Exception('Không thể lấy thông tin người dùng - Response rỗng');
      }
      throw Exception('Lỗi không xác định - Status: ${response.statusCode}');
    } on DioException catch (error) {
      rethrow;
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
      final response = await dio.get('email/verify/$email/$token');

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
}
