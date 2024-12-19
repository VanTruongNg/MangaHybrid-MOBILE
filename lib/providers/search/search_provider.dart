import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:async';
import '../../models/manga/manga_search.model.dart';
import '../../models/user/user_search.model.dart';
import '../../services/manga_search_service.dart';
import '../../providers/dio_provider.dart';
import 'package:dio/dio.dart';
import '../auth/auth_state_provider.dart';

final searchServiceProvider = Provider<SearchService>((ref) {
  return SearchService(ref.watch(dioProvider));
});

class SearchState {
  final List<MangaSearchResult> mangaResults;
  final List<UserSearchResult> userResults;
  final bool isLoading;
  final String? error;

  SearchState({
    this.mangaResults = const [],
    this.userResults = const [],
    this.isLoading = false,
    this.error,
  });

  SearchState copyWith({
    List<MangaSearchResult>? mangaResults,
    List<UserSearchResult>? userResults,
    bool? isLoading,
    String? error,
  }) {
    return SearchState(
      mangaResults: mangaResults ?? this.mangaResults,
      userResults: userResults ?? this.userResults,
      isLoading: isLoading ?? this.isLoading,
      error: error,
    );
  }
}

class SearchNotifier extends StateNotifier<SearchState> {
  final Dio _dio;
  final Ref _ref;
  Timer? _debounceTimer;

  SearchNotifier(this._dio, this._ref) : super(SearchState());

  @override
  void dispose() {
    _debounceTimer?.cancel();
    super.dispose();
  }

  Future<void> search(String query, {bool isMangaTab = true}) async {
    if (query.isEmpty) {
      state = SearchState();
      return;
    }

    _debounceTimer?.cancel();
    _debounceTimer = Timer(const Duration(milliseconds: 500), () async {
      try {
        state = state.copyWith(isLoading: true, error: null);

        if (isMangaTab) {
          final response = await _dio.get('/search/manga', queryParameters: {
            'query': query,
          });

          if (response.statusCode == 200) {
            final results = (response.data as List)
                .map((item) => MangaSearchResult.fromJson(item))
                .toList();

            state = state.copyWith(
              isLoading: false,
              mangaResults: results,
            );
          }
        } else {
          final response = await _dio.get('/search/uploader', queryParameters: {
            'query': query,
          });

          if (response.statusCode == 200) {
            // Lấy user hiện tại
            final authState = _ref.read(authStateProvider);

            // Lọc kết quả, loại bỏ user hiện tại
            final results = (response.data as List)
                .map((item) => UserSearchResult.fromJson(item))
                .where((user) =>
                    authState.value?.id != user.id) // Lọc user hiện tại
                .toList();

            state = state.copyWith(
              isLoading: false,
              userResults: results,
            );
          }
        }
      } catch (e) {
        state = state.copyWith(
          isLoading: false,
          error: e.toString(),
        );
      }
    });
  }

  void clearSearch() {
    state = SearchState();
  }
}

final searchProvider =
    StateNotifierProvider<SearchNotifier, SearchState>((ref) {
  return SearchNotifier(ref.watch(dioProvider), ref);
});
