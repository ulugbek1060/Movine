import 'package:movie_app/core/config/app_provider.dart';
import 'package:movie_app/core/config/remote_source_provider.dart';
import 'package:movie_app/core/network/result.dart';
import 'package:movie_app/core/utils/pagination_state.dart';
import 'package:movie_app/domain/entities/movie_entity.dart';
import 'package:movie_app/domain/entities/paged_movies_entity.dart';
import 'package:movie_app/features/home/data/home_repository.dart';
import 'package:movie_app/features/home/domain/i_home_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_provider.g.dart';

@riverpod
IHomeRepository homeRepository(HomeRepositoryRef ref) => HomeRepository(
  ref.read(moviesRemoteSourceProvider),
  ref.read(langServiceProvider),
);

enum MovieType { nowPlaying, popular, topRated, upcoming }

@riverpod
class NowPlayingMovies extends _$NowPlayingMovies {

  @override
  Future<PaginationState<MovieEntity>> build(MovieType type) async =>
      PaginationState(
        items: [],
        currentPage: 0,
        hasReachedMax: false,
        isLoading: false,
      );

  Future<void> fetchNextPage() async {

    if (state.value == null) return;
    final value = state.value!;
    if (value.hasReachedMax || value.isLoading) return;

    state = AsyncValue.data(value.copyWith(isLoading: true));

    final homeRepository = ref.read(homeRepositoryProvider);
    final nextPage = value.currentPage + 1;

    Result<PagedMoviesEntity> result;

    switch (type) {
      case MovieType.nowPlaying:
        result = await homeRepository.getNowPlayingMovies(page: nextPage);
        break;
      case MovieType.popular:
        result = await homeRepository.getPopularMovies(page: nextPage);
        break;
      case MovieType.topRated:
        result = await homeRepository.getTopRatedMovies(page: nextPage);
        break;
      case MovieType.upcoming:
        result = await homeRepository.getUpcomingMovies(page: nextPage);
        break;
    }

    result.fold(
      onSuccess: (data) {
        final newState = value.copyWith(
          items: [...value.items, ...data.results],
          currentPage: nextPage,
          hasReachedMax: data.totalPages == nextPage,
          isLoading: false,
        );
        state = AsyncValue.data(newState);
      },
      onError: (message, error, stackTrace) {
        state = AsyncValue.error(error, stackTrace ?? StackTrace.current);
      },
    );
  }

  Future<void> refresh() async {
    state = AsyncValue.data(
      PaginationState<MovieEntity>(
        items: [],
        currentPage: 0,
        hasReachedMax: false,
        isLoading: false,
      ),
    );
    await fetchNextPage();
  }
}
