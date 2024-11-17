import 'package:flutter_riverpod/flutter_riverpod.dart';

enum AppMode { online, offline }

final appModeProvider = StateProvider<AppMode>((ref) => AppMode.online);
