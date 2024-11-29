import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:webtoon_mobile/providers/manga/chapter_provider.dart';
import 'package:webtoon_mobile/providers/connectivity_provider.dart';
import 'package:webtoon_mobile/screen/offline/offline_screen.dart';
import 'package:webtoon_mobile/widgets/ChapterNavigationBar.dart';

class ChapterScreen extends ConsumerStatefulWidget {
  final String chapterId;

  const ChapterScreen({
    super.key,
    required this.chapterId,
  });

  @override
  ConsumerState<ChapterScreen> createState() => _ChapterScreenState();
}

class _ChapterScreenState extends ConsumerState<ChapterScreen> {
  Timer? _readTimer;
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
    _startReadTimer();
  }

  @override
  void dispose() {
    _readTimer?.cancel();
    _scrollController.dispose();
    super.dispose();
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

  void _handleScroll() {
    if (mounted) {
      final chapterAsync = ref.read(chapterProvider(widget.chapterId));

      chapterAsync.whenData((chapter) {
        final pixels = _scrollController.position.pixels;
        final maxScrollExtent = _scrollController.position.maxScrollExtent;
        final viewportDimension = _scrollController.position.viewportDimension;

        setState(() {
          _currentPage = ((pixels / (maxScrollExtent + viewportDimension)) *
                  chapter.pagesUrl.length)
              .ceil();
        });
      });
    }
  }

  void _startReadTimer() {
    _readTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      final currentDuration =
          ref.read(chapterReadDurationProvider(widget.chapterId));
      ref.read(chapterReadDurationProvider(widget.chapterId).notifier).state =
          currentDuration + const Duration(seconds: 1);

      final shouldUpdate = ref.read(shouldUpdateViewProvider(widget.chapterId));
      final hasUpdated = ref.read(hasUpdatedViewProvider(widget.chapterId));

      if (shouldUpdate && !hasUpdated) {
        _updateChapterView();
        ref.read(hasUpdatedViewProvider(widget.chapterId).notifier).state =
            true;
        timer.cancel();
      }
    });
  }

  Future<void> _updateChapterView() async {
    final hasUpdated = ref.read(hasUpdatedViewProvider(widget.chapterId));
    if (!hasUpdated) {
      await ref.read(chapterViewProvider(widget.chapterId).future);
    }
  }

  void _navigateToChapter(String chapterId) {
    ref.invalidate(chapterProvider(chapterId));
    context.go('/chapter/$chapterId');
  }

  @override
  Widget build(BuildContext context) {
    final isOnline = ref.watch(isOnlineProvider);

    if (!isOnline) {
      return const OfflineScreen();
    }

    final chapterAsync = ref.watch(chapterProvider(widget.chapterId));

    return Scaffold(
      body: chapterAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('Lỗi: $error')),
        data: (chapter) => Stack(
          children: [
            CustomScrollView(
              controller: _scrollController,
              slivers: [
                if (_isAppBarVisible)
                  SliverAppBar(
                    floating: true,
                    leading: IconButton(
                      icon: const Icon(Icons.arrow_back),
                      onPressed: () {
                        final chapterAsync =
                            ref.read(chapterProvider(widget.chapterId));
                        chapterAsync.whenData((chapter) {
                          context.go('/manga/${chapter.manga.id}');
                        });
                      },
                    ),
                  ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) => Image.network(
                      chapter.pagesUrl[index],
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) return child;
                        return Center(
                          child: CircularProgressIndicator(
                            value: loadingProgress.expectedTotalBytes != null
                                ? loadingProgress.cumulativeBytesLoaded /
                                    loadingProgress.expectedTotalBytes!
                                : null,
                          ),
                        );
                      },
                      errorBuilder: (context, error, stackTrace) {
                        return const Center(
                          child: Text('Không thể tải ảnh'),
                        );
                      },
                    ),
                    childCount: chapter.pagesUrl.length,
                  ),
                ),
              ],
            ),
            if (chapter.navigation != null)
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: ChapterNavigationBar(
                  scrollController: _scrollController,
                  chapterNumber: chapter.number?.toString() ?? '',
                  hasNextChapter: chapter.navigation?.nextChapter != null,
                  hasPreviousChapter: chapter.navigation?.prevChapter != null,
                  onNextChapter: chapter.navigation?.nextChapter != null
                      ? () => _navigateToChapter(
                          chapter.navigation!.nextChapter!.id)
                      : null,
                  onPreviousChapter: chapter.navigation?.prevChapter != null
                      ? () => _navigateToChapter(
                          chapter.navigation!.prevChapter!.id)
                      : null,
                  currentPage: _currentPage,
                  totalPages: chapter.pagesUrl.length,
                  isOffline: false,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
