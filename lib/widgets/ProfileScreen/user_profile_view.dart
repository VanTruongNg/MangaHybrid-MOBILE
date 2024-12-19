import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:webtoon_mobile/models/user/user.model.dart';
import '../../providers/auth/auth_state_provider.dart';

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
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authStateProvider);

    return authState.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) => Center(child: Text('Lỗi: $error')),
      data: (user) {
        if (user == null) {
          return const Center(
              child: Text('Không tìm thấy thông tin người dùng'));
        }

        return Column(
          children: [
            // Avatar và thông tin
            Container(
              padding: const EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Avatar bên trái
                  Flexible(
                    flex: 2,
                    child: Column(
                      children: [
                        LayoutBuilder(
                          builder: (context, constraints) {
                            final size = constraints.maxWidth * 0.5;
                            return CircleAvatar(
                              radius: size > 40 ? 40 : size,
                              backgroundColor: Colors.grey[300],
                              backgroundImage: user.avatarUrl != null
                                  ? NetworkImage(user.avatarUrl!)
                                  : null,
                              child: user.avatarUrl == null
                                  ? const Icon(Icons.person, size: 40)
                                  : null,
                            );
                          },
                        ),
                        const SizedBox(height: 8),
                        FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            user.name,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        if (user.email != null)
                          FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              user.email!,
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey[600],
                              ),
                            ),
                          ),
                        if (user.isVerified)
                          Container(
                            margin: const EdgeInsets.only(top: 4),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 2,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.blue[100],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.verified,
                                  size: 16,
                                  color: Colors.blue[700],
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  'Đã xác thực',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.blue[700],
                                  ),
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 16),
                  // Thống kê bên phải
                  Flexible(
                    flex: 3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: _buildStatItem(
                            user.uploadedManga.length.toString(),
                            'Truyện',
                          ),
                        ),
                        Expanded(
                          child: _buildStatItem(
                            user.followers.length.toString(),
                            'Người theo dõi',
                          ),
                        ),
                        Expanded(
                          child: _buildStatItem(
                            user.following.length.toString(),
                            'Đang theo dõi',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const Divider(),

            // TabBar
            TabBar(
              controller: _tabController,
              labelStyle: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
              unselectedLabelStyle: const TextStyle(
                fontSize: 13,
              ),
              tabs: const [
                Tab(text: 'Truyện'),
                Tab(text: 'Theo dõi'),
                Tab(text: 'Yêu thích'),
                Tab(text: 'Lịch sử'),
              ],
            ),

            // TabBarView
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  // Tab Truyện đã đăng
                  _buildMangaGrid(
                    user.uploadedManga,
                    'Chưa có truyện nào',
                  ),

                  // Tab Truyện đang theo dõi
                  _buildMangaGrid(
                    user.followingManga,
                    'Chưa theo dõi truyện nào',
                  ),

                  // Tab Truyện yêu thích
                  _buildMangaGrid(
                    user.favoritesManga,
                    'Chưa có truyện yêu thích nào',
                  ),

                  // Tab Lịch sử đọc
                  user.readingHistory.isEmpty
                      ? Center(
                          child: Text(
                            'Chưa có lịch sử đọc truyện',
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                        )
                      : ListView.builder(
                          padding: const EdgeInsets.all(8),
                          itemCount: user.readingHistory.length,
                          itemBuilder: (context, index) {
                            final history = user.readingHistory[index];
                            return Card(
                              child: ListTile(
                                leading: Container(
                                  width: 50,
                                  height: 70,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    image: history.manga.coverImg != null
                                        ? DecorationImage(
                                            image: NetworkImage(
                                                history.manga.coverImg!),
                                            fit: BoxFit.cover,
                                          )
                                        : null,
                                  ),
                                  child: history.manga.coverImg == null
                                      ? Container(
                                          color: Colors.grey[300],
                                          child: const Icon(
                                              Icons.image_not_supported),
                                        )
                                      : null,
                                ),
                                title: Text(history.manga.title),
                                subtitle: Text(
                                  'Chapter ${history.chapters.last.chapter.chapterName}',
                                ),
                                onTap: () =>
                                    context.push('/manga/${history.manga.id}'),
                              ),
                            );
                          },
                        ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildMangaGrid(List<MangaBasicModel> mangas, String emptyMessage) {
    if (mangas.isEmpty) {
      return Center(
        child: Text(
          emptyMessage,
          style: TextStyle(color: Colors.grey[600]),
        ),
      );
    }

    return GridView.builder(
      padding: const EdgeInsets.all(8),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 0.7,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      itemCount: mangas.length,
      itemBuilder: (context, index) {
        final manga = mangas[index];
        return GestureDetector(
          onTap: () => context.push('/manga/${manga.id}'),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: manga.coverImg != null
                  ? DecorationImage(
                      image: NetworkImage(manga.coverImg!),
                      fit: BoxFit.cover,
                    )
                  : null,
            ),
            child: manga.coverImg == null
                ? Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Icon(Icons.image_not_supported),
                  )
                : null,
          ),
        );
      },
    );
  }

  Widget _buildStatItem(String value, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            value,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 4),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }
}
