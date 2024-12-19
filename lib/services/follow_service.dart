import 'package:dio/dio.dart';

class FollowService {
  final Dio _dio;

  FollowService(this._dio);

  Future<void> followUser(String userId) async {
    try {
      await _dio.post('/user/follow/$userId');
    } catch (e) {
      throw Exception('Không thể theo dõi người dùng');
    }
  }

  Future<void> unfollowUser(String userId) async {
    try {
      await _dio.post('/user/unfollow/$userId');
    } catch (e) {
      throw Exception('Không thể hủy theo dõi người dùng');
    }
  }
} 