import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:webtoon_mobile/providers/auth/auth_state_provider.dart';
import 'package:webtoon_mobile/providers/manga/manga_provider.dart';
import 'package:webtoon_mobile/services/manga_service.dart';
import 'package:webtoon_mobile/widgets/login_required_dialog.dart';

part 'manga_interaction_provider.freezed.dart';

@freezed
class MangaInteractionState with _$MangaInteractionState {
  const factory MangaInteractionState({
    required String mangaId,
    @Default(false) bool isFollowing,
    @Default(false) bool isLiked,
    @Default(false) bool isLoading,
    required int localLikeCount,
    required int localFollowCount,
  }) = _MangaInteractionState;
}

class MangaInteractionNotifier extends StateNotifier<MangaInteractionState> {
  final MangaService _mangaService;
  final Ref ref;

  MangaInteractionNotifier(
    this._mangaService,
    this.ref,
    String mangaId, {
    required int initialLikeCount,
    required int initialFollowCount,
  }) : super(MangaInteractionState(
          mangaId: mangaId,
          localLikeCount: initialLikeCount,
          localFollowCount: initialFollowCount,
        )) {
    _initializeState();
  }

  void _initializeState() {
    final authState = ref.read(authStateProvider);
    if (authState.hasValue && authState.value != null) {
      final user = authState.value!;

      final isLiked = user.favoritesManga.any((m) => m.id == state.mangaId);
      final isFollowing = user.followingManga.any((m) => m.id == state.mangaId);

      state = state.copyWith(
        isLiked: isLiked,
        isFollowing: isFollowing,
      );
    }
  }

  Future<void> toggleLike(BuildContext context) async {
    if (state.isLoading) return;

    if (!await _checkAuthAndShowDialog(context)) return;

    final oldState = state;
    final newIsLiked = !state.isLiked;

    state = state.copyWith(
      isLiked: newIsLiked,
      isLoading: true,
      localLikeCount: state.localLikeCount + (newIsLiked ? 1 : -1),
    );

    try {
      if (newIsLiked) {
        await _mangaService.likeManga(state.mangaId);
      } else {
        await _mangaService.unlikeManga(state.mangaId);
      }

      await ref.read(authStateProvider.notifier).refreshUser(
            shouldReconnectSocket: false,
          );

      state = state.copyWith(isLoading: false);
    } catch (e) {
      state = oldState;
      if (!context.mounted) return;

      String message = e.toString();
      if (message.contains('404')) {
        message = 'Không tìm thấy manga';
      } else if (message.contains('401')) {
        message = 'Vui lòng đăng nhập';
      }

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message)),
      );
    }
  }

  Future<void> toggleFollow(BuildContext context) async {
    if (state.isLoading) return;

    if (!await _checkAuthAndShowDialog(context)) return;

    final oldState = state;
    final newIsFollowing = !state.isFollowing;

    state = state.copyWith(
      isFollowing: newIsFollowing,
      isLoading: true,
      localFollowCount: state.localFollowCount + (newIsFollowing ? 1 : -1),
    );

    try {
      if (newIsFollowing) {
        await _mangaService.followManga(state.mangaId);
      } else {
        await _mangaService.unfollowManga(state.mangaId);
      }

      await ref.read(authStateProvider.notifier).refreshUser(
            shouldReconnectSocket: false,
          );

      state = state.copyWith(isLoading: false);
    } catch (e) {
      state = oldState;
      if (!context.mounted) return;

      String message = e.toString();
      if (message.contains('404')) {
        message = 'Không tìm thấy manga';
      } else if (message.contains('401')) {
        message = 'Vui lòng đăng nhập';
      }

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message)),
      );
    }
  }

  Future<bool> _checkAuthAndShowDialog(BuildContext context) async {
    final authState = ref.read(authStateProvider);
    if (!authState.hasValue || authState.value == null) {
      final shouldLogin = await showDialog<bool>(
        context: context,
        builder: (_) => const LoginRequiredDialog(),
      );
      return shouldLogin ?? false;
    }
    return true;
  }
}

final mangaInteractionProvider = StateNotifierProvider.family<
    MangaInteractionNotifier,
    MangaInteractionState,
    ({String mangaId, int likeCount, int followCount})>((ref, params) {
  return MangaInteractionNotifier(
    ref.watch(mangaServiceProvider),
    ref,
    params.mangaId,
    initialLikeCount: params.likeCount,
    initialFollowCount: params.followCount,
  );
});
