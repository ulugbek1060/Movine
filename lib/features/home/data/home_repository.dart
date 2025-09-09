import 'package:movie_app/core/extensions/lang.dart';
import 'package:movie_app/core/network/result.dart';
import 'package:movie_app/core/services/lang_service.dart';
import 'package:movie_app/data/source/remote/collections/collections.dart';
import 'package:movie_app/data/source/remote/collections/models/paged_movies.dart';
import 'package:movie_app/domain/entities/paged_movies_entity.dart';
import 'package:movie_app/features/home/domain/i_home_repository.dart';
import 'package:movie_app/features/home/domain/movies_type_enum.dart';

class HomeRepository implements IHomeRepository {
  final MoviesRemoteSource _remoteSource;
  final ILangService _langService;

  HomeRepository(this._remoteSource, this._langService);

  @override
  Future<Result<PagedMoviesEntity>> getMoviesByType({
    required int page,
    required MovieType type,
  }) {
    switch (type) {
      case MovieType.nowPlaying:
        return _fetchMovies(_remoteSource.getNowPlayingMovies, page: page);
      case MovieType.popular:
        return _fetchMovies(_remoteSource.getPopularMovies, page: page);
      case MovieType.topRated:
        return _fetchMovies(_remoteSource.getTopRatedMovies, page: page);
      case MovieType.upcoming:
        return _fetchMovies(_remoteSource.getUpcomingMovies, page: page);
    }
  }

  Future<Result<PagedMoviesEntity>> _fetchMovies(
    Future<PagedMovies> Function({required String language, required int page})
    call, {
    required int page,
  }) async {
    try {
      final language = _langService.getLanguage().toCountryCode();
      final result = await call(page: page, language: language);
      return Success(PagedMoviesEntity.fromSourceModel(result));
    } catch (e) {
      return Error(e.toString());
    }
  }
}
