import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:webtoon_mobile/providers/auth/auth_state_provider.dart';
import 'package:intl/intl.dart';
import 'package:webtoon_mobile/models/user/user.model.dart';

class UserProfileView extends ConsumerWidget {
  const UserProfileView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(authStateProvider).value!;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Avatar và thông tin cơ bản
          Center(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: user.avatarUrl != null
                      ? NetworkImage(user.avatarUrl!)
                      : null,
                  child: user.avatarUrl == null
                      ? const Icon(Icons.person, size: 50)
                      : null,
                ),
                const SizedBox(height: 16),
                Text(
                  user.name,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                Text(
                  user.email,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(height: 8),
                if (user.isVerified)
                  const Chip(
                    avatar: Icon(Icons.verified, color: Colors.blue, size: 20),
                    label: Text('Đã xác thực'),
                  ),
              ],
            ),
          ),
          const SizedBox(height: 24),

          // Thống kê
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildStatItem('Người theo dõi', user.followers.length),
              _buildStatItem('Đang theo dõi', user.following.length),
              _buildStatItem('Truyện đã đăng', user.uploadedManga.length),
            ],
          ),
          const SizedBox(height: 24),

          // Danh sách truyện
          if (user.uploadedManga.isNotEmpty) ...[
            _buildSectionTitle('Truyện đã đăng'),
            _buildMangaList(user.uploadedManga),
          ],

          if (user.favoritesManga.isNotEmpty) ...[
            _buildSectionTitle('Truyện yêu thích'),
            _buildMangaList(user.favoritesManga),
          ],

          if (user.followingManga.isNotEmpty) ...[
            _buildSectionTitle('Truyện đang theo dõi'),
            _buildMangaList(user.followingManga),
          ],

          // Lịch sử đọc
          if (user.readingHistory.isNotEmpty) ...[
            _buildSectionTitle('Lịch sử đọc'),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: user.readingHistory.length,
              itemBuilder: (context, index) {
                final history = user.readingHistory[index];
                return ListTile(
                  leading: history.manga.coverImg != null
                      ? Image.network(
                          history.manga.coverImg!,
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        )
                      : const Icon(Icons.book),
                  title: Text(history.manga.title),
                  subtitle: Text(
                    'Chapter ${history.chapter.number}${history.chapter.chapterTitle != null ? " - ${history.chapter.chapterTitle}" : ""}\n${_formatDate(history.updatedAt)}',
                  ),
                  isThreeLine: true,
                );
              },
            ),
          ],

          // Bình luận
          if (user.comments.isNotEmpty) ...[
            _buildSectionTitle('Bình luận gần đây'),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: user.comments.length,
              itemBuilder: (context, index) {
                final comment = user.comments[index];
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(comment.content),
                        const SizedBox(height: 4),
                        Text(
                          _formatDate(comment.createdAt),
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],

          // Đánh giá
          if (user.ratings.isNotEmpty) ...[
            _buildSectionTitle('Đánh giá gần đây'),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: user.ratings.length,
              itemBuilder: (context, index) {
                final rating = user.ratings[index];
                return ListTile(
                  leading: rating.manga.coverImg != null
                      ? Image.network(
                          rating.manga.coverImg!,
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        )
                      : const Icon(Icons.book),
                  title: Text(rating.manga.title),
                  subtitle: Row(
                    children: [
                      ...List.generate(
                        5,
                        (index) => Icon(
                          index < rating.rating.floor()
                              ? Icons.star
                              : Icons.star_border,
                          size: 16,
                          color: Colors.amber,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(_formatDate(rating.createdAt)),
                    ],
                  ),
                );
              },
            ),
          ],

          const SizedBox(height: 16),
          Center(
            child: Text(
              'Tham gia từ: ${DateFormat('dd/MM/yyyy').format(user.createdAt)}',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatItem(String label, int value) {
    return Column(
      children: [
        Text(
          value.toString(),
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(label),
      ],
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildMangaList(List<MangaBasicModel> mangas) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: mangas.length,
        itemBuilder: (context, index) {
          final manga = mangas[index];
          return Card(
            child: SizedBox(
              width: 120,
              child: Column(
                children: [
                  if (manga.coverImg != null)
                    Expanded(
                      child: Image.network(
                        manga.coverImg!,
                        fit: BoxFit.cover,
                      ),
                    ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      manga.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  String _formatDate(DateTime date) {
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
