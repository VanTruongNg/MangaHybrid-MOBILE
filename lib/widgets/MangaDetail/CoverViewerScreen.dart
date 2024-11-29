import 'package:flutter/material.dart';

class CoverViewerScreen extends StatelessWidget {
  final String coverUrl;
  final String heroTag;

  const CoverViewerScreen({
    super.key,
    required this.coverUrl,
    required this.heroTag,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: GestureDetector(
        onTap: () => Navigator.pop(context),
        child: Center(
          child: InteractiveViewer(
            maxScale: 4,
            child: Hero(
              tag: heroTag,
              child: Image.network(
                coverUrl,
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) {
                  return const Icon(
                    Icons.error,
                    color: Colors.white,
                    size: 50,
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
