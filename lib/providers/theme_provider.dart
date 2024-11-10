import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

final initThemeProvider = FutureProvider<bool>((ref) async {
  const storage = FlutterSecureStorage();
  final themeStr = await storage.read(key: 'theme_mode');
  return themeStr == 'true';
});

final themeProvider = StateNotifierProvider<ThemeNotifier, bool>((ref) {
  final initialTheme = ref.watch(initThemeProvider).value ?? false;
  return ThemeNotifier(initialTheme);
});

class ThemeNotifier extends StateNotifier<bool> {
  ThemeNotifier(bool initialState) : super(initialState);

  final _storage = const FlutterSecureStorage();
  static const String _themeKey = 'theme_mode';

  Future<void> toggleTheme() async {
    state = !state;
    await _storage.write(key: _themeKey, value: state.toString());
  }
}