import 'dart:io';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:webtoon_mobile/providers/manga/chapter_provider.dart';
import 'package:webtoon_mobile/providers/offline/offline_manga_provider.dart';
import 'package:webtoon_mobile/widgets/ChapterNavigationBar.dart';
import 'package:webtoon_mobile/widgets/ChapterPickerModal.dart';

class OfflineChapterScreen extends ConsumerStatefulWidget {
  final String mangaId;
  final String chapterId;

  const OfflineChapterScreen({
    super.key,
    required this.mangaId,
    required this.chapterId,
  });

  @override
  ConsumerState<OfflineChapterScreen> createState() =>
      _OfflineChapterScreenState();
}

class _OfflineChapterScreenState extends ConsumerState<OfflineChapterScreen> {
  final ScrollController _scrollController = ScrollController();
  bool _isAppBarVisible = true;
  int _currentPage = 1;
  double _lastScrollPosition = 0;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      _onScroll();
      _handleScroll();
    });
  }

  void _onScroll() {
    final currentPosition = _scrollController.position.pixels;
    if (currentPosition < _lastScrollPosition) {
      if (!_isAppBarVisible) {
        setState(() => _isAppBarVisible = true);
      }
    } else if (currentPosition > _lastScrollPosition) {
      if (_isAppBarVisible) {
        setState(() => _isAppBarVisible = false);
      }
    }
    _lastScrollPosition = currentPosition;
  }

  void _navigateToChapter(String chapterId) {
    ref.invalidate(chapterProvider(chapterId));
    context.go('/offline/chapter/${widget.mangaId}/$chapterId');
  }

  void _handleScroll() {
    if (mounted) {
      final imagePathsAsync = ref.read(offlineChapterImagePathsProvider((
        mangaId: widget.mangaId,
        chapterId: widget.chapterId,
      )));

      imagePathsAsync.whenData((imagePaths) {
        final pixels = _scrollController.position.pixels;
        final maxScrollExtent = _scrollController.position.maxScrollExtent;
        final viewportDimension = _scrollController.position.viewportDimension;

        setState(() {
          _currentPage = ((pixels / (maxScrollExtent + viewportDimension)) *
                  imagePaths.length)
              .ceil();
        });
      });
    }
  }

  void _showChapterPicker(AsyncValue<List<String>> chaptersAsync) {
    if (chaptersAsync.hasValue) {
      showModalBottomSheet(
        context: context,
        backgroundColor: Colors.transparent,
        isScrollControlled: true,
        builder: (context) => FutureBuilder<List<MapEntry<String, int>>>(
          future: Future.wait(
            chaptersAsync.value!.map((chapterId) async {
              final chapter = await ref
                  .read(offlineMangaServiceProvider)
                  .getChapter(widget.mangaId, chapterId);
              return MapEntry(chapterId, chapter?.number ?? 0);
            }),
          ),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const Center(child: CircularProgressIndicator());
            }
            final chapterNumbers = Map.fromEntries(snapshot.data!);
            return ChapterPickerModal(
              chapters: chaptersAsync.value!,
              currentChapter: widget.chapterId,
              onChapterSelected: _navigateToChapter,
              chapterNumbers: chapterNumbers,
            );
          },
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final chapterAsync = ref.watch(offlineChapterProvider((
      mangaId: widget.mangaId,
      chapterId: widget.chapterId,
    )));

    final imagePathsAsync = ref.watch(offlineChapterImagePathsProvider((
      mangaId: widget.mangaId,
      chapterId: widget.chapterId,
    )));

    final chaptersAsync = ref.watch(offlineChapterListProvider(widget.mangaId));

    return Scaffold(
      body: chapterAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('Lỗi: $error')),
        data: (chapter) {
          if (chapter == null) {
            return const Center(child: Text('Không tìm thấy chapter'));
          }

          return imagePathsAsync.when(
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (error, stack) => Center(child: Text('Lỗi: $error')),
            data: (imagePaths) => GestureDetector(
              child: Stack(
                children: [
                  CustomScrollView(
                    controller: _scrollController,
                    slivers: [
                      if (_isAppBarVisible)
                        SliverAppBar(
                          title: Text('Chapter ${chapter.number}'),
                          floating: true,
                          leading: IconButton(
                            icon: const Icon(Icons.arrow_back),
                            onPressed: () =>
                                context.go('/offline/manga/${widget.mangaId}'),
                          ),
                        ),
                      SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (context, index) => Image.file(
                            File(imagePaths[index]),
                            errorBuilder: (context, error, stackTrace) {
                              print('Lỗi tải ảnh: $error');
                              return const Center(
                                child: Text('Không thể tải ảnh'),
                              );
                            },
                          ),
                          childCount: imagePaths.length,
                        ),
                      ),
                      SliverToBoxAdapter(
                        child: SizedBox(height: 100),
                      ),
                    ],
                  ),
                  if (chaptersAsync.hasValue)
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: ChapterNavigationBar(
                        scrollController: _scrollController,
                        chapterNumber: chapter.number.toString(),
                        hasNextChapter:
                            chaptersAsync.value!.indexOf(widget.chapterId) > 0,
                        hasPreviousChapter:
                            chaptersAsync.value!.indexOf(widget.chapterId) <
                                chaptersAsync.value!.length - 1,
                        onNextChapter: () {
                          final chapters = chaptersAsync.value!;
                          final currentIndex =
                              chapters.indexOf(widget.chapterId);
                          _navigateToChapter(chapters[currentIndex - 1]);
                        },
                        onPreviousChapter: () {
                          final chapters = chaptersAsync.value!;
                          final currentIndex =
                              chapters.indexOf(widget.chapterId);
                          _navigateToChapter(chapters[currentIndex + 1]);
                        },
                        onChapterTap: () => _showChapterPicker(chaptersAsync),
                        isOffline: true,
                        currentPage: _currentPage,
                        totalPages: imagePaths.length,
                      ),
                    )
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
