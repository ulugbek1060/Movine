import 'package:freezed_annotation/freezed_annotation.dart';

part 'paged_people_model.freezed.dart';

part 'paged_people_model.g.dart';

@freezed
class PagedPeopleModel with _$PagedPeopleModel {
  const factory PagedPeopleModel({
    int? page,
    List<PagedPeopleResultsModel?>? results,
    @JsonKey(name: 'total_pages') int? totalPages,
    @JsonKey(name: 'total_results') int? totalResults,
  }) = _PagedPeopleModel;

  factory PagedPeopleModel.fromJson(Map<String, dynamic> json) =>
      _$PagedPeopleModelFromJson(json);
}

@freezed
class PagedPeopleResultsModel with _$PagedPeopleResultsModel {
  const factory PagedPeopleResultsModel({
    bool? adult,
    int? gender,
    int? id,
    @JsonKey(name: 'known_for_department') String? knownForDepartment,
    String? name,
    @JsonKey(name: 'original_name') String? originalName,
    double? popularity,
    @JsonKey(name: 'profile_path') String? profilePath,
    @JsonKey(name: 'known_for')
    List<PagedPeopleResultsKnownForModel?>? knownFor,
  }) = _PagedPeopleResultsModel;

  factory PagedPeopleResultsModel.fromJson(Map<String, dynamic> json) =>
      _$PagedPeopleResultsModelFromJson(json);
}

@freezed
class PagedPeopleResultsKnownForModel with _$PagedPeopleResultsKnownForModel {
  const factory PagedPeopleResultsKnownForModel({
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
  }) = _PagedPeopleResultsKnownForModel;

  factory PagedPeopleResultsKnownForModel.fromJson(Map<String, dynamic> json) =>
      _$PagedPeopleResultsKnownForModelFromJson(json);
}
