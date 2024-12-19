import 'package:flutter/material.dart';
import 'package:webtoon_mobile/models/manga/home/home.model.dart';
import 'package:go_router/go_router.dart';

class MangaCard extends StatelessWidget {
  final MangaItem manga;
  final String? extraInfo;

  const MangaCard({
    super.key,
    required this.manga,
    this.extraInfo,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      child: InkWell(
        onTap: () {
          context.push('/manga/${manga.id}');
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: AspectRatio(
                aspectRatio: 3 / 4,
                child: manga.coverImg != null
                    ? Image.network(
                        manga.coverImg!,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) =>
                            const Center(
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
              ),
            ),
            const SizedBox(height: 8),
            Flexible(
              child: Text(
                manga.title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                ),
              ),
            ),
            const SizedBox(height: 4),
            Flexible(
              child: Text(
                manga.author,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 12,
                ),
              ),
            ),
            if (extraInfo != null) ...[
              const SizedBox(height: 4),
              extraInfo!.contains('${Icons.visibility}') 
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.visibility, size: 16),
                      const SizedBox(width: 4),
                      Text(
                        extraInfo!.replaceAll('${Icons.visibility} ', ''),
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 12,
                        ),
                      ),
                    ],
                  )
                : Text(
                    extraInfo!,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 12,
                    ),
                  ),
            ],
          ],
        ),
      ),
    );
  }
}