import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:webtoon_mobile/providers/auth/auth_provider.dart';
import 'package:webtoon_mobile/providers/manga/manga_detail_provider.dart';
import 'package:webtoon_mobile/routes/router.dart';
import 'package:webtoon_mobile/widgets/MangaDetail/BackgroundBanner.dart';
import 'package:webtoon_mobile/widgets/MangaDetail/MangaAction.dart';
import 'package:webtoon_mobile/widgets/MangaDetail/MangaDescriptionSection.dart';
import 'package:webtoon_mobile/widgets/MangaDetail/MangaInforSection.dart';
import 'package:webtoon_mobile/widgets/MangaDetail/MangaChapterSection.dart';
import 'package:webtoon_mobile/widgets/MangaDetail/MangaCommentSection.dart';
import 'package:go_router/go_router.dart';

class MangaDetailScreen extends ConsumerWidget {
  final String mangaId;

  const MangaDetailScreen({
    super.key,
    required this.mangaId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scrollController = ScrollController();
    final mangaAsync = ref.watch(mangaDetailProvider(mangaId));
    final user = ref.watch(authProvider);

    return Scaffold(
      body: mangaAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('Lỗi: $error')),
        data: (manga) => Stack(
          children: [
            MangaBanner(
              scrollController: scrollController,
              bannerUrl: manga.bannerImg,
            ),
            CustomScrollView(
              controller: scrollController,
              slivers: [
                SliverAppBar(
                  expandedHeight: 200,
                  backgroundColor: Colors.transparent,
                  pinned: true,
                  leading: ModalRoute.of(context)
                              ?.settings
                              .name
                              ?.startsWith('/chapter/') ==
                          true
                      ? IconButton(
                          icon: const Icon(Icons.arrow_back),
                          onPressed: () => context.pop(),
                        )
                      : null,
                  flexibleSpace: const FlexibleSpaceBar(),
                ),
                SliverToBoxAdapter(
                  child: Transform.translate(
                    offset: const Offset(0, -80),
                    child: Column(
                      children: [
                        MangaInfoSection(manga: manga),
                        const SizedBox(height: 16),
                        MangaActions(
                          mangaId: mangaId,
                          firstChapterId: manga.chapters.isNotEmpty
                              ? manga.chapters.first.id
                              : null,
                          likes: manga.like,
                          dislikes: manga.disLike,
                          followers: manga.followers,
                          rating: manga.rating,
                          ratingCount: manga.ratingCount,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              if (manga.genre.isNotEmpty) ...[
                                const Text(
                                  'Thể loại',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Wrap(
                                  spacing: 8,
                                  runSpacing: 8,
                                  children: manga.genre
                                      .map((genre) =>
                                          Chip(label: Text(genre.name)))
                                      .toList(),
                                ),
                              ],
                              const SizedBox(height: 16),
                              MangaDescriptionSection(
                                mangaId: mangaId,
                                description: manga.description ?? '',
                              ),
                              const SizedBox(height: 16),
                              if (manga.chapters.isNotEmpty)
                                MangaChapterSection(
                                  mangaId: mangaId,
                                  chapters: manga.chapters,
                                ),
                              const SizedBox(height: 16),
                              MangaCommentSection(
                                mangaId: mangaId,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
