import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:webtoon_mobile/models/offline/offline_manga.model.dart';
import 'package:webtoon_mobile/models/offline/offline_chapter.model.dart';
import 'package:webtoon_mobile/services/offline_manga_service.dart';
import 'package:webtoon_mobile/providers/dio_provider.dart';

final offlineMangaServiceProvider = Provider<OfflineMangaService>((ref) {
  return OfflineMangaService(dio: ref.watch(dioProvider));
});

final offlineMangasProvider = FutureProvider<List<OfflineManga>>((ref) async {
  return ref.read(offlineMangaServiceProvider).getAllManga();
});

final offlineMangaProvider =
    FutureProvider.family<OfflineManga?, String>((ref, mangaId) async {
  return ref.read(offlineMangaServiceProvider).getMangaInfo(mangaId);
});

final offlineChapterProvider = FutureProvider.family<OfflineChapter?,
    ({String mangaId, String chapterId})>((ref, params) async {
  return ref
      .read(offlineMangaServiceProvider)
      .getChapter(params.mangaId, params.chapterId);
});

final offlineChapterListProvider =
    FutureProvider.family<List<String>, String>((ref, mangaId) async {
  return ref.read(offlineMangaServiceProvider).getDownloadedChapters(mangaId);
});

final downloadChapterProvider =
    FutureProvider.family<void, ({String mangaId, String chapterId})>(
        (ref, params) async {
  try {
    await ref.read(offlineMangaServiceProvider).downloadChapter(
      params.mangaId,
      params.chapterId,
      onProgress: (progress) {
        ref.read(downloadProgressProvider(params).notifier).state = progress;
      },
    );

    ref.read(downloadProgressProvider(params).notifier).state = null;

    ref.invalidate(offlineMangaProvider(params.mangaId));
    ref.invalidate(offlineChapterProvider(params));
    ref.invalidate(isChapterDownloadedProvider(params));
  } catch (e) {
    ref.read(downloadProgressProvider(params).notifier).state = null;
    rethrow;
  }
});

final isChapterDownloadedProvider =
    FutureProvider.family<bool, ({String mangaId, String chapterId})>(
        (ref, params) async {
  final chapter = await ref.read(offlineMangaServiceProvider).getChapter(
        params.mangaId,
        params.chapterId,
      );
  return chapter != null;
});

final downloadProgressProvider =
    StateProvider.family<double?, ({String mangaId, String chapterId})>(
  (ref, params) => null,
);

final offlineChapterImagePathsProvider =
    FutureProvider.family<List<String>, ({String mangaId, String chapterId})>(
        (ref, params) async {
  return ref.read(offlineMangaServiceProvider).getChapterImagePaths(
        params.mangaId,
        params.chapterId,
      );
});
