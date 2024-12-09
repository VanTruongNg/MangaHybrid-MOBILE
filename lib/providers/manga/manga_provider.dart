import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:webtoon_mobile/models/manga/home/home.model.dart';
import 'package:webtoon_mobile/services/manga_service.dart';
import 'package:webtoon_mobile/providers/dio_provider.dart';

final mangaServiceProvider = Provider<MangaService>((ref) {
  return MangaService(dio: ref.read(dioProvider));
});

final homeDataProvider = FutureProvider<HomeResponse>((ref) async {
  final mangaService = ref.read(mangaServiceProvider);
  return mangaService.getMobileHomeData();
});

final dailyTopMangaProvider = Provider<List<MangaItem>>((ref) {
  return ref.watch(homeDataProvider).when(
        data: (home) => home.dailyTop,
        loading: () => [],
        error: (_, __) => [],
      );
});

final weeklyTopMangaProvider = Provider<List<MangaItem>>((ref) {
  return ref.watch(homeDataProvider).when(
        data: (home) => home.weeklyTop,
        loading: () => [],
        error: (_, __) => [],
      );
});

final recentUpdatedMangaProvider = Provider<List<MangaItem>>((ref) {
  return ref.watch(homeDataProvider).when(
        data: (home) => home.recentUpdated,
        loading: () => [],
        error: (_, __) => [],
      );
});

final randomMangaProvider = Provider<List<MangaItem>>((ref) {
  return ref.watch(homeDataProvider).when(
        data: (home) => home.randomManga,
        loading: () => [],
        error: (_, __) => [],
      );
});

final topAllTimeMangaProvider = Provider<List<MangaItem>>((ref) {
  return ref.watch(homeDataProvider).when(
        data: (home) => home.topAllTime,
        loading: () => [],
        error: (_, __) => [],
      );
});

final refreshHomeDataProvider = FutureProvider<void>((ref) async {
  await ref.refresh(homeDataProvider);
});
