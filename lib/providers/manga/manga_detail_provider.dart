import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:webtoon_mobile/models/manga/manga.model.dart';
import 'package:webtoon_mobile/providers/manga/manga_provider.dart';
import 'package:webtoon_mobile/services/manga_service.dart';

class MangaDetailNotifier extends StateNotifier<AsyncValue<MangaDetail>> {
  final MangaService _mangaService;
  final String mangaId;

  MangaDetailNotifier(this._mangaService, this.mangaId)
      : super(const AsyncValue.loading()) {
    fetchMangaDetail();
  }

  Future<void> fetchMangaDetail() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => _mangaService.getMangaById(mangaId));
  }

  void updateComments(CommentInfo newComment) {
    if (state case AsyncData(:final value)) {
      final updatedManga = value.copyWith(
        comments: [newComment, ...value.comments],
      );
      state = AsyncData(updatedManga);
    }
  }
}

final mangaDetailProvider = StateNotifierProvider.family<MangaDetailNotifier,
    AsyncValue<MangaDetail>, String>(
  (ref, mangaId) {
    final mangaService = ref.watch(mangaServiceProvider);
    return MangaDetailNotifier(mangaService, mangaId);
  },
);

final mangaDescriptionExpandedProvider = StateProvider.family<bool, String>((ref, _) => false);
