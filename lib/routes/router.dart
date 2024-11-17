import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:webtoon_mobile/screen/ChapterScreen/chapter_screen.dart';
import 'package:webtoon_mobile/screen/MangaScreen/manga_detail_screen.dart';
import 'package:webtoon_mobile/screen/Auth/login_screen.dart';
import 'package:webtoon_mobile/screen/Auth/verify_screen.dart';
import 'package:webtoon_mobile/screen/chat_screen.dart';
import 'package:webtoon_mobile/screen/home_screen.dart';
import 'package:webtoon_mobile/screen/MangaScreen/manga_screen.dart';
import 'package:webtoon_mobile/screen/profile_screen.dart';
import 'package:webtoon_mobile/screen/search_screen.dart';
import 'package:webtoon_mobile/screen/Auth/forgot_password_screen.dart';
import 'package:webtoon_mobile/screen/Auth/signup_screen.dart';
import 'package:webtoon_mobile/screen/offline_screen.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>();

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: '/',
    routes: [
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) {
          return HomeScreen(child: child);
        },
        routes: [
          GoRoute(
            path: '/',
            builder: (context, state) => const MangaScreen(),
          ),
          GoRoute(
            path: '/search',
            builder: (context, state) => const SearchScreen(),
          ),
          GoRoute(
            path: '/chat',
            builder: (context, state) => const ChatScreen(),
          ),
          GoRoute(
            path: '/profile',
            builder: (context, state) => const ProfileScreen(),
          ),
          GoRoute(
            path: '/offline',
            builder: (context, state) => const OfflineScreen(),
          ),
          GoRoute(
            path: '/manga/:id',
            builder: (context, state) => MangaDetailScreen(
              mangaId: state.pathParameters['id']!,
            ),
          ),
          GoRoute(
            path: '/chapter/:chapterId',
            builder: (context, state) => ChapterScreen(
              chapterId: state.pathParameters['chapterId']!,
            ),
          ),
        ],
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: '/login',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: '/signup',
        builder: (context, state) => const SignUpScreen(),
      ),
      GoRoute(
        path: '/forgot-password',
        builder: (context, state) => const ForgotPasswordScreen(),
      ),
      GoRoute(
        path: '/verify-email/:email',
        builder: (context, state) => VerifyEmailScreen(
          email: state.pathParameters['email']!,
        ),
      ),
    ],
  );
});
