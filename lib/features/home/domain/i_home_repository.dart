import 'package:movie_app/core/network/result.dart';
import 'package:movie_app/domain/entities/paged_movies_entity.dart';

abstract interface class IHomeRepository {
  Future<Result<PagedMoviesEntity>> getNowPlayingMovies({required int page});
  Future<Result<PagedMoviesEntity>> getPopularMovies({required int page});
  Future<Result<PagedMoviesEntity>> getTopRatedMovies({required int page});
  Future<Result<PagedMoviesEntity>> getUpcomingMovies({required int page});
}
