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
  await mangaService.updateChapterView(chapterId);
  ref.invalidate(chapterProvider(chapterId));
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

enum NavigationType { prev, next }

class NavigationAction {
  final String chapterId;
  final NavigationType type;

  NavigationAction({required this.chapterId, required this.type});
}
