import 'package:flutter/material.dart';
import 'package:webtoon_mobile/models/manga/home/home.model.dart';
import 'package:go_router/go_router.dart';

class PopularMangaCard extends StatelessWidget {
  final MangaItem manga;
  final String? extraInfo;

  const PopularMangaCard({
    super.key,
    required this.manga,
    this.extraInfo,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
        ),
        clipBehavior: Clip.hardEdge,
        child: Stack(
          fit: StackFit.expand,
          children: [
            manga.coverImg != null
                ? Image.network(
                    manga.coverImg!,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                    errorBuilder: (context, error, stackTrace) => const Center(
                      child: Icon(Icons.broken_image),
                    ),
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) return child;
                      return Center(
                        child: CircularProgressIndicator(
                          value: loadingProgress.expectedTotalBytes != null
                              ? loadingProgress.cumulativeBytesLoaded /
                                  loadingProgress.expectedTotalBytes!
                              : null,
                        ),
                      );
                    },
                  )
                : const Center(child: Icon(Icons.image_not_supported)),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black.withOpacity(0.8),
                  ],
                  stops: const [0.6, 1.0],
                ),
              ),
            ),
            // Title and Info
            Positioned(
              left: 8,
              right: 8,
              bottom: 8,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    manga.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  if (extraInfo != null) ...[
                    const SizedBox(height: 4),
                    extraInfo!.contains('${Icons.visibility}')
                      ? Row(
                          children: [
                            const Icon(Icons.visibility, 
                              size: 16,
                              color: Colors.white70,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              extraInfo!.replaceAll('${Icons.visibility} ', ''),
                              style: const TextStyle(
                                color: Colors.white70,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        )
                      : Text(
                          extraInfo!,
                          style: const TextStyle(
                            color: Colors.white70,
                            fontSize: 12,
                          ),
                        ),
                  ],
                ],
              ),
            ),
            // Clickable area
            Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {
                  context.push('/manga/${manga.id}');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
