import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:webtoon_mobile/models/manga/manga.model.dart';
import 'package:webtoon_mobile/providers/offline/offline_manga_provider.dart';
import 'package:webtoon_mobile/utils/FormatDate.dart';

class MangaChapterSection extends ConsumerWidget {
  final String mangaId;
  final List<ChapterInfo> chapters;

  const MangaChapterSection({
    super.key,
    required this.mangaId,
    required this.chapters,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sortedChapters = chapters.toList()
      ..sort((a, b) => b.createdAt.compareTo(a.createdAt));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Danh sách Chapter',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextButton(
              onPressed: () => _showAllChapters(context, ref, sortedChapters),
              child: Text('${chapters.length} chapters'),
            ),
          ],
        ),
        const SizedBox(height: 8),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: sortedChapters.length > 5 ? 5 : sortedChapters.length,
          itemBuilder: (context, index) => _buildChapterTile(
            context,
            ref,
            sortedChapters[index],
          ),
        ),
      ],
    );
  }

  Widget _buildChapterTile(
    BuildContext context,
    WidgetRef ref,
    ChapterInfo chapter,
  ) {
    return ListTile(
      title: Text(chapter.chapterName ?? ''),
      subtitle: Text(
        '${chapter.views} lượt xem • ${DateFormatter.formatTimeAgo(chapter.createdAt)}',
      ),
      onTap: () => context.push('/chapter/${chapter.id}', extra: mangaId),
      trailing: Consumer(
        builder: (context, ref, _) {
          final isDownloaded = ref.watch(
            isChapterDownloadedProvider((
              mangaId: mangaId,
              chapterId: chapter.id,
            )),
          );

          final downloadProgress = ref.watch(
            downloadProgressProvider((
              mangaId: mangaId,
              chapterId: chapter.id,
            )),
          );

          return isDownloaded.when(
            loading: () => const SizedBox.shrink(),
            error: (_, __) => const Icon(Icons.error, color: Colors.red),
            data: (isDownloaded) {
              if (isDownloaded) {
                return const Icon(Icons.check_circle, color: Colors.green);
              }

              if (downloadProgress != null) {
                return Stack(
                  alignment: Alignment.center,
                  children: [
                    CircularProgressIndicator(
                      value: downloadProgress,
                      strokeWidth: 2,
                      backgroundColor: Colors.grey[300],
                    ),
                    Text(
                      '${(downloadProgress * 100).toInt()}%',
                      style: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                );
              }

              return IconButton(
                icon: const Icon(Icons.download),
                onPressed: () => _handleDownload(context, ref, chapter),
              );
            },
          );
        },
      ),
    );
  }

  void _showAllChapters(
    BuildContext context,
    WidgetRef ref,
    List<ChapterInfo> sortedChapters,
  ) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => DraggableScrollableSheet(
        initialChildSize: 0.9,
        minChildSize: 0.5,
        maxChildSize: 0.9,
        builder: (context, scrollController) => Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Tất cả Chapter',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Expanded(
                child: ListView.builder(
                  controller: scrollController,
                  itemCount: sortedChapters.length,
                  itemBuilder: (context, index) {
                    final chapter = sortedChapters[index];
                    return ListTile(
                      title: Text(chapter.chapterName ?? ''),
                      subtitle: Text(
                        '${chapter.views} lượt xem • ${DateFormatter.formatTimeAgo(chapter.createdAt)}',
                      ),
                      onTap: () {
                        Navigator.pop(context);
                        context.push('/chapter/${chapter.id}');
                      },
                      trailing: Consumer(
                        builder: (context, ref, _) {
                          final isDownloaded = ref.watch(
                            isChapterDownloadedProvider((
                              mangaId: mangaId,
                              chapterId: chapter.id,
                            )),
                          );

                          return isDownloaded.when(
                            loading: () => const SizedBox.shrink(),
                            error: (_, __) =>
                                const Icon(Icons.error, color: Colors.red),
                            data: (isDownloaded) => isDownloaded
                                ? const Icon(Icons.check_circle,
                                    color: Colors.green)
                                : IconButton(
                                    icon: const Icon(Icons.download),
                                    onPressed: () =>
                                        _handleDownload(context, ref, chapter),
                                  ),
                          );
                        },
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _handleDownload(
    BuildContext context,
    WidgetRef ref,
    ChapterInfo chapter,
  ) async {
    try {
      await ref.read(
        downloadChapterProvider((
          mangaId: mangaId,
          chapterId: chapter.id,
        )).future,
      );

      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Đã tải xuống chapter'),
            backgroundColor: Colors.green,
          ),
        );
      }
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Lỗi tải xuống: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }
}
