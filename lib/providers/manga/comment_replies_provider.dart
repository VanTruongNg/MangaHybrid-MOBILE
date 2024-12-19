import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:webtoon_mobile/models/comment/comment_reply.model.dart';
import 'package:webtoon_mobile/providers/manga/manga_provider.dart';
import 'package:webtoon_mobile/services/manga_service.dart';

final commentRepliesProvider = StateNotifierProvider.family<
    CommentRepliesNotifier,
    AsyncValue<List<CommentReply>>,
    String>((ref, commentId) {
  final mangaService = ref.read(mangaServiceProvider);
  return CommentRepliesNotifier(mangaService, commentId);
});

class CommentRepliesNotifier
    extends StateNotifier<AsyncValue<List<CommentReply>>> {
  final MangaService _mangaService;
  final String _commentId;

  CommentRepliesNotifier(this._mangaService, this._commentId)
      : super(const AsyncValue.loading()) {
    _fetchReplies();
  }

  Future<void> _fetchReplies() async {
    try {
      state = const AsyncValue.loading();
      final replies = await _mangaService.getCommentReplies(_commentId);
      state = AsyncValue.data(replies);
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
    }
  }
}
