import 'package:injectable/injectable.dart';

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

@Singleton(as: TrendingRemoteSource)
class TrendingRemoteSourceImpl implements TrendingRemoteSource {
  @override
  Future<PagedTrendingMoviesModel> fetchTrendingAll(
      {required String timeWindow,
      required String language,
      required int page}) {
    // TODO: implement fetchTrendingAll
    throw UnimplementedError();
  }

  @override
  Future<PagedTrendingMoviesModel> fetchTrendingMovies(
      {required String timeWindow,
      required String language,
      required int page}) {
    // TODO: implement fetchTrendingMovies
    throw UnimplementedError();
  }

  @override
  Future<PagedTrendingPersonsModel> fetchTrendingPersons(
      {required String timeWindow,
      required String language,
      required int page}) {
    // TODO: implement fetchTrendingPersons
    throw UnimplementedError();
  }
}
