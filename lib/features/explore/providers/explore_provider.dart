import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/core/utils/pagination_state.dart';
import 'package:movie_app/domain/entities/movie_entity.dart';
import 'package:movie_app/features/explore/data/explore_repository_provider.dart';
import 'package:movie_app/features/explore/domain/explore_repository.dart';

final exploreProvider = StateNotifierProvider.autoDispose<
    ExploreProvider,
  AsyncValue<PaginationState<MovieEntity>>
>(
  (ref) =>
      ExploreProvider(exploreRepository: ref.read(exploreRepositoryProvider)),
);

class ExploreProvider
    extends StateNotifier<AsyncValue<PaginationState<MovieEntity>>> {
  final IExploreRepository exploreRepository;

  ExploreProvider({required this.exploreRepository})
    : super(const AsyncValue.loading()) {

  }




}
