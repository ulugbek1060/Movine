import 'package:equatable/equatable.dart';
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

  // empty constructor
  const PagedMoviesEntity.empty()
      : page = null,
        totalPages = null,
        totalResults = null,
        results = const [];

  PagedMoviesEntity copyWith({
    int? page,
    int? totalPages,
    int? totalResults,
    List<MovieEntity>? results,
  }) {
    return PagedMoviesEntity(
      page: page ?? this.page,
      totalPages: totalPages ?? this.totalPages,
      totalResults: totalResults ?? this.totalResults,
      results: results ?? this.results,
    );
  }

  @override
  String toString() {
    return 'PagedMoviesEntity(page: $page, totalPages: $totalPages, totalResults: $totalResults, results: $results)';
  }

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
