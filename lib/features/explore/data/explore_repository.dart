import 'package:movie_app/core/extensions/lang.dart';
import 'package:movie_app/core/services/lang_service.dart';
import 'package:movie_app/data/source/remote/collections/collections.dart';
import 'package:movie_app/domain/entities/paged_movies_entity.dart';
import 'package:movie_app/features/explore/domain/explore_repository.dart';
import 'package:movie_app/features/explore/domain/filter_data.dart';

class ExploreRepository implements IExploreRepository {
  final MoviesRemoteSource remoteSource;
  final ILangService langService;

  ExploreRepository({required this.remoteSource, required this.langService});

  @override
  Future<PagedMoviesEntity> getMovies({
    required FilterData filterData,
    required int page,
  }) async {
    final region = langService.getLanguage().toCountryCode();
    final result = await remoteSource.getMoviesByQuery(
      query: filterData.query,
      includeAdults: filterData.includeAdult,
      primaryReleaseDate: filterData.primaryReleaseDate?.toIso8601String(),
      year: filterData.year,
      page: page,
      language: region,
    );
    return PagedMoviesEntity.fromSourceModel(result);
  }
}
