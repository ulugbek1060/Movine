import 'package:movie_app/core/network/result.dart';
import 'package:movie_app/domain/entities/genre_entity.dart';

abstract class IGenresRepository {
  Future<Result<List<GenreEntity>>> getGenres();
  Future<Result<bool>> saveGenres(List<GenreEntity> activeGenres);
}