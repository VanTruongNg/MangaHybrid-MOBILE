import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:webtoon_mobile/providers/connectivity_provider.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class HomeScreen extends ConsumerStatefulWidget {
  final Widget child;

  const HomeScreen({
    super.key,
    required this.child,
  });

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  bool _hasShownDialog = false;

  void _showOfflineDialog() {
    if (!_hasShownDialog) {
      _hasShownDialog = true;
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
          title: const Text('Mất kết nối'),
          content: const Text(
            'Bạn đã mất kết nối internet. Chuyển sang chế độ offline?',
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                _hasShownDialog = false;
              },
              child: const Text('Ở lại'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                context.go('/offline');
              },
              child: const Text('Chuyển'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(connectivityProvider, (previous, next) {
      next.whenData((statusList) {
        if (statusList.isEmpty ||
            statusList.every((status) => status == ConnectivityResult.none)) {
          _showOfflineDialog();
        } else {
          _hasShownDialog = false;
        }
      });
    });

    return Scaffold(
      body: widget.child, // Sử dụng widget.child thay vì child
      bottomNavigationBar: NavigationBar(
        selectedIndex: _calculateSelectedIndex(context),
        onDestinationSelected: (index) => _onItemTapped(index, context),
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.search_outlined),
            selectedIcon: Icon(Icons.search),
            label: 'Search',
          ),
          NavigationDestination(
            icon: Icon(Icons.chat_bubble_outline),
            selectedIcon: Icon(Icons.chat_bubble),
            label: 'Chat',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outline),
            selectedIcon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  int _calculateSelectedIndex(BuildContext context) {
    final String location = GoRouterState.of(context).uri.path;
    if (location == '/') return 0;
    if (location == '/search') return 1;
    if (location == '/chat') return 2;
    if (location == '/profile' || location == '/offline') return 3;
    return 0;
  }

  void _onItemTapped(int index, BuildContext context) {
    switch (index) {
      case 0:
        context.go('/');
        break;
      case 1:
        context.go('/search');
        break;
      case 2:
        context.go('/chat');
        break;
      case 3:
        context.go('/profile');
        break;
    }
  }
}
