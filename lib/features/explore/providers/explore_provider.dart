import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/core/config/app_provider.dart';
import 'package:movie_app/core/config/remote_source_provider.dart';
import 'package:movie_app/domain/entities/paged_movies_entity.dart';
import 'package:movie_app/features/explore/data/explore_repository.dart';
import 'package:movie_app/features/explore/domain/filter_data.dart';

final exploreRepositoryProvider = Provider(
  (ref) => ExploreRepository(
    remoteSource: ref.watch(moviesRemoteSourceProvider),
    langService: ref.watch(langServiceProvider),
  ),
);

final filterStateProvider = StateProvider<FilterData>(
  (ref) => FilterData(query: ''),
);

final exploreProvider = AsyncNotifierProvider<StateNotifier, PagedMoviesEntity>(
  () => StateNotifier(),
);

class StateNotifier extends AsyncNotifier<PagedMoviesEntity> {

  @override
  Future<PagedMoviesEntity> build() async => PagedMoviesEntity.empty();

  Future<void> refresh() async {
    state = AsyncValue.data(PagedMoviesEntity.empty());
    await firstLoad();
  }

  Future<void> firstLoad() async {
    final filterData = ref.watch(filterStateProvider);
    if (filterData.query.isEmpty) return;

    state = const AsyncLoading();

    final page = state.value?.page ?? 1;
    final pageResult = await ref
        .watch(exploreRepositoryProvider)
        .getMovies(filterData: filterData, page: page);

    state = AsyncValue.data(pageResult);
  }

  Future<void> nextPage() async {
    final filterData = ref.watch(filterStateProvider);
    if (filterData.query.isEmpty) return;

    final page = state.value?.page ?? 1;
    final pageResult = await ref
        .watch(exploreRepositoryProvider)
        .getMovies(filterData: filterData, page: page + 1);

    state = AsyncValue.data(state.value!.copyWith(
      results: [...state.value?.results ?? [], ...pageResult.results],
      page: pageResult.page,
      totalPages: pageResult.totalPages,
      totalResults: pageResult.totalResults,
    ));
  }

}
