import 'dart:async';
import 'dart:collection';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
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
  Timer? _scrollThrottle;
  final ScrollController _scrollController = ScrollController();
  final _currentPageNotifier = ValueNotifier<int>(1);
  final _visibleItems = <int>{};
  final _preloadDistance = 5;
  bool _isAppBarVisible = true;
  double _lastScrollPosition = 0;
  final Map<int, double> _imageHeights = {};
  final _imagePlaceholderHeight = 800.0;
  final _screenWidth = WidgetsBinding.instance.window.physicalSize.width / 
                      WidgetsBinding.instance.window.devicePixelRatio;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_throttledScrollHandler);
    _startReadTimer();
  }

  @override
  void dispose() {
    _scrollThrottle?.cancel();
    _readTimer?.cancel();
    _scrollController.dispose();
    _currentPageNotifier.dispose();
    super.dispose();
  }

  void _updateVisibleItems() {
    if (!mounted || !_scrollController.hasClients) return;

    try {
      final viewport = _scrollController.position.viewportDimension;
      final start = _scrollController.offset;
      final end = start + viewport;

      final firstVisible = (start / viewport).floor();
      final lastVisible = (end / viewport).ceil();

      final newVisibleItems = <int>{};
      for (var i = firstVisible - _preloadDistance * 2;
          i <= lastVisible + _preloadDistance * 2;
          i++) {
        if (i >= 0) newVisibleItems.add(i);
      }

      if (mounted && !_visibleItems.containsAll(newVisibleItems)) {
        setState(() {
          _visibleItems.clear();
          _visibleItems.addAll(newVisibleItems);
        });
      }
    } catch (e) {
      print('Error updating visible items: $e');
    }
  }

  void _throttledScrollHandler() {
    if (_scrollThrottle?.isActive ?? false) return;
    _scrollThrottle = Timer(const Duration(milliseconds: 100), () {
      if (mounted) {
        _onScroll();
        _handleScroll();
        _updateVisibleItems();
      }
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

  void _handleScroll() {
    if (!_scrollController.hasClients) return;

    final chapterAsync = ref.read(chapterProvider(widget.chapterId));
    chapterAsync.whenData((chapter) {
      final pixels = _scrollController.position.pixels;
      final maxScrollExtent = _scrollController.position.maxScrollExtent;
      final viewportDimension = _scrollController.position.viewportDimension;

      _currentPageNotifier.value =
          ((pixels / (maxScrollExtent + viewportDimension)) *
                  chapter.pagesUrl.length)
              .ceil();
    });
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

  void _updateImageHeight(int index, double height) {
    if (_imageHeights[index] != height) {
      setState(() {
        _imageHeights[index] = height;
      });
    }
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
        data: (chapter) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            _updateVisibleItems();
          });

          return Stack(
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
                          context.go('/manga/${chapter.manga.id}');
                        },
                      ),
                    ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        if (!_visibleItems.contains(index)) {
                          return SizedBox(
                            height: _imageHeights[index] ?? _imagePlaceholderHeight,
                            width: _screenWidth,
                          );
                        }
                        return Column(
                          children: [
                            CachedNetworkImage(
                              imageUrl: chapter.pagesUrl[index],
                              progressIndicatorBuilder: (context, url, progress) => SizedBox(
                                height: _imageHeights[index] ?? _imagePlaceholderHeight,
                                width: _screenWidth,
                                child: Center(
                                  child: CircularProgressIndicator(
                                    value: progress.progress,
                                    strokeWidth: 2,
                                  ),
                                ),
                              ),
                              errorWidget: (context, url, error) => SizedBox(
                                height: _imageHeights[index] ?? _imagePlaceholderHeight,
                                width: _screenWidth,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text('Không thể tải ảnh'),
                                    ElevatedButton(
                                      onPressed: () {
                                        CachedNetworkImage.evictFromCache(url);
                                        setState(() {});
                                      },
                                      child: const Text('Thử lại'),
                                    ),
                                  ],
                                ),
                              ),
                              imageBuilder: (context, imageProvider) {
                                return Container(
                                  width: _screenWidth,
                                  constraints: BoxConstraints(
                                    minWidth: _screenWidth,
                                  ),
                                  child: Image(
                                    image: imageProvider,
                                    fit: BoxFit.fitWidth,
                                    width: _screenWidth,
                                    frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
                                      WidgetsBinding.instance.addPostFrameCallback((_) {
                                        if (frame != null) {
                                          final RenderBox? renderBox = context.findRenderObject() as RenderBox?;
                                          if (renderBox != null) {
                                            _updateImageHeight(index, renderBox.size.height);
                                          }
                                        }
                                      });
                                      
                                      if (wasSynchronouslyLoaded) return child;
                                      return AnimatedOpacity(
                                        opacity: frame == null ? 0 : 1,
                                        duration: const Duration(milliseconds: 300),
                                        curve: Curves.easeOut,
                                        child: child,
                                      );
                                    },
                                  ),
                                );
                              },
                              cacheManager: DefaultCacheManager(),
                              maxHeightDiskCache: 2000,
                              memCacheWidth: _screenWidth.toInt(),
                              memCacheHeight: (_imagePlaceholderHeight * 1.2).toInt(),
                            ),
                            const SizedBox(height: 1),
                          ],
                        );
                      },
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
                    currentPage: _currentPageNotifier.value,
                    totalPages: chapter.pagesUrl.length,
                    isOffline: false,
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}
