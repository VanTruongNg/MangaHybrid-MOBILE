import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:webtoon_mobile/providers/manga/manga_provider.dart';
import 'package:webtoon_mobile/widgets/HomeScreen/MangaCard.dart';

class MangaScreen extends ConsumerStatefulWidget {
  const MangaScreen({super.key});

  @override
  ConsumerState<MangaScreen> createState() => _MangaScreenState();
}

class _MangaScreenState extends ConsumerState<MangaScreen> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() => ref.read(mangaProvider.notifier).fetchMangaList());
  }

  Future<void> _onRefresh() async {
    await ref.read(mangaProvider.notifier).fetchMangaList();
  }

  @override
  Widget build(BuildContext context) {
    final mangaAsync = ref.watch(mangaProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Manga List'),
      ),
      body: RefreshIndicator(
        onRefresh: _onRefresh,
        child: mangaAsync.when(
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (error, stack) => Center(child: Text('Lỗi: $error')),
          data: (mangas) => GridView.builder(
            padding: const EdgeInsets.all(8),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.7,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
            ),
            itemCount: mangas.length,
            itemBuilder: (context, index) {
              final manga = mangas[index];
              return MangaCard(manga: manga);
            },
          ),
        ),
      ),
    );
  }
}