import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:webtoon_mobile/providers/auth/auth_state_provider.dart';
import 'package:intl/intl.dart';
import 'package:webtoon_mobile/models/user/user.model.dart';
import 'package:go_router/go_router.dart';

class UserProfileView extends ConsumerStatefulWidget {
  const UserProfileView({super.key});

  @override
  ConsumerState<UserProfileView> createState() => _UserProfileViewState();
}

class _UserProfileViewState extends ConsumerState<UserProfileView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final user = ref.watch(authStateProvider).value!;

    return DefaultTabController(
      length: 3,
      child: SizedBox(
        height: MediaQuery.of(context).size.height -
            200, // Trừ đi chiều cao của appbar và padding
        child: Column(
          children: [
            // Header với avatar và thống kê
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  // Avatar
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: user.avatarUrl != null
                        ? NetworkImage(user.avatarUrl!)
                        : null,
                    child: user.avatarUrl == null
                        ? const Icon(Icons.person, size: 40)
                        : null,
                  ),
                  const SizedBox(width: 24),
                  // Thống kê
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildStatColumn('Truyện', user.uploadedManga.length),
                        _buildStatColumn(
                            'Người theo dõi', user.followers.length),
                        _buildStatColumn(
                            'Đang theo dõi', user.following.length),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),

            // Thông tin người dùng
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    user.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(user.email),
                  if (user.isVerified)
                    Row(
                      children: const [
                        Icon(Icons.verified, color: Colors.blue, size: 16),
                        SizedBox(width: 4),
                        Text(
                          'Đã xác thực',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                ],
              ),
            ),
            const SizedBox(height: 16),

            // Tab Bar
            TabBar(
              controller: _tabController,
              tabs: const [
                Tab(icon: Icon(Icons.grid_on), text: 'Truyện'),
                Tab(icon: Icon(Icons.history), text: 'Lịch sử'),
                Tab(icon: Icon(Icons.favorite), text: 'Yêu thích'),
              ],
            ),

            // Tab Bar View
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  // Tab Truyện đã đăng
                  _buildMangaGrid(user.uploadedManga),

                  // Tab Lịch sử đọc
                  _buildReadingHistoryList(user.readingHistory),

                  // Tab Truyện yêu thích
                  _buildMangaGrid(user.favoritesManga),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatColumn(String label, int count) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          count.toString(),
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          label,
          style: const TextStyle(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }

  Widget _buildMangaGrid(List<MangaBasicModel> mangas) {
    if (mangas.isEmpty) {
      return const Center(
        child: Text('Chưa có truyện nào'),
      );
    }

    return GridView.builder(
      padding: const EdgeInsets.all(1),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 0.7,
        crossAxisSpacing: 1,
        mainAxisSpacing: 1,
      ),
      itemCount: mangas.length,
      itemBuilder: (context, index) {
        final manga = mangas[index];
        return GestureDetector(
          onTap: () {
            context.push('/manga/${manga.id}');
          },
          child: Container(
            decoration: BoxDecoration(
              image: manga.coverImg != null
                  ? DecorationImage(
                      image: NetworkImage(manga.coverImg!),
                      fit: BoxFit.cover,
                    )
                  : null,
              color: Colors.grey[300],
            ),
            child: manga.coverImg == null
                ? Center(
                    child: Text(
                      manga.title,
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 12),
                    ),
                  )
                : null,
          ),
        );
      },
    );
  }

  Widget _buildReadingHistoryList(List<ReadingHistoryModel> history) {
    if (history.isEmpty) {
      return const Center(
        child: Text('Chưa có lịch sử đọc'),
      );
    }

    return ListView.builder(
      itemCount: history.length,
      itemBuilder: (context, index) {
        final item = history[index];
        final lastChapter =
            item.chapters.isNotEmpty ? item.chapters.last : null;
        return ListTile(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: SizedBox(
              width: 50,
              height: 140,
              child: item.manga.coverImg != null
                  ? Image.network(
                      item.manga.coverImg!,
                      width: 50,
                      height: 140,
                      fit: BoxFit.cover,
                    )
                  : Container(
                      color: Colors.grey[300],
                      child: const Icon(Icons.book),
                    ),
            ),
          ),
          title: Text(item.manga.title),
          subtitle: Text(
            lastChapter != null
                ? '${lastChapter.chapter.chapterName}\n${_formatDate(lastChapter.readAt)}'
                : _formatDate(item.updatedAt),
          ),
          isThreeLine: true,
          onTap: () {
            context.push('/manga/${item.manga.id}');
          },
        );
      },
    );
  }

  String _formatDate(String dateString) {
    final date = DateTime.parse(dateString);
    final now = DateTime.now();
    final difference = now.difference(date);

    if (difference.inDays > 7) {
      return DateFormat('dd/MM/yyyy').format(date);
    } else if (difference.inDays > 0) {
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
