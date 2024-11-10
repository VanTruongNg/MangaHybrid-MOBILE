import 'package:dio/dio.dart';
import 'package:webtoon_mobile/models/manga/manga.model.dart';

class MangaService {
  final Dio dio;

  MangaService({required this.dio});

  Future<List<Manga>> getMangaList() async {
    try {
      final response = await dio.get('manga');
      final List<dynamic> data = response.data;
      return data.map((e) => Manga.fromJson(e)).toList();
    } on DioException catch (error) {
      throw Exception('Lỗi khi lấy danh sách manga: ${error.message}');
    } catch (error) {
      throw Exception('Lỗi không xác định: $error');
    }
  }
}
