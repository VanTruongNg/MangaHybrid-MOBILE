import 'package:dio/dio.dart';
import '../models/manga/manga.model.dart';

class MangaCommentService {
  final Dio _dio;

  MangaCommentService(this._dio);

  Future<CommentInfo?> postComment(String mangaId, String content) async {
    try {
      final response = await _dio.post(
        '/comment/manga/$mangaId',
        data: {
          'content': content,
        },
      );

      if (response.statusCode == 201) {
        return CommentInfo.fromJson(response.data);
      }
      return null;
    } catch (e) {
      print('Error posting comment: $e');
      return null;
    }
  }
} 