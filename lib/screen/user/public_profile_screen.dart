import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../providers/user/public_profile_provider.dart';
import '../../providers/user/follow_provider.dart';
import '../../models/user/public_profile.model.dart';

class PublicProfileScreen extends ConsumerWidget {
  final String userId;

  const PublicProfileScreen({
    super.key,
    required this.userId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profileAsync = ref.watch(publicProfileProvider(userId));
    final followAsync = ref.watch(followProvider(userId));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Hồ sơ'),
      ),
      body: profileAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(
          child: Text('Đã có lỗi xảy ra: $error'),
        ),
        data: (profile) => Column(
          children: [
            // Header với avatar và thông tin
            Container(
              padding: const EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Avatar và tên bên trái
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.grey[300],
                        backgroundImage: profile.avatarUrl != null
                            ? NetworkImage(profile.avatarUrl!)
                            : null,
                        child: profile.avatarUrl == null
                            ? const Icon(Icons.person, size: 40)
                            : null,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        profile.name,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 32),
                  // Thông số và buttons bên phải
                  Expanded(
                    child: Column(
                      children: [
                        // Thông số
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            _buildStatItem(
                              profile.uploadedManga.length.toString(),
                              'Truyện',
                            ),
                            _buildStatItem(
                              profile.followers.length.toString(),
                              'Người theo dõi',
                            ),
                            _buildStatItem(
                              profile.following.length.toString(),
                              'Đang theo dõi',
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        // Buttons
                        Row(
                          children: [
                            Expanded(
                              child: followAsync.when(
                                loading: () => const ElevatedButton(
                                  onPressed: null,
                                  child: SizedBox(
                                    height: 20,
                                    width: 20,
                                    child: CircularProgressIndicator(
                                      strokeWidth: 2,
                                    ),
                                  ),
                                ),
                                error: (error, stack) => ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.red,
                                    foregroundColor: Colors.white,
                                  ),
                                  child: const Text('Lỗi'),
                                ),
                                data: (isFollowing) => ElevatedButton(
                                  onPressed: () {
                                    ref.read(followProvider(userId).notifier).toggleFollow();
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: isFollowing
                                        ? Colors.grey[300]
                                        : Theme.of(context).colorScheme.primary,
                                    foregroundColor: isFollowing
                                        ? Colors.black87
                                        : Colors.white,
                                    padding: const EdgeInsets.symmetric(vertical: 8),
                                  ),
                                  child: Text(isFollowing ? 'Đang theo dõi' : 'Theo dõi'),
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: OutlinedButton(
                                onPressed: () {
                                  context.push('/chat');
                                },
                                style: OutlinedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(vertical: 8),
                                ),
                                child: const Text('Nhắn tin'),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const Divider(),

            // Manga đã đăng
            Expanded(
              child: profile.uploadedManga.isEmpty
                  ? Center(
                      child: Text(
                        'Chưa có truyện nào',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    )
                  : GridView.builder(
                      padding: const EdgeInsets.all(8),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 0.7,
                        crossAxisSpacing: 8,
                        mainAxisSpacing: 8,
                      ),
                      itemCount: profile.uploadedManga.length,
                      itemBuilder: (context, index) {
                        final manga = profile.uploadedManga[index];
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
                    ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatItem(String value, String label) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          label,
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 14,
          ),
        ),
      ],
    );
  }
} 