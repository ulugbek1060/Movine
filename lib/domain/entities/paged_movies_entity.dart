import 'package:equatable/equatable.dart';
import 'package:movie_app/core/extensions/lang.dart';
import 'package:movie_app/data/source/remote/collections/models/paged_movies.dart';
import 'package:movie_app/domain/entities/movie_entity.dart';

class PagedMoviesEntity extends Equatable {
  final int? page;
  final int? totalPages;
  final int? totalResults;
  final List<MovieEntity> results;

  const PagedMoviesEntity({
    this.page,
    this.totalPages,
    this.totalResults,
    required this.results,
  });

  @override
  List<Object?> get props => [
        page,
        totalPages,
        totalResults,
        results,
      ];

  static PagedMoviesEntity fromSourceModel(PagedMovies pagedMovies) {
    final results = (pagedMovies.results ?? [])
        .map((e) => MovieEntity.fromSourceModel(e))
        .toList();

    return PagedMoviesEntity(
      page: pagedMovies.page,
      totalPages: pagedMovies.totalPages,
      totalResults: pagedMovies.totalResults,
      results: results,
    );
  }
}
