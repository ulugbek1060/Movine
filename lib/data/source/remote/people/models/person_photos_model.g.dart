// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_photos_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PersonPhotosModelImpl _$$PersonPhotosModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PersonPhotosModelImpl(
      id: (json['id'] as num?)?.toInt(),
      profiles: (json['profiles'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : PersonPhotosProfilesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PersonPhotosModelImplToJson(
        _$PersonPhotosModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'profiles': instance.profiles,
    };

_$PersonPhotosProfilesModelImpl _$$PersonPhotosProfilesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PersonPhotosProfilesModelImpl(
      aspectRatio: (json['aspect_ratio'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toInt(),
      iso6391: json['iso_639_1'],
      filePath: json['file_path'] as String?,
      voteAverage: (json['vote_average'] as num?)?.toDouble(),
      voteCount: (json['vote_count'] as num?)?.toInt(),
      width: (json['width'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PersonPhotosProfilesModelImplToJson(
        _$PersonPhotosProfilesModelImpl instance) =>
    <String, dynamic>{
      'aspect_ratio': instance.aspectRatio,
      'height': instance.height,
      'iso_639_1': instance.iso6391,
      'file_path': instance.filePath,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
      'width': instance.width,
    };
