import 'package:movie_app/core/base/base_source.dart';

import 'models/genre_model.dart';

abstract class IGenreRemoteSource {
  /// Fetches Genre
  /// https://api.themoviedb.org/3/genre/movie/list?language=en-US&page=1
  Future<GenresModel> getAllGenres({required String language});
}

class GenreRemoteSourceImpl extends BaseSource implements IGenreRemoteSource {
  GenreRemoteSourceImpl(super.dio);

  @override
  Future<GenresModel> getAllGenres({required String language}) => makeRequest(
      path: 'genre/movie/list',
      method: 'GET',
      queryParameters: {'language': language},
      call: (data) => GenresModel.fromJson(data));
}
