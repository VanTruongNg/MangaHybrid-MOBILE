import 'package:flutter/material.dart';

class MangaBanner extends StatelessWidget {
  final ScrollController scrollController;
  final String? bannerUrl;

  const MangaBanner({
    super.key,
    required this.scrollController,
    required this.bannerUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Container(
        height: 300,
        child: Stack(
          fit: StackFit.expand,
          children: [
            ListenableBuilder(
              listenable: scrollController,
              builder: (_, child) {
                final offset =
                    scrollController.hasClients ? scrollController.offset : 0;
                final opacity = 1 - (offset / 200).clamp(0, 1).toDouble();
                return Opacity(
                  opacity: opacity,
                  child: Image.network(
                    bannerUrl ?? '',
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(color: Colors.grey[300]);
                    },
                  ),
                );
              },
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Theme.of(context).scaffoldBackgroundColor,
                  ],
                  stops: const [0.3, 1.0],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
