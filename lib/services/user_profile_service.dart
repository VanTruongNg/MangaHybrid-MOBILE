import 'package:dio/dio.dart';
import '../models/user/public_profile.model.dart';

class UserProfileService {
  final Dio _dio;

  UserProfileService(this._dio);

  Future<PublicProfile> getPublicProfile(String userId) async {
    try {
      final response = await _dio.get('/user/profile/$userId');

      if (response.statusCode == 200) {
        return PublicProfile.fromJson(response.data);
      }

      throw Exception('Không thể lấy thông tin người dùng');
    } catch (e) {
      print('Error getting public profile: $e');
      rethrow;
    }
  }
} 