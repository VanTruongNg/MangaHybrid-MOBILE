import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:webtoon_mobile/models/manga/manga.model.dart';
import 'package:webtoon_mobile/models/comment/comment_reply.model.dart';
import 'package:webtoon_mobile/providers/manga/comment_replies_provider.dart';
import 'package:webtoon_mobile/utils/FormatDate.dart';
import 'package:flutter/gestures.dart';

class MangaCommentSection extends ConsumerWidget {
  final List<CommentInfo> comments;

  const MangaCommentSection({
    super.key,
    required this.comments,
  });

  Widget _buildReplyContent(BuildContext context, CommentReply reply) {
    if (reply.mentions.isEmpty) {
      return Text(reply.content);
    }

    final sortedMentions = List<MentionInfo>.from(reply.mentions)
      ..sort((a, b) => a.startIndex.compareTo(b.startIndex));

    List<TextSpan> textSpans = [];
    int currentIndex = 0;

    for (var mention in sortedMentions) {
      if (currentIndex < mention.startIndex) {
        textSpans.add(TextSpan(
          text: reply.content.substring(currentIndex, mention.startIndex),
        ));
      }

      textSpans.add(TextSpan(
        text: reply.content.substring(mention.startIndex, mention.endIndex),
        style: const TextStyle(
          color: Colors.blue,
          fontWeight: FontWeight.bold,
        ),
        recognizer: TapGestureRecognizer()
          ..onTap = () {
            context.push('/user/${mention.userId.id}');
          },
      ));

      currentIndex = mention.endIndex;
    }

    if (currentIndex < reply.content.length) {
      textSpans.add(TextSpan(
        text: reply.content.substring(currentIndex),
      ));
    }

    return RichText(
      text: TextSpan(
        style: DefaultTextStyle.of(context).style,
        children: textSpans,
      ),
    );
  }

  void _showReplies(BuildContext context, CommentInfo comment) {
    showModalBottomSheet(
      context: context,
      builder: (context) => _RepliesBottomSheet(
        comment: comment,
        onBuildReplyContent: _buildReplyContent,
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (comments.isEmpty) return const SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Bình luận',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: comments.length,
          itemBuilder: (context, index) {
            final comment = comments[index];
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          child: Text(comment.user.name?[0] ?? ''),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                comment.user.name ?? '',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                DateFormatter.formatTimeAgo(comment.createdAt),
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(comment.content),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        TextButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.reply),
                          label: const Text('Trả lời'),
                        ),
                        if (comment.replies.isNotEmpty)
                          TextButton(
                            onPressed: () => _showReplies(context, comment),
                            child: Text(
                              '${comment.replies.length} phản hồi',
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}

class _RepliesBottomSheet extends ConsumerWidget {
  final CommentInfo comment;
  final Widget Function(BuildContext, CommentReply) onBuildReplyContent;

  const _RepliesBottomSheet({
    required this.comment,
    required this.onBuildReplyContent,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Phản hồi',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Expanded(
            child: Consumer(
              builder: (context, ref, child) {
                final repliesAsync =
                    ref.watch(commentRepliesProvider(comment.id));
                return repliesAsync.when(
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  error: (error, stack) => Center(child: Text('Lỗi: $error')),
                  data: (replies) {
                    final sortedReplies = List.from(replies)
                      ..sort((a, b) => b.createdAt.compareTo(a.createdAt));
                    return ListView.builder(
                      itemCount: sortedReplies.length,
                      itemBuilder: (context, index) {
                        final reply = sortedReplies[index];
                        return Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      child: Text(reply.user.name?[0] ?? ''),
                                    ),
                                    const SizedBox(width: 8),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            reply.user.name ?? '',
                                            style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            DateFormatter.formatTimeAgo(
                                                reply.createdAt),
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 8),
                                onBuildReplyContent(context, reply),
                                const SizedBox(height: 8),
                                InkWell(
                                  onTap: () {
                                    // TODO: Implement reply to reply
                                    print('Reply to: ${reply.user.name}');
                                  },
                                  child: Text(
                                    'Trả lời',
                                    style: TextStyle(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
