import 'package:movie_app/core/base/base_source.dart';
import 'package:movie_app/data/source/remote/collections/models/video_model.dart';

import 'models/detail_model.dart';
import 'models/paged_movies.dart';
import 'package:injectable/injectable.dart';

abstract class MoviesRemoteSource {
  /// Fetches Now Playing movies
  /// movie/now_playing?language=en-US&page=1
  Future<PagedMovies> getNowPlayingMovies(
      {required String language, required int page});

  /// Fetches Popular movies
  /// movie/popular?language=en-US&page=1
  Future<PagedMovies> getPopularMovies(
      {required String language, required int page});

  /// Fetches Top Rated movies
  /// movie/top_rated?language=en-US&page=1
  Future<PagedMovies> getTopRatedMovies(
      {required String language, required int page});

  /// Fetches Upcoming movies
  /// movie/upcoming?language=en-US&page=1
  Future<PagedMovies> getUpcomingMovies(
      {required String language, required int page});

  /// Fetches Movie by type
  /// movie/{type}?language=en-US&page=1

  /// Fetches Movie by genre
  /// movie/{genre_id}/movies?language=en-US&page=1
  Future<PagedMovies> getMoviesByGenreId(
      {required String genreId, required int page, required String language});

  /// Fetches Movie by id
  /// movie/{id}?language=en-US&page=1

  /// Fetches Movie by query
  /// search/movie?include_adult=false&language=en-US&page=1&query={query}
  Future<PagedMovies> getMoviesByQuery(
      {required String query,
      required bool includeAdults,
      required int page,
      required String language});

  /// Fetches Movie by genre
  /// discover/movie?language=en-US&page=1&with_genres={genre_id}
  /// discover/movie?include_adult=false&include_video=false&language=en-US&page=1&sort_by=popularity.desc
  Future<PagedMovies> getMoviesByGenre(
      {required bool includeVideo,
      required bool includeAdult,
      required String sortBy,
      required int page,
      required String language});

  /// Fetches Movie by similar
  /// movie/{id}/similar?language=en-US&page=1
  Future<PagedMovies> getSimilarMovies(
      {required String movieId, required int page, required String language});

  /// Fetches Movie by review
  /// movie/{id}/reviews?language=en-US&page=1

  /// Fetches Movie videos
  /// movie/{id}/videos?language=en-US&page=1
  Future<VideoModel> getVideosByMovieId({required String movieId});

  /// Fetches Movie by credits
  /// movie/{id}/credits?language=en-US&page=1

  /// Fetches Movie by recommendations
  /// movie/{id}/recommendations?language=en-US&page=1
  Future<PagedMovies> getRecommendationsByMovieId(
      {required String movieId, required int page, required String language});

  /// Fetches Movie by watch provider
  /// movie/{id}/watch/provider?language=en-US&page=1

  /// Fetches Movie by rating
  /// movie/{id}/rating?language=en-US&page=1

  /// Fetches Movie images
  /// movie/{id}/images?language=en-US&page=1

  /// Fetches Movie lists
  /// movie/{id}/lists?language=en-US&page=1
  Future<PagedMovies> getListsByMovieId(
      {required String movieId, required int page, required String language});

  /// Fetches Movie Details
  /// movie/movie_id?language=en-US
  Future<DetailModel> getMovieDetails(
      {required String movieId, required String language});
}

@Singleton(as: MoviesRemoteSource)
class MoviesRemoteSourceImpl extends BaseSource implements MoviesRemoteSource {
  MoviesRemoteSourceImpl(super.dio);

  @override
  Future<PagedMovies> getListsByMovieId(
          {required String movieId,
          required int page,
          required String language}) =>
      makeRequest(
          path: 'movie/$movieId/lists',
          queryParameters: {
            'language': language,
            'page': page,
          },
          method: 'GET',
          call: (data) => PagedMovies.fromJson(data));

  @override
  Future<DetailModel> getMovieDetails(
          {required String movieId, required String language}) =>
      makeRequest(
          path: 'movie/$movieId',
          method: 'GET',
          queryParameters: {'language': language},
          call: (data) => DetailModel.fromJson(data));

  @override
  Future<PagedMovies> getMoviesByGenre(
          {required bool includeVideo,
          required bool includeAdult,
          required String sortBy,
          required int page,
          required String language}) =>
      makeRequest(
          path: 'discover/movie',
          method: 'GET',
          queryParameters: {
            'include_adult': includeAdult,
            'include_video': includeVideo,
            'language': language,
            'page': page,
            'sort_by': sortBy,
          },
          call: (data) => PagedMovies.fromJson(data));

  @override
  Future<PagedMovies> getMoviesByQuery(
          {required String query,
          required bool includeAdults,
          required int page,
          required String language}) =>
      makeRequest(
          path: 'search/movie',
          method: 'GET',
          queryParameters: {
            'include_adult': includeAdults,
            'language': language,
            'page': page,
            'query': query,
          },
          call: (data) => PagedMovies.fromJson(data));

  @override
  Future<PagedMovies> getNowPlayingMovies(
          {required String language, required int page}) =>
      makeRequest(
          path: 'movie/now_playing',
          queryParameters: {
            'language': language,
            'page': page,
          },
          method: 'GET',
          call: (data) => PagedMovies.fromJson(data));

  @override
  Future<PagedMovies> getPopularMovies(
          {required String language, required int page}) =>
      makeRequest(
          path: 'movie/popular',
          queryParameters: {
            'language': language,
            'page': page,
          },
          method: 'GET',
          call: (data) => PagedMovies.fromJson(data));

  @override
  Future<PagedMovies> getRecommendationsByMovieId(
          {required String movieId,
          required int page,
          required String language}) =>
      makeRequest(
          path: 'movie/$movieId/recommendations',
          queryParameters: {
            'language': language,
            'page': page,
          },
          method: 'GET',
          call: (data) => PagedMovies.fromJson(data));

  @override
  Future<PagedMovies> getSimilarMovies(
          {required String movieId,
          required int page,
          required String language}) =>
      makeRequest(
          path: 'movie/$movieId/similar',
          queryParameters: {
            'language': language,
            'page': page,
          },
          method: 'GET',
          call: (data) => PagedMovies.fromJson(data));

  @override
  Future<PagedMovies> getTopRatedMovies(
          {required String language, required int page}) =>
      makeRequest(
          path: 'movie/top_rated',
          queryParameters: {
            'language': language,
            'page': page,
          },
          method: 'GET',
          call: (data) => PagedMovies.fromJson(data));

  @override
  Future<PagedMovies> getUpcomingMovies(
          {required String language, required int page}) =>
      makeRequest(
          path: 'movie/upcoming',
          queryParameters: {
            'language': language,
            'page': page,
          },
          method: 'GET',
          call: (data) => PagedMovies.fromJson(data));

  @override
  Future<VideoModel> getVideosByMovieId({required String movieId}) =>
      makeRequest(
          path: 'movie/$movieId/videos',
          method: 'GET',
          call: (data) => VideoModel.fromJson(data));

  @override
  Future<PagedMovies> getMoviesByGenreId(
          {required String genreId,
          required int page,
          required String language}) =>
      makeRequest(
          path: 'genre/movie/list',
          queryParameters: {
            'language': language,
            'page': page,
          },
          method: 'GET',
          call: (data) => PagedMovies.fromJson(data));
}
