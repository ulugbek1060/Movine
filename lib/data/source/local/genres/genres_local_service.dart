import 'package:movie_app/core/network/result.dart';
import 'package:movie_app/data/source/local/genres/genre_db_entity.dart';

abstract interface class IGenresLocalService {
  Future<Result<List<GenreDbEntity>>> getActiveGenres();
  Future<Result<void>> setActiveGenres(List<GenreDbEntity> genres);
}

class GenresLocalService implements IGenresLocalService {


  @override
  Future<Result<List<GenreDbEntity>>> getActiveGenres() {
    // TODO: implement getActiveGenres
    throw UnimplementedError();
  }

  @override
  Future<Result<void>> setActiveGenres(List<GenreDbEntity> genres) {
    // TODO: implement setActiveGenres
    throw UnimplementedError();
  }

}