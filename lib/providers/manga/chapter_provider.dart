import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:webtoon_mobile/models/chapter/ChapterDetail/chapter_detail.model.dart';
import 'package:webtoon_mobile/providers/manga/manga_provider.dart';

final chapterProvider =
    FutureProvider.family<ChapterDetail, String>((ref, chapterId) async {
  final mangaService = ref.read(mangaServiceProvider);
  final chapter = await mangaService.getChapter(chapterId);
  return chapter;
});

final chapterViewProvider =
    FutureProvider.family<void, String>((ref, chapterId) async {
  final mangaService = ref.read(mangaServiceProvider);
  try {
    await mangaService.updateChapterView(chapterId);
    // Invalidate cache sau khi update thành công
    ref.invalidate(chapterProvider(chapterId));
  } catch (e) {
    rethrow;
  }
});

final currentPageProvider =
    StateProvider.family<int, String>((ref, chapterId) => 0);

final chapterNavigationProvider =
    Provider.family<void, NavigationAction>((ref, action) {
  final currentChapter = ref.read(chapterProvider(action.chapterId));

  if (currentChapter.value != null) {
    switch (action.type) {
      case NavigationType.prev:
        if (currentChapter.value!.navigation?.prevChapter != null) {
          ref.read(currentPageProvider(action.chapterId).notifier).state = 0;
        }
        break;
      case NavigationType.next:
        if (currentChapter.value!.navigation?.nextChapter != null) {
          ref.read(currentPageProvider(action.chapterId).notifier).state = 0;
        }
        break;
    }
  }
});

final chapterReadDurationProvider =
    StateProvider.family<Duration, String>((ref, _) {
  return Duration.zero;
});

final shouldUpdateViewProvider =
    Provider.family<bool, String>((ref, chapterId) {
  final duration = ref.watch(chapterReadDurationProvider(chapterId));
  return duration.inSeconds >= 10;
});

final hasUpdatedViewProvider = StateProvider.family<bool, String>((ref, _) {
  return false;
});

enum NavigationType { prev, next }

class NavigationAction {
  final String chapterId;
  final NavigationType type;

  NavigationAction({required this.chapterId, required this.type});
}
