import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:webtoon_mobile/utils/FormatDate.dart';
import 'package:webtoon_mobile/providers/manga/manga_interaction_provider.dart';

class MangaActions extends ConsumerWidget {
  final String mangaId;
  final String? firstChapterId;
  final int likes;
  final int dislikes;
  final int followers;
  final double rating;
  final int ratingCount;

  const MangaActions({
    super.key,
    required this.mangaId,
    required this.firstChapterId,
    required this.likes,
    required this.dislikes,
    required this.followers,
    required this.rating,
    required this.ratingCount,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final interaction = ref.watch(mangaInteractionProvider((
      mangaId: mangaId,
      likeCount: likes,
      followCount: followers,
    )));

    return Container(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: theme.shadowColor.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                onPressed: firstChapterId != null 
                  ? () => context.push('/chapter/$firstChapterId')
                  : null,
                icon: const Icon(Icons.play_arrow),
                label: const Text('Đọc ngay'),
              ),
              _buildActionButton(
                context,
                icon: Icons.star_outline,
                label: '${rating.toStringAsFixed(1)} ★',
                sublabel:
                    '${NumberFormatter.formatCompact(ratingCount)} đánh giá',
                onPressed: () => print('Rate manga: $mangaId'),
              ),
              _buildDivider(context),
              _buildActionButton(
                context,
                icon: interaction.isFollowing
                    ? Icons.bookmark
                    : Icons.bookmark_outline,
                iconColor: interaction.isFollowing ? Colors.blue : null,
                label:
                    NumberFormatter.formatCompact(interaction.localFollowCount),
                sublabel: 'Theo dõi',
                onPressed: interaction.isLoading
                    ? null
                    : () async {
                        try {
                          await ref
                              .read(mangaInteractionProvider((
                                mangaId: mangaId,
                                likeCount: likes,
                                followCount: followers,
                              )).notifier)
                              .toggleFollow(context);
                        } catch (e) {
                          if (context.mounted) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Có lỗi xảy ra: $e')),
                            );
                          }
                        }
                      },
              ),
              _buildDivider(context),
              _buildActionButton(
                context,
                icon: interaction.isLiked
                    ? Icons.thumb_up
                    : Icons.thumb_up_outlined,
                iconColor: interaction.isLiked ? Colors.red : null,
                label:
                    NumberFormatter.formatCompact(interaction.localLikeCount),
                sublabel: 'Thích',
                onPressed: interaction.isLoading
                    ? null
                    : () async {
                        try {
                          await ref
                              .read(mangaInteractionProvider((
                                mangaId: mangaId,
                                likeCount: likes,
                                followCount: followers,
                              )).notifier)
                              .toggleLike(context);
                        } catch (e) {
                          if (context.mounted) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Có lỗi xảy ra: $e')),
                            );
                          }
                        }
                      },
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildActionButton(
    BuildContext context, {
    required IconData icon,
    Color? iconColor,
    required String label,
    required String sublabel,
    required VoidCallback? onPressed,
  }) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(8),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Column(
          children: [
            Icon(icon, size: 24, color: iconColor),
            const SizedBox(height: 4),
            Text(
              label,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              sublabel,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDivider(BuildContext context) {
    return Container(
      height: 24,
      width: 1,
      color: Theme.of(context).dividerColor,
    );
  }
}
