import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:webtoon_mobile/providers/theme_provider.dart';

class CustomAppBar extends ConsumerWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? additionalActions;

  const CustomAppBar({
    super.key,
    required this.title,
    this.additionalActions,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppBar(
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.notifications_outlined),
          onPressed: () {
            // TODO: Implement notifications
          },
        ),
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {
            // TODO: Implement search
          },
        ),
        PopupMenuButton(
          icon: const Icon(Icons.settings_outlined),
          itemBuilder: (context) => [
            PopupMenuItem(
              child: StatefulBuilder(
                builder: (context, setState) {
                  final isDarkMode = ref.watch(themeProvider);
                  return SwitchListTile(
                    title: const Text('Giao diện tối'),
                    value: isDarkMode,
                    onChanged: (value) {
                      ref.read(themeProvider.notifier).toggleTheme();
                      Navigator.pop(context);
                    },
                  );
                },
              ),
            ),
          ],
        ),
        if (additionalActions != null) ...additionalActions!,
      ],
    );
  }
}
