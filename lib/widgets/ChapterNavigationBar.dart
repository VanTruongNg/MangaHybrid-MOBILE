import 'package:flutter/material.dart';

class ChapterNavigationBar extends StatelessWidget {
  final ScrollController scrollController;
  final String chapterNumber;
  final bool hasNextChapter;
  final bool hasPreviousChapter;
  final VoidCallback? onNextChapter;
  final VoidCallback? onPreviousChapter;
  final VoidCallback? onChapterTap;
  final int? commentCount;
  final bool isOffline;
  final int currentPage;
  final int totalPages;

  const ChapterNavigationBar({
    Key? key,
    required this.scrollController,
    required this.chapterNumber,
    required this.hasNextChapter,
    required this.hasPreviousChapter,
    required this.onNextChapter,
    required this.onPreviousChapter,
    this.onChapterTap,
    this.commentCount,
    this.isOffline = false,
    required this.currentPage,
    required this.totalPages,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      child: Row(
        children: [
          Container(
            width: 70,
            color: (isOffline ? Colors.grey[500] : Colors.blue),
            child: IconButton(
              icon: const Icon(Icons.chat_bubble, color: Colors.white),
              onPressed: isOffline
                  ? null
                  : () {
                      // Xử lý mở comment section
                    },
            ),
          ),
          Expanded(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  color: Colors.grey[300],
                  width: double.infinity,
                  height: 48,
                ),
                Container(
                    margin: const EdgeInsets.symmetric(horizontal: 70),
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey[500],
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Stack(children: [
                      FractionallySizedBox(
                        widthFactor: currentPage / totalPages,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[700],
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                      ),
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: onChapterTap,
                          child: Center(
                            child: Text(
                              'CHƯƠNG $chapterNumber',
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ])),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.grey[500],
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.chevron_left,
                            color: hasPreviousChapter
                                ? Colors.black87
                                : Colors.white.withOpacity(0.3),
                            size: 22,
                          ),
                          onPressed:
                              hasPreviousChapter ? onPreviousChapter : null,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.chevron_right,
                            color: hasNextChapter
                                ? Colors.white
                                : Colors.white.withOpacity(0.3),
                            size: 22,
                          ),
                          onPressed: hasNextChapter ? onNextChapter : null,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: 70,
            color: Colors.grey[500],
            child: IconButton(
              icon: const Icon(Icons.keyboard_arrow_up, color: Colors.white),
              onPressed: () {
                scrollController.animateTo(
                  0,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
