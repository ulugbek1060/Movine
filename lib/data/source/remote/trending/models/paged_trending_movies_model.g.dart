// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paged_trending_movies_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PagedTrendingMoviesModelImpl _$$PagedTrendingMoviesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PagedTrendingMoviesModelImpl(
      page: (json['page'] as num?)?.toInt(),
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : PagedTrendingMoviesResultsModel.fromJson(
                  e as Map<String, dynamic>))
          .toList(),
      totalPages: (json['total_pages'] as num?)?.toInt(),
      totalResults: (json['total_results'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PagedTrendingMoviesModelImplToJson(
        _$PagedTrendingMoviesModelImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };

_$PagedTrendingMoviesResultsModelImpl
    _$$PagedTrendingMoviesResultsModelImplFromJson(Map<String, dynamic> json) =>
        _$PagedTrendingMoviesResultsModelImpl(
          adult: json['adult'] as bool?,
          backdropPath: json['backdrop_path'] as String?,
          id: (json['id'] as num?)?.toInt(),
          title: json['title'] as String?,
          originalTitle: json['original_title'] as String?,
          overview: json['overview'] as String?,
          posterPath: json['poster_path'] as String?,
          mediaType: json['media_type'] as String?,
          originalLanguage: json['original_language'] as String?,
          genreIds: (json['genre_ids'] as List<dynamic>?)
              ?.map((e) => (e as num?)?.toInt())
              .toList(),
          popularity: (json['popularity'] as num?)?.toDouble(),
          releaseDate: json['release_date'] as String?,
          video: json['video'] as bool?,
          voteAverage: (json['vote_average'] as num?)?.toDouble(),
          voteCount: (json['vote_count'] as num?)?.toInt(),
        );

Map<String, dynamic> _$$PagedTrendingMoviesResultsModelImplToJson(
        _$PagedTrendingMoviesResultsModelImpl instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'backdrop_path': instance.backdropPath,
      'id': instance.id,
      'title': instance.title,
      'original_title': instance.originalTitle,
      'overview': instance.overview,
      'poster_path': instance.posterPath,
      'media_type': instance.mediaType,
      'original_language': instance.originalLanguage,
      'genre_ids': instance.genreIds,
      'popularity': instance.popularity,
      'release_date': instance.releaseDate,
      'video': instance.video,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
    };
