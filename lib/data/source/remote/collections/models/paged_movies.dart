

import 'movie_model.dart';

class PagedMovies {
  final int? page;
  final int? totalPages;
  final int? totalResults;
  final List<MovieModel>? results;
  PagedMovies({
     this.page,
     this.totalPages,
     this.totalResults,
     this.results,
  });
  factory PagedMovies.fromJson(Map<String, dynamic> json) => PagedMovies(
    page: json['page'],
    totalPages: json['total_pages'],
    totalResults: json['total_results'],
    results: List<MovieModel>.from(json['results'].map((x) => MovieModel.fromJson(x))),
  );
}