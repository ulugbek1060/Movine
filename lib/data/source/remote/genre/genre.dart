

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';

import 'models/genre_model.dart';

abstract class GenreRemoteSource {
  /// Fetches Genre
  /// https://api.themoviedb.org/3/genre/movie/list?language=en-US&page=1
  Future<GenreModel> getAllGenres({required String language});
}

@Singleton(as: GenreRemoteSource)
class GenreRemoteSourceImpl implements GenreRemoteSource {
  @override
  Future<GenreModel> getAllGenres({required String language}) {
    // TODO: implement getAllGenres
    throw UnimplementedError();
  }
}