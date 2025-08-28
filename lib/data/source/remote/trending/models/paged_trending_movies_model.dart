import 'package:freezed_annotation/freezed_annotation.dart';

part 'paged_trending_movies_model.freezed.dart';

part 'paged_trending_movies_model.g.dart';

@freezed
class PagedTrendingMoviesModel with _$PagedTrendingMoviesModel {
  const factory PagedTrendingMoviesModel({
    int? page,
    List<PagedTrendingMoviesResultsModel?>? results,
    @JsonKey(name: 'total_pages') int? totalPages,
    @JsonKey(name: 'total_results') int? totalResults,
  }) = _PagedTrendingMoviesModel;

  factory PagedTrendingMoviesModel.fromJson(Map<String, dynamic> json) =>
      _$PagedTrendingMoviesModelFromJson(json);
}

@freezed
class PagedTrendingMoviesResultsModel with _$PagedTrendingMoviesResultsModel {
  const factory PagedTrendingMoviesResultsModel({
    bool? adult,
    @JsonKey(name: 'backdrop_path') String? backdropPath,
    int? id,
    String? title,
    @JsonKey(name: 'original_title') String? originalTitle,
    String? overview,
    @JsonKey(name: 'poster_path') String? posterPath,
    @JsonKey(name: 'media_type') String? mediaType,
    @JsonKey(name: 'original_language') String? originalLanguage,
    @JsonKey(name: 'genre_ids') List<int?>? genreIds,
    double? popularity,
    @JsonKey(name: 'release_date') String? releaseDate,
    bool? video,
    @JsonKey(name: 'vote_average') double? voteAverage,
    @JsonKey(name: 'vote_count') int? voteCount,
  }) = _PagedTrendingMoviesResultsModel;

  factory PagedTrendingMoviesResultsModel.fromJson(Map<String, dynamic> json) =>
      _$PagedTrendingMoviesResultsModelFromJson(json);
}
