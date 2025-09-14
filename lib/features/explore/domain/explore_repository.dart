import 'package:movie_app/domain/entities/paged_movies_entity.dart';
import 'package:movie_app/features/explore/domain/filter_data.dart';

abstract interface class IExploreRepository {
  Future<PagedMoviesEntity> getMovies({
    required FilterData filterData,
    required int page,
  });
}
