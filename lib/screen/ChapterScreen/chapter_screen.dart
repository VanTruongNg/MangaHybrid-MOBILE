import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:webtoon_mobile/providers/manga/chapter_provider.dart';
import 'package:webtoon_mobile/providers/connectivity_provider.dart';
import 'package:webtoon_mobile/screen/offline_screen.dart';

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
  final ScrollController _scrollController = ScrollController();
  bool _isAppBarVisible = true;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _updateChapterView();
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >
            _scrollController.position.minScrollExtent &&
        _isAppBarVisible) {
      setState(() => _isAppBarVisible = false);
    } else if (_scrollController.position.pixels <=
            _scrollController.position.minScrollExtent &&
        !_isAppBarVisible) {
      setState(() => _isAppBarVisible = true);
    }
  }

  Future<void> _updateChapterView() async {
    await ref.read(chapterViewProvider(widget.chapterId).future);
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
                    title: Text(chapter.chapterInfo.chapterName),
                    floating: true,
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
                left: 0,
                right: 0,
                bottom: 0,
                child: AnimatedOpacity(
                  opacity: _isAppBarVisible ? 1.0 : 0.0,
                  duration: const Duration(milliseconds: 200),
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 4,
                          offset: const Offset(0, -2),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        if (chapter.navigation?.prevChapter != null)
                          Expanded(
                            child: ElevatedButton.icon(
                              onPressed: () {
                                ref.invalidate(
                                    chapterProvider(widget.chapterId));
                                context.push(
                                    '/chapter/${chapter.navigation!.prevChapter!.id}');
                              },
                              icon: const Icon(Icons.arrow_back),
                              label: const Text('Chapter trước'),
                            ),
                          ),
                        if (chapter.navigation?.prevChapter != null &&
                            chapter.navigation?.nextChapter != null)
                          const SizedBox(width: 16),
                        if (chapter.navigation?.nextChapter != null)
                          Expanded(
                            child: ElevatedButton.icon(
                              onPressed: () {
                                ref.invalidate(
                                    chapterProvider(widget.chapterId));
                                context.push(
                                    '/chapter/${chapter.navigation!.nextChapter!.id}');
                              },
                              icon: const Icon(Icons.arrow_forward),
                              label: const Text('Chapter sau'),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
