import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:webtoon_mobile/models/manga/home/home.model.dart';
import 'package:webtoon_mobile/models/manga/manga.model.dart';
import 'package:webtoon_mobile/services/manga_service.dart';
import 'package:webtoon_mobile/providers/dio_provider.dart';

final mangaServiceProvider = Provider<MangaService>((ref) {
  return MangaService(dio: ref.read(dioProvider));
});

final homeDataProvider = FutureProvider<HomeResponse>((ref) async {
  final mangaService = ref.read(mangaServiceProvider);
  return mangaService.getHomeData();
});

final mangaDetailProvider =
    FutureProvider.family<Manga, String>((ref, id) async {
  final mangaService = ref.read(mangaServiceProvider);
  return mangaService.getMangaById(id);
});

final refreshHomeDataProvider = FutureProvider<void>((ref) async {
  await ref.refresh(homeDataProvider);
});
