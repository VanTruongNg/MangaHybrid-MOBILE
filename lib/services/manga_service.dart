import 'package:dio/dio.dart';
import 'package:webtoon_mobile/models/chapter/ChapterDetail/chapter_detail.model.dart';
import 'package:webtoon_mobile/models/comment/comment_reply.model.dart';
import 'package:webtoon_mobile/models/manga/home/home.model.dart';
import 'package:webtoon_mobile/models/manga/manga.model.dart';

class MangaService {
  final Dio dio;

  MangaService({required this.dio});

  Future<HomeResponse> getHomeData() async {
    try {
      final response = await dio.get('manga/home');
      return HomeResponse.fromJson(response.data);
    } on DioException catch (error) {
      if (error.type == DioExceptionType.connectionError ||
          error.type == DioExceptionType.connectionTimeout) {
        throw Exception('network_error');
      }
      throw Exception('Lỗi khi lấy dữ liệu trang chủ: ${error.message}');
    }
  }

  Future<MangaDetail> getMangaById(String id) async {
    try {
      final response = await dio.get('manga/$id');
      return MangaDetail.fromJson(response.data);
    } on DioException catch (error) {
      if (error.type == DioExceptionType.connectionError ||
          error.type == DioExceptionType.connectionTimeout) {
        throw Exception('network_error');
      }
      throw Exception('Lỗi khi lấy thông tin truyện: ${error.message}');
    }
  }

  Future<ChapterDetail> getChapter(String chapterId) async {
    try {
      final response = await dio.get('chapters/$chapterId');
      if (response.data == null) {
        throw Exception('Không tìm thấy chapter');
      }

      return ChapterDetail.fromJson(response.data);
    } on DioException catch (error) {
      if (error.type == DioExceptionType.connectionError ||
          error.type == DioExceptionType.connectionTimeout) {
        throw Exception('network_error');
      }
      throw Exception('Lỗi khi lấy thông tin chapter: ${error.message}');
    }
  }

  Future<void> updateChapterView(String chapterId) async {
    try {
      final response = await dio.post('chapters/$chapterId/update-view');
      if (response.statusCode != 201) {
        throw Exception('Lỗi khi cập nhật lượt xem: ${response.statusCode}');
      }
    } on DioException catch (error) {
      if (error.type == DioExceptionType.connectionError ||
          error.type == DioExceptionType.connectionTimeout) {
        throw Exception('network_error');
      }
      throw Exception('Lỗi khi cập nhật lượt xem: ${error.message}');
    }
  }

  Future<List<CommentReply>> getCommentReplies(String commentId) async {
    try {
      final response = await dio.get('comment/replies/$commentId');
      return (response.data as List)
          .map((reply) => CommentReply.fromJson(reply))
          .toList();
    } catch (e) {
      throw Exception('Không thể tải phản hồi: $e');
    }
  }

  Future<void> likeManga(String mangaId) async {
    try {
      await dio.post('/user/manga/$mangaId/like');
    } on DioException catch (e) {
      _handleError(e);
      rethrow;
    }
  }

  Future<void> unlikeManga(String mangaId) async {
    try {
      await dio.post('/user/manga/$mangaId/unlike');
    } on DioException catch (e) {
      _handleError(e);
      rethrow;
    }
  }

  Future<void> followManga(String mangaId) async {
    try {
      await dio.post('/user/manga/$mangaId/follow');
    } on DioException catch (e) {
      _handleError(e);
      rethrow;
    }
  }

  Future<void> unfollowManga(String mangaId) async {
    try {
      await dio.post('/user/manga/$mangaId/unfollow');
    } on DioException catch (e) {
      _handleError(e);
      rethrow;
    }
  }

  void _handleError(DioException error) {
    if (error.type == DioExceptionType.connectionError ||
        error.type == DioExceptionType.connectionTimeout) {
      throw Exception('Lỗi kết nối');
    }

    switch (error.response?.statusCode) {
      case 401:
        throw Exception('Vui lòng đăng nhập');
      case 404:
        throw Exception('Không tìm thấy manga');
      case 409:
        throw Exception('Bạn đã thực hiện hành động này rồi');
      default:
        throw Exception('Có lỗi xảy ra, vui lòng thử lại sau');
    }
  }
}
