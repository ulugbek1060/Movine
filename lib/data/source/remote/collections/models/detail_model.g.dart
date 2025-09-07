// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailModelImpl _$$DetailModelImplFromJson(Map<String, dynamic> json) =>
    _$DetailModelImpl(
      adult: json['adult'] as bool?,
      backdropPath: json['backdrop_path'] as String?,
      belongsToCollection: json['belongs_to_collection'],
      budget: (json['budget'] as num?)?.toInt(),
      genres: (json['genres'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : DetailGenresModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      homepage: json['homepage'] as String?,
      id: (json['id'] as num?)?.toInt(),
      imdbId: json['imdb_id'] as String?,
      originCountry: (json['origin_country'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      originalLanguage: json['original_language'] as String?,
      originalTitle: json['original_title'] as String?,
      overview: json['overview'] as String?,
      popularity: (json['popularity'] as num?)?.toDouble(),
      posterPath: json['poster_path'] as String?,
      productionCompanies: (json['production_companies'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : DetailProductionCompaniesModel.fromJson(
                  e as Map<String, dynamic>))
          .toList(),
      productionCountries: (json['production_countries'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : DetailProductionCountriesModel.fromJson(
                  e as Map<String, dynamic>))
          .toList(),
      releaseDate: json['release_date'] as String?,
      revenue: (json['revenue'] as num?)?.toInt(),
      runtime: (json['runtime'] as num?)?.toInt(),
      spokenLanguages: (json['spoken_languages'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : DetailSpokenLanguagesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as String?,
      tagline: json['tagline'] as String?,
      title: json['title'] as String?,
      video: json['video'] as bool?,
      voteAverage: (json['vote_average'] as num?)?.toDouble(),
      voteCount: (json['vote_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$DetailModelImplToJson(_$DetailModelImpl instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'backdrop_path': instance.backdropPath,
      'belongs_to_collection': instance.belongsToCollection,
      'budget': instance.budget,
      'genres': instance.genres,
      'homepage': instance.homepage,
      'id': instance.id,
      'imdb_id': instance.imdbId,
      'origin_country': instance.originCountry,
      'original_language': instance.originalLanguage,
      'original_title': instance.originalTitle,
      'overview': instance.overview,
      'popularity': instance.popularity,
      'poster_path': instance.posterPath,
      'production_companies': instance.productionCompanies,
      'production_countries': instance.productionCountries,
      'release_date': instance.releaseDate,
      'revenue': instance.revenue,
      'runtime': instance.runtime,
      'spoken_languages': instance.spokenLanguages,
      'status': instance.status,
      'tagline': instance.tagline,
      'title': instance.title,
      'video': instance.video,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
    };

_$DetailGenresModelImpl _$$DetailGenresModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DetailGenresModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$DetailGenresModelImplToJson(
        _$DetailGenresModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$DetailProductionCompaniesModelImpl
    _$$DetailProductionCompaniesModelImplFromJson(Map<String, dynamic> json) =>
        _$DetailProductionCompaniesModelImpl(
          id: (json['id'] as num?)?.toInt(),
          logoPath: json['logo_path'] as String?,
          name: json['name'] as String?,
          originCountry: json['origin_country'] as String?,
        );

Map<String, dynamic> _$$DetailProductionCompaniesModelImplToJson(
        _$DetailProductionCompaniesModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'logo_path': instance.logoPath,
      'name': instance.name,
      'origin_country': instance.originCountry,
    };

_$DetailProductionCountriesModelImpl
    _$$DetailProductionCountriesModelImplFromJson(Map<String, dynamic> json) =>
        _$DetailProductionCountriesModelImpl(
          iso31661: json['iso_3166_1'] as String?,
          name: json['name'] as String?,
        );

Map<String, dynamic> _$$DetailProductionCountriesModelImplToJson(
        _$DetailProductionCountriesModelImpl instance) =>
    <String, dynamic>{
      'iso_3166_1': instance.iso31661,
      'name': instance.name,
    };

_$DetailSpokenLanguagesModelImpl _$$DetailSpokenLanguagesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DetailSpokenLanguagesModelImpl(
      englishName: json['english_name'] as String?,
      iso6391: json['iso_639_1'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$DetailSpokenLanguagesModelImplToJson(
        _$DetailSpokenLanguagesModelImpl instance) =>
    <String, dynamic>{
      'english_name': instance.englishName,
      'iso_639_1': instance.iso6391,
      'name': instance.name,
    };
