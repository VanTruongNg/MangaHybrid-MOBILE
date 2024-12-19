import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:webtoon_mobile/providers/offline/offline_manga_provider.dart';

class OfflineLibraryScreen extends ConsumerWidget {
  const OfflineLibraryScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final offlineMangasAsync = ref.watch(offlineMangasProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Thư viện offline'),
        actions: [
          IconButton(
            icon: const Icon(Icons.home),
            onPressed: () => context.go('/'),
          ),
        ],
      ),
      body: offlineMangasAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => Center(child: Text('Lỗi: $error')),
        data: (mangas) {
          if (mangas.isEmpty) {
            return const Center(
                child: Text('Chưa có truyện nào được tải xuống'));
          }
          return ListView.builder(
            itemCount: mangas.length,
            itemBuilder: (context, index) {
              final manga = mangas[index];
              return Card(
                margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: ListTile(
                  leading: manga.coverPath != null
                      ? FutureBuilder<String>(
                          future: ref
                              .read(offlineMangaServiceProvider)
                              .getMangaImagePath(manga.id, manga.coverPath!),
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {
                              return ClipRRect(
                                borderRadius: BorderRadius.circular(4),
                                child: Image.file(
                                  File(snapshot.data!),
                                  width: 50,
                                  height: 70,
                                  fit: BoxFit.cover,
                                  errorBuilder: (context, error, stackTrace) {
                                    print('Error loading image: $error');
                                    return const Icon(Icons.book);
                                  },
                                ),
                              );
                            }
                            return const SizedBox(
                              width: 50,
                              height: 70,
                              child: Center(child: Icon(Icons.book)),
                            );
                          },
                        )
                      : const SizedBox(
                          width: 50,
                          height: 70,
                          child: Center(child: Icon(Icons.book)),
                        ),
                  title: Text(
                    manga.title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  subtitle: Text(manga.author),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () => context.push('/offline/manga/${manga.id}'),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
