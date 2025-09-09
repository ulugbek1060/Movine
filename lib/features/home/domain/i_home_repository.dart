import 'package:movie_app/core/network/result.dart';
import 'package:movie_app/domain/entities/paged_movies_entity.dart';
import 'package:movie_app/features/home/domain/movies_type_enum.dart';

abstract interface class IHomeRepository {
  Future<Result<PagedMoviesEntity>> getMoviesByType({
    required int page,
    required MovieType type,
  });
}
