import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:webtoon_mobile/models/user/user.model.dart';
import 'package:webtoon_mobile/providers/auth/auth_state_provider.dart';

final readingHistoryProvider =
    StateNotifierProvider<ReadingHistoryNotifier, List<ReadingHistoryModel>>(
        (ref) => ReadingHistoryNotifier(ref));

class ReadingHistoryNotifier extends StateNotifier<List<ReadingHistoryModel>> {
  final Ref _ref;
  ReadingHistoryNotifier(this._ref) : super([]) {
    _ref.listen(authStateProvider, (previous, next) {
      next.whenData((user) {
        if (user != null) {
          state = user.readingHistory;
        } else {
          state = [];
        }
      });
    });
  }

  Future<void> fetchReadingHistory() async {
    try {
      final user = _ref.read(authStateProvider).value;
      if (user != null) {
        state = user.readingHistory;
      }
    } catch (e) {
      print('Error fetching reading history: $e');
    }
  }

  ChapterInfoModel? getLastReadChapter(String mangaId) {
    final history = state.firstWhere(
      (h) => h.manga.id == mangaId,
      orElse: () => ReadingHistoryModel(
        id: '',
        manga: MangaBasicModel(
          id: '',
          title: '',
          author: '',
        ),
        updatedAt: DateTime.now().toIso8601String(),
      ),
    );

    if (history.chapters.isEmpty) {
      return null;
    }

    return history.chapters.last.chapter;
  }

  bool hasReadChapter(String mangaId, String chapterId) {
    final history = state.firstWhere(
      (h) => h.manga.id == mangaId,
      orElse: () => ReadingHistoryModel(
        id: '',
        manga: MangaBasicModel(
          id: '',
          title: '',
          author: '',
        ),
        updatedAt: DateTime.now().toIso8601String(),
      ),
    );

    return history.chapters.any((c) => c.chapter.id == chapterId);
  }
}
