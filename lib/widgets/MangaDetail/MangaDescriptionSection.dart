import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:webtoon_mobile/providers/manga/manga_detail_provider.dart';

class MangaDescriptionSection extends ConsumerWidget {
  final String mangaId;
  final String description;

  const MangaDescriptionSection({
    super.key,
    required this.mangaId,
    required this.description,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Mô tả',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        Consumer(
          builder: (context, ref, child) {
            final description = this.description;
            // Kiểm tra độ dài text
            final textSpan = TextSpan(
              text: description,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
            );
            final textPainter = TextPainter(
              text: textSpan,
              maxLines: 3,
              textDirection: TextDirection.ltr,
            );
            textPainter.layout(
                maxWidth: MediaQuery.of(context).size.width - 32);
            final isTextOverflowing = textPainter.didExceedMaxLines;

            if (!isTextOverflowing) {
              return Text(
                description,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
              );
            }

            final isExpanded =
                ref.watch(mangaDescriptionExpandedProvider(mangaId));
            return Column(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    AnimatedCrossFade(
                      firstChild: Text(
                        description,
                        maxLines: 3,
                        overflow: TextOverflow.fade,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                      secondChild: Text(
                        description,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                      crossFadeState: isExpanded
                          ? CrossFadeState.showSecond
                          : CrossFadeState.showFirst,
                      duration: const Duration(milliseconds: 300),
                    ),
                    if (!isExpanded)
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          height: 30,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Theme.of(context)
                                    .scaffoldBackgroundColor
                                    .withOpacity(0.2),
                                Theme.of(context).scaffoldBackgroundColor,
                              ],
                              stops: const [0, .9],
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    ref
                        .read(
                            mangaDescriptionExpandedProvider(mangaId).notifier)
                        .state = !isExpanded;
                  },
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.5),
                      shape: BoxShape.circle,
                    ),
                    child: AnimatedRotation(
                      duration: const Duration(milliseconds: 300),
                      turns: isExpanded ? 0.5 : 0,
                      child: const Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ),
                if (isExpanded) const SizedBox(height: 30),
              ],
            );
          },
        ),
      ],
    );
  }
}
