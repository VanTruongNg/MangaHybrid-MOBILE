import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:webtoon_mobile/models/offline/offline_chapter.model.dart';
import 'package:webtoon_mobile/providers/offline/offline_manga_provider.dart';

class OfflineMangaDetailScreen extends ConsumerWidget {
  final String mangaId;

  const OfflineMangaDetailScreen({
    Key? key,
    required this.mangaId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mangaAsync = ref.watch(offlineMangaProvider(mangaId));

    return Scaffold(
      body: mangaAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('Lỗi: $error')),
        data: (manga) {
          if (manga == null) {
            return const Center(child: Text('Không tìm thấy truyện'));
          }

          return CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 200,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  title: Text(
                    manga.title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          offset: Offset(0, 1),
                          blurRadius: 3.0,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ],
                    ),
                  ),
                  background: manga.bannerPath != null
                      ? FutureBuilder<String>(
                          future: ref
                              .read(offlineMangaServiceProvider)
                              .getMangaImagePath(mangaId, manga.bannerPath!),
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {
                              return Stack(
                                children: [
                                  Image.file(
                                    File(snapshot.data!),
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          Colors.transparent,
                                          Colors.black.withOpacity(0.7),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            }
                            return Container(color: Colors.grey);
                          },
                        )
                      : null,
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (manga.coverPath != null)
                            FutureBuilder<String>(
                              future: ref
                                  .read(offlineMangaServiceProvider)
                                  .getMangaImagePath(mangaId, manga.coverPath!),
                              builder: (context, snapshot) {
                                if (snapshot.hasData) {
                                  return ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.file(
                                      File(snapshot.data!),
                                      height: 200,
                                      width: 140,
                                      fit: BoxFit.cover,
                                    ),
                                  );
                                }
                                return const SizedBox(
                                  height: 200,
                                  width: 140,
                                  child: Center(
                                      child: CircularProgressIndicator()),
                                );
                              },
                            ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Tác giả: ${manga.author}',
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  'Trạng thái: ${manga.status}',
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                                const SizedBox(height: 8),
                                Wrap(
                                  spacing: 8,
                                  runSpacing: 8,
                                  children: manga.genres
                                      .map((genre) => Chip(label: Text(genre)))
                                      .toList(),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Text(manga.description),
                      const SizedBox(height: 24),
                      const Text(
                        'Danh sách chapter đã tải',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      FutureBuilder<List<String>>(
                        future: ref
                            .read(offlineMangaServiceProvider)
                            .getDownloadedChapters(mangaId),
                        builder: (context, snapshot) {
                          if (!snapshot.hasData) {
                            return const Center(
                                child: CircularProgressIndicator());
                          }

                          final chapterIds = snapshot.data!;
                          if (chapterIds.isEmpty) {
                            return const Center(
                                child: Text('Chưa có chapter nào được tải'));
                          }

                          return ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: chapterIds.length,
                            itemBuilder: (context, index) {
                              final chapterId = chapterIds[index];
                              return FutureBuilder<OfflineChapter?>(
                                future: ref
                                    .read(offlineMangaServiceProvider)
                                    .getChapter(mangaId, chapterId),
                                builder: (context, snapshot) {
                                  if (!snapshot.hasData ||
                                      snapshot.data == null) {
                                    return const SizedBox.shrink();
                                  }

                                  final chapter = snapshot.data!;
                                  return Card(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 4, horizontal: 8),
                                    child: ListTile(
                                      title: Text(
                                        'Chapter ${chapter.number}',
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                        ),
                                      ),
                                      subtitle: chapter.title.isNotEmpty
                                          ? Text(
                                              chapter.title,
                                              style:
                                                  const TextStyle(fontSize: 14),
                                            )
                                          : null,
                                      trailing: const Icon(Icons.chevron_right),
                                      onTap: () {
                                        context.push(
                                            '/offline/chapter/$mangaId/$chapterId');
                                      },
                                    ),
                                  );
                                },
                              );
                            },
                          );
                        },
                      )
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
