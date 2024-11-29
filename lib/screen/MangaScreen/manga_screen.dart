import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:webtoon_mobile/models/manga/home/home.model.dart';
import 'package:webtoon_mobile/providers/manga/manga_provider.dart';
import 'package:webtoon_mobile/widgets/CustomAppbar.dart';
import 'package:webtoon_mobile/widgets/HomeScreen/MangaCard.dart';
import 'package:webtoon_mobile/widgets/HomeScreen/PopularManga.dart';

class MangaScreen extends ConsumerStatefulWidget {
  const MangaScreen({super.key});

  @override
  ConsumerState<MangaScreen> createState() => _MangaScreenState();
}

class _MangaScreenState extends ConsumerState<MangaScreen> {
  TimeFilter _selectedFilter = TimeFilter.today;
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final homeDataAsync = ref.watch(homeDataProvider);

    return Scaffold(
      appBar: CustomAppBar(
        title: 'Manga',
      ),
      body: RefreshIndicator(
        onRefresh: () => ref.refresh(refreshHomeDataProvider.future),
        child: homeDataAsync.when(
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (error, stack) {
            if (error.toString().contains('network_error')) {
              return const SizedBox.shrink();
            }
            return Center(child: Text('Lỗi: $error'));
          },
          data: (homeData) => CustomScrollView(
            controller: _scrollController,
            physics: const BouncingScrollPhysics(),
            slivers: [
              _buildPopularSection(homeData),
              _buildRecentUpdatesSection(homeData),
              _buildRandomSection(homeData),
              const SliverPadding(padding: EdgeInsets.only(bottom: 16)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFilterToggle() {
    return Container(
      height: 40,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          _buildFilterButton(TimeFilter.today, 'Hôm nay'),
          const SizedBox(width: 8),
          _buildFilterButton(TimeFilter.week, 'Tuần này'),
          const SizedBox(width: 8),
          _buildFilterButton(TimeFilter.allTime, 'Tất cả'),
        ],
      ),
    );
  }

  Widget _buildFilterButton(TimeFilter filter, String label) {
    final isSelected = _selectedFilter == filter;
    return Expanded(
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        child: ElevatedButton(
          onPressed: () => setState(() => _selectedFilter = filter),
          style: ElevatedButton.styleFrom(
            backgroundColor: isSelected
                ? Theme.of(context).colorScheme.primary
                : Theme.of(context).colorScheme.surface,
            foregroundColor: isSelected
                ? Theme.of(context).colorScheme.onPrimary
                : Theme.of(context).colorScheme.onSurface,
            elevation: isSelected ? 2 : 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide(
                color: isSelected
                    ? Colors.transparent
                    : Theme.of(context).colorScheme.outline,
              ),
            ),
          ),
          child: Text(
            label,
            style: const TextStyle(fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 24, 16, 16),
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
            ),
      ),
    );
  }

  Widget _buildPopularSection(HomeResponse homeData) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionTitle('Truyện nổi bật'),
          _buildFilterToggle(),
          const SizedBox(height: 16),
          _buildPopularMangaGrid(homeData),
        ],
      ),
    );
  }

  Widget _buildRecentUpdatesSection(HomeResponse homeData) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionTitle('Mới cập nhật'),
          _buildHorizontalMangaList(
            homeData.recentUpdated,
            (manga) => manga.latestUpdate != null
                ? 'Cập nhật: ${_formatDate(manga.latestUpdate!)}'
                : null,
          ),
        ],
      ),
    );
  }

  Widget _buildRandomSection(HomeResponse homeData) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionTitle('Có thể bạn thích'),
          _buildHorizontalMangaList(
            homeData.randomManga,
            (manga) => '${_formatNumber(manga.view)} lượt xem',
          ),
        ],
      ),
    );
  }

  Widget _buildPopularMangaGrid(HomeResponse homeData) {
    final List<MangaItem> mangas;
    final String Function(MangaItem) extraInfoBuilder;

    switch (_selectedFilter) {
      case TimeFilter.today:
        mangas = List.from(homeData.dailyTop)
          ..sort((a, b) => (b.viewToday ?? 0).compareTo(a.viewToday ?? 0));
        extraInfoBuilder = (manga) =>
            'Hôm nay: ${_formatNumber(manga.viewToday ?? 0)} lượt xem';
        break;
      case TimeFilter.week:
        mangas = List.from(homeData.weeklyTop)
          ..sort(
              (a, b) => (b.viewThisWeek ?? 0).compareTo(a.viewThisWeek ?? 0));
        extraInfoBuilder = (manga) =>
            'Tuần này: ${_formatNumber(manga.viewThisWeek ?? 0)} lượt xem';
        break;
      case TimeFilter.allTime:
        mangas = List.from(homeData.randomManga)
          ..sort((a, b) => b.view.compareTo(a.view));
        extraInfoBuilder = (manga) => '${_formatNumber(manga.view)} lượt xem';
        break;
    }

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.7,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemCount: mangas.length,
      itemBuilder: (context, index) {
        final manga = mangas[index];
        return PopularMangaCard(
          manga: manga,
          extraInfo: extraInfoBuilder(manga),
        );
      },
    );
  }

  Widget _buildHorizontalMangaList(
    List<MangaItem> mangas,
    String? Function(MangaItem manga) extraInfoBuilder,
  ) {
    return SizedBox(
      height: 280,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        physics: const BouncingScrollPhysics(),
        itemCount: mangas.length,
        itemBuilder: (context, index) {
          final manga = mangas[index];
          return Padding(
            padding: const EdgeInsets.only(right: 16),
            child: MangaCard(
              manga: manga,
              extraInfo: extraInfoBuilder(manga),
            ),
          );
        },
      ),
    );
  }

  String _formatNumber(int number) {
    if (number >= 1000000) {
      return '${(number / 1000000).toStringAsFixed(1)}M';
    } else if (number >= 1000) {
      return '${(number / 1000).toStringAsFixed(1)}K';
    }
    return number.toString();
  }

  String _formatDate(DateTime date) {
    final now = DateTime.now();
    final difference = now.difference(date);

    if (difference.inDays > 0) {
      return '${difference.inDays} ngày trước';
    } else if (difference.inHours > 0) {
      return '${difference.inHours} giờ trước';
    } else if (difference.inMinutes > 0) {
      return '${difference.inMinutes} phút trước';
    } else {
      return 'Vừa xong';
    }
  }
}

enum TimeFilter {
  today,
  week,
  allTime,
}
