import 'package:dio/dio.dart';
import '../models/manga/manga_search.model.dart';
import '../models/user/user_search.model.dart';

class SearchService {
  final Dio _dio;

  SearchService(this._dio);

  Future<List<MangaSearchResult>> searchManga(String query) async {
    try {
      print('Searching manga with query: $query');
      final response = await _dio.get(
        '/search/manga',
        queryParameters: {
          'query': query,
        },
      );

      print('Search manga response: ${response.data}');

      if (response.statusCode == 200) {
        final List<dynamic> items = response.data;
        return items.map((json) => MangaSearchResult.fromJson(json)).toList();
      }

      return [];
    } catch (e) {
      print('Error searching manga: $e');
      rethrow;
    }
  }

  Future<List<UserSearchResult>> searchUser(String query) async {
    try {
      print('Searching user with query: $query');
      final response = await _dio.get(
        '/search/uploader',
        queryParameters: {
          'query': query,
        },
      );

      print('Search user response: ${response.data}');

      if (response.statusCode == 200) {
        final List<dynamic> items = response.data;
        return items.map((json) => UserSearchResult.fromJson(json)).toList();
      }

      return [];
    } catch (e) {
      print('Error searching user: $e');
      rethrow;
    }
  }
}
