import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:webtoon_mobile/providers/theme_provider.dart';
import 'package:webtoon_mobile/routes/router.dart';
import 'package:webtoon_mobile/screen/home_screen.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final initTheme = ref.watch(initThemeProvider);
    final router = ref.watch(routerProvider);

    return initTheme.when(
      loading: () => const MaterialApp(
        home: Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
      error: (err, stack) => MaterialApp(
        home: Scaffold(
          body: Center(
            child: Text('Error: $err'),
          ),
        ),
      ),
      data: (_) => MaterialApp.router(
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        themeMode: ref.watch(themeProvider) ? ThemeMode.dark : ThemeMode.light,
        routerConfig: router,
      ),
    );
  }
}
