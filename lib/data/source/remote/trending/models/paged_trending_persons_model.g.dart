// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paged_trending_persons_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PagedTrendingPersonsModelImpl _$$PagedTrendingPersonsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PagedTrendingPersonsModelImpl(
      page: (json['page'] as num?)?.toInt(),
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : PagedTrendingPersonsResultsModel.fromJson(
                  e as Map<String, dynamic>))
          .toList(),
      totalPages: (json['total_pages'] as num?)?.toInt(),
      totalResults: (json['total_results'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PagedTrendingPersonsModelImplToJson(
        _$PagedTrendingPersonsModelImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };

_$PagedTrendingPersonsResultsModelImpl
    _$$PagedTrendingPersonsResultsModelImplFromJson(
            Map<String, dynamic> json) =>
        _$PagedTrendingPersonsResultsModelImpl(
          adult: json['adult'] as bool?,
          id: (json['id'] as num?)?.toInt(),
          name: json['name'] as String?,
          originalName: json['original_name'] as String?,
          mediaType: json['media_type'] as String?,
          popularity: (json['popularity'] as num?)?.toDouble(),
          gender: (json['gender'] as num?)?.toInt(),
          knownForDepartment: json['known_for_department'] as String?,
          profilePath: json['profile_path'] as String?,
        );

Map<String, dynamic> _$$PagedTrendingPersonsResultsModelImplToJson(
        _$PagedTrendingPersonsResultsModelImpl instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'id': instance.id,
      'name': instance.name,
      'original_name': instance.originalName,
      'media_type': instance.mediaType,
      'popularity': instance.popularity,
      'gender': instance.gender,
      'known_for_department': instance.knownForDepartment,
      'profile_path': instance.profilePath,
    };
