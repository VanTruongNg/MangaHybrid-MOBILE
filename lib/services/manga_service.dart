import 'package:dio/dio.dart';
import 'package:webtoon_mobile/models/chapter/ChapterDetail/chapter_detail.model.dart';
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

  Future<Manga> getMangaById(String id) async {
    try {
      final response = await dio.get('manga/$id');
      return Manga.fromJson(response.data);
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

      final data = Map<String, dynamic>.from(response.data);

      final mappedData = {
        'chapterInfo': {
          '_id': data['_id'],
          'number': data['number'],
          'chapterName': data['chapterName'],
          'chapterTitle': data['chapterTitle'],
          'chapterType': data['chapterType'],
          'views': data['views'] ?? 0,
        },
        'mangaInfo': {
          '_id': data['manga']['_id'],
          'title': data['manga']['title'],
        },
        'pagesUrl': data['pagesUrl'],
        'navigation': data['navigation'],
      };

      return ChapterDetail.fromJson(mappedData);
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
      await dio.post('chapters/$chapterId/update-view');
    } on DioException catch (error) {
      if (error.type == DioExceptionType.connectionError ||
          error.type == DioExceptionType.connectionTimeout) {
        throw Exception('network_error');
      }
      throw Exception('Lỗi khi cập nhật lượt xem: ${error.message}');
    }
  }
}
