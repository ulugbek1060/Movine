import 'package:freezed_annotation/freezed_annotation.dart';

part 'paged_trending_persons_model.freezed.dart';

part 'paged_trending_persons_model.g.dart';

@freezed
class PagedTrendingPersonsModel with _$PagedTrendingPersonsModel {
  const factory PagedTrendingPersonsModel({
    int? page,
    List<PagedTrendingPersonsResultsModel?>? results,
    @JsonKey(name: 'total_pages') int? totalPages,
    @JsonKey(name: 'total_results') int? totalResults,
  }) = _PagedTrendingPersonsModel;

  factory PagedTrendingPersonsModel.fromJson(Map<String, dynamic> json) =>
      _$PagedTrendingPersonsModelFromJson(json);
}

@freezed
class PagedTrendingPersonsResultsModel with _$PagedTrendingPersonsResultsModel {
  const factory PagedTrendingPersonsResultsModel({
    bool? adult,
    int? id,
    String? name,
    @JsonKey(name: 'original_name') String? originalName,
    @JsonKey(name: 'media_type') String? mediaType,
    double? popularity,
    int? gender,
    @JsonKey(name: 'known_for_department') String? knownForDepartment,
    @JsonKey(name: 'profile_path') String? profilePath,
  }) = _PagedTrendingPersonsResultsModel;

  factory PagedTrendingPersonsResultsModel.fromJson(
          Map<String, dynamic> json) =>
      _$PagedTrendingPersonsResultsModelFromJson(json);
}
