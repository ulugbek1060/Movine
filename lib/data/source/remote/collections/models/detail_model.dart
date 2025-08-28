import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_model.freezed.dart';
part 'detail_model.g.dart';

@freezed
class DetailModel with _$DetailModel {
  const factory DetailModel({
    bool? adult,
    @JsonKey(name: 'backdrop_path') String? backdropPath,
    @JsonKey(name: 'belongs_to_collection') dynamic belongsToCollection,
    int? budget,
    List<DetailGenresModel?>? genres,
    String? homepage,
    int? id,
    @JsonKey(name: 'imdb_id') String? imdbId,
    @JsonKey(name: 'origin_country') List<String?>? originCountry,
    @JsonKey(name: 'original_language') String? originalLanguage,
    @JsonKey(name: 'original_title') String? originalTitle,
    String? overview,
    double? popularity,
    @JsonKey(name: 'poster_path') String? posterPath,
    @JsonKey(name: 'production_companies')
    List<DetailProductionCompaniesModel?>? productionCompanies,
    @JsonKey(name: 'production_countries')
    List<DetailProductionCountriesModel?>? productionCountries,
    @JsonKey(name: 'release_date') String? releaseDate,
    int? revenue,
    int? runtime,
    @JsonKey(name: 'spoken_languages')
    List<DetailSpokenLanguagesModel?>? spokenLanguages,
    String? status,
    String? tagline,
    String? title,
    bool? video,
    @JsonKey(name: 'vote_average') double? voteAverage,
    @JsonKey(name: 'vote_count') int? voteCount,
  }) = _DetailModel;

  factory DetailModel.fromJson(Map<String, dynamic> json) =>
      _$DetailModelFromJson(json);
}

@freezed
class DetailGenresModel with _$DetailGenresModel {
  const factory DetailGenresModel({
    int? id,
    String? name,
  }) = _DetailGenresModel;

  factory DetailGenresModel.fromJson(Map<String, dynamic> json) =>
      _$DetailGenresModelFromJson(json);
}

@freezed
class DetailProductionCompaniesModel with _$DetailProductionCompaniesModel {
  const factory DetailProductionCompaniesModel({
    int? id,
    @JsonKey(name: 'logo_path') String? logoPath,
    String? name,
    @JsonKey(name: 'origin_country') String? originCountry,
  }) = _DetailProductionCompaniesModel;

  factory DetailProductionCompaniesModel.fromJson(Map<String, dynamic> json) =>
      _$DetailProductionCompaniesModelFromJson(json);
}

@freezed
class DetailProductionCountriesModel with _$DetailProductionCountriesModel {
  const factory DetailProductionCountriesModel({
    @JsonKey(name: 'iso_3166_1') String? iso31661,
    String? name,
  }) = _DetailProductionCountriesModel;

  factory DetailProductionCountriesModel.fromJson(Map<String, dynamic> json) =>
      _$DetailProductionCountriesModelFromJson(json);
}

@freezed
class DetailSpokenLanguagesModel with _$DetailSpokenLanguagesModel {
  const factory DetailSpokenLanguagesModel({
    @JsonKey(name: 'english_name') String? englishName,
    @JsonKey(name: 'iso_639_1') String? iso6391,
    String? name,
  }) = _DetailSpokenLanguagesModel;

  factory DetailSpokenLanguagesModel.fromJson(Map<String, dynamic> json) =>
      _$DetailSpokenLanguagesModelFromJson(json);
}
