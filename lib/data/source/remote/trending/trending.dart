import 'package:movie_app/core/base/base_source.dart';
import 'models/paged_trending_movies_model.dart';
import 'models/paged_trending_persons_model.dart';

abstract class TrendingRemoteSource {
  /// Fetches Trending movies
  /// https://api.themoviedb.org/3/trending/all/day?language=en-US&page=1
  /// https://api.themoviedb.org/3/trending/all/week?language=en-US&page=1
  Future<PagedTrendingMoviesModel> fetchTrendingAll({
    required String timeWindow,
    required String language,
    required int page,
  });

  /// Fetches Trending Movies
  /// https://api.themoviedb.org/3/trending/movie/day?language=en-US&page=1
  /// https://api.themoviedb.org/3/trending/movie/week?language=en-US&page=1
  Future<PagedTrendingMoviesModel> fetchTrendingMovies({
    required String timeWindow,
    required String language,
    required int page,
  });

  /// Fetches Trending People
  /// https://api.themoviedb.org/3/trending/person/day?language=en-US&page=1
  /// https://api.themoviedb.org/3/trending/person/week?language=en-US&page=1
  Future<PagedTrendingPersonsModel> fetchTrendingPersons({
    required String timeWindow,
    required String language,
    required int page,
  });
}

class TrendingRemoteSourceImpl extends BaseSource
    implements TrendingRemoteSource {
  TrendingRemoteSourceImpl(super.dio);

  /// https://api.themoviedb.org/3/trending/all/week?language=en-US&page=1
  @override
  Future<PagedTrendingMoviesModel> fetchTrendingAll(
          {required String timeWindow,
          required String language,
          required int page}) =>
      makeRequest(
          path: 'trending/all/$timeWindow',
          method: 'GET',
          queryParameters: {'language': language, 'page': page},
          call: (data) => PagedTrendingMoviesModel.fromJson(data));

  @override
  Future<PagedTrendingMoviesModel> fetchTrendingMovies(
          {required String timeWindow,
          required String language,
          required int page}) =>
      makeRequest(
          path: 'trending/movie/$timeWindow',
          method: 'GET',
          queryParameters: {'language': language, 'page': page},
          call: (data) => PagedTrendingMoviesModel.fromJson(data));

  @override
  Future<PagedTrendingPersonsModel> fetchTrendingPersons(
          {required String timeWindow,
          required String language,
          required int page}) =>
      makeRequest(
          path: 'trending/person/$timeWindow',
          method: 'GET',
          queryParameters: {'language': language, 'page': page},
          call: (data) => PagedTrendingPersonsModel.fromJson(data));
}
