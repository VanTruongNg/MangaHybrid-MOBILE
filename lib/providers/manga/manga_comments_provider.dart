import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../models/manga/manga.model.dart';
import '../../services/manga_comment_service.dart';
import '../dio_provider.dart';
import 'manga_detail_provider.dart';

// Service provider
final mangaCommentServiceProvider = Provider<MangaCommentService>((ref) {
  final dio = ref.watch(dioProvider);
  return MangaCommentService(dio);
});

// State Notifier cho comments
class MangaCommentsNotifier
    extends StateNotifier<AsyncValue<List<CommentInfo>>> {
  final MangaCommentService _service;
  final String _mangaId;
  final Ref _ref;

  MangaCommentsNotifier(this._service, this._mangaId, this._ref)
      : super(const AsyncValue.loading()) {
    _initComments();
  }

  void _initComments() {
    final mangaDetail = _ref.read(mangaDetailProvider(_mangaId));
    state = mangaDetail.when(
      data: (manga) => AsyncValue.data(manga.comments),
      loading: () => const AsyncValue.loading(),
      error: (error, stack) => AsyncValue.error(error, stack),
    );
  }

  Future<void> addComment(String content) async {
    try {
      final newComment = await _service.postComment(_mangaId, content);
      if (newComment != null) {
        final currentComments = state.value ?? [];
        state = AsyncValue.data([newComment, ...currentComments]);

        final mangaState = _ref.read(mangaDetailProvider(_mangaId));
        if (mangaState case AsyncData(:final value)) {
          final updatedManga = value.copyWith(
            comments: [newComment, ...value.comments],
          );
          _ref.read(mangaDetailProvider(_mangaId).notifier).state =
              AsyncData(updatedManga);
        }
      }
    } catch (error, stack) {
      state = AsyncValue.error(error, stack);
    }
  }
}

// Provider cho comments state
final mangaCommentsProvider = StateNotifierProvider.family<
    MangaCommentsNotifier,
    AsyncValue<List<CommentInfo>>,
    String>((ref, mangaId) {
  final service = ref.watch(mangaCommentServiceProvider);
  return MangaCommentsNotifier(service, mangaId, ref);
});
