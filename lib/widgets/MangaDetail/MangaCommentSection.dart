import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:webtoon_mobile/models/manga/manga.model.dart';
import 'package:webtoon_mobile/models/comment/comment_reply.model.dart';
import 'package:webtoon_mobile/providers/manga/comment_replies_provider.dart';
import 'package:webtoon_mobile/providers/auth/auth_state_provider.dart';
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

    final authState = ref.watch(authStateProvider);
    final isAuthenticated = authState.value != null;

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
        if (isAuthenticated)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: const InputDecoration(
                      hintText: 'Viết bình luận...',
                      border: OutlineInputBorder(),
                    ),
                    maxLines: null,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: () {
                    // TODO: Implement send comment
                  },
                ),
              ],
            ),
          )
        else
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                const Icon(Icons.info_outline),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    'Vui lòng đăng nhập để bình luận',
                    style: TextStyle(
                      color: Colors.grey[700],
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () => context.push('/login'),
                  child: const Text('Đăng nhập'),
                ),
              ],
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
                        if (isAuthenticated)
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

class _RepliesBottomSheet extends ConsumerStatefulWidget {
  final CommentInfo comment;
  final Widget Function(BuildContext, CommentReply) onBuildReplyContent;

  const _RepliesBottomSheet({
    required this.comment,
    required this.onBuildReplyContent,
  });

  @override
  _RepliesBottomSheetState createState() => _RepliesBottomSheetState();
}

class _RepliesBottomSheetState extends ConsumerState<_RepliesBottomSheet> {
  CommentReply? replyingTo;
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _setReplyingTo(CommentReply reply) {
    setState(() {
      replyingTo = reply;
      _controller.text = '@${reply.user.name} ';
    });
  }

  void _clearReplyingTo() {
    setState(() {
      replyingTo = null;
      _controller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authStateProvider);
    final isAuthenticated = authState.value != null;

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
          if (isAuthenticated) ...[
            if (replyingTo != null)
              Container(
                padding: const EdgeInsets.all(8),
                margin: const EdgeInsets.only(bottom: 8),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          style: DefaultTextStyle.of(context).style,
                          children: [
                            const TextSpan(
                              text: 'Đang trả lời ',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            TextSpan(
                              text: replyingTo!.user.name,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.close, size: 20),
                      onPressed: _clearReplyingTo,
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                    ),
                  ],
                ),
              ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _controller,
                      decoration: const InputDecoration(
                        hintText: 'Viết phản hồi...',
                        border: OutlineInputBorder(),
                      ),
                      maxLines: null,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.send),
                    onPressed: () {
                      // TODO: Implement send reply
                      final content = _controller.text.trim();
                      if (content.isEmpty) return;

                      // TODO: Call API to send reply
                      print('Sending reply: $content');
                      if (replyingTo != null) {
                        print('Replying to: ${replyingTo!.user.name}');
                      }
                    },
                  ),
                ],
              ),
            ),
          ] else
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  const Icon(Icons.info_outline),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      'Vui lòng đăng nhập để phản hồi',
                      style: TextStyle(
                        color: Colors.grey[700],
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      context.push('/login');
                    },
                    child: const Text('Đăng nhập'),
                  ),
                ],
              ),
            ),
          const SizedBox(height: 16),
          Expanded(
            child: Consumer(
              builder: (context, ref, child) {
                final repliesAsync =
                    ref.watch(commentRepliesProvider(widget.comment.id));
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
                                widget.onBuildReplyContent(context, reply),
                                if (isAuthenticated) ...[
                                  const SizedBox(height: 8),
                                  InkWell(
                                    onTap: () => _setReplyingTo(reply),
                                    child: Text(
                                      'Trả lời',
                                      style: TextStyle(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
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
