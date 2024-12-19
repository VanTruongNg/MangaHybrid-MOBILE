import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:webtoon_mobile/providers/dio_provider.dart';

final commentProvider =
    StateNotifierProvider<CommentNotifier, AsyncValue<List<dynamic>>>((ref) {
  final dio = ref.watch(dioProvider);
  return CommentNotifier(dio);
});

class CommentNotifier extends StateNotifier<AsyncValue<List<dynamic>>> {
  final dio;

  CommentNotifier(this.dio) : super(const AsyncValue.data([]));

  Future<void> getCommentsByMangaId(String mangaId) async {
    try {
      state = const AsyncValue.loading();
      final response = await dio.get('/comment/manga/$mangaId');
      final List<dynamic> data = response.data['data'];
      state = AsyncValue.data(data);
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
    }
  }

  Future<void> addComment(String mangaId, String content) async {
    try {
      final response = await dio.post('/comment/manga/$mangaId', data: {
        'content': content,
      });

      if (response.statusCode == 201) {
        // Sau khi thêm comment thành công, cập nhật lại danh sách
        await getCommentsByMangaId(mangaId);
      }
    } catch (e) {
      print('Error adding comment: $e');
      rethrow;
    }
  }

  Future<void> deleteComment(String commentId, String mangaId) async {
    try {
      final response = await dio.delete('/comment/$commentId');

      if (response.statusCode == 200) {
        // Sau khi xóa comment thành công, cập nhật lại danh sách
        await getCommentsByMangaId(mangaId);
      }
    } catch (e) {
      print('Error deleting comment: $e');
      rethrow;
    }
  }
}
