import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:webtoon_mobile/models/manga/manga.model.dart';
import 'package:webtoon_mobile/providers/dio_provider.dart';
import 'package:webtoon_mobile/services/manga_service.dart';

final mangaServiceProvider = Provider<MangaService>((ref) {
  final dio = ref.watch(dioProvider);
  return MangaService(dio: dio);
});

class  MangaNotifier extends StateNotifier<AsyncValue<List<Manga>>> {
  final MangaService _mangaService;

  MangaNotifier(this._mangaService) : super(const AsyncValue.loading());

  Future<void> fetchMangaList() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => _mangaService.getMangaList());
  }
}

final mangaProvider = StateNotifierProvider<MangaNotifier, AsyncValue<List<Manga>>>((ref) {
  return MangaNotifier(ref.watch(mangaServiceProvider));
});
