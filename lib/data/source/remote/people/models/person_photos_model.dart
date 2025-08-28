import 'package:freezed_annotation/freezed_annotation.dart';

part 'person_photos_model.freezed.dart';

part 'person_photos_model.g.dart';

@freezed
class PersonPhotosModel with _$PersonPhotosModel {
  const factory PersonPhotosModel({
    int? id,
    List<PersonPhotosProfilesModel?>? profiles,
  }) = _PersonPhotosModel;

  factory PersonPhotosModel.fromJson(Map<String, dynamic> json) =>
      _$PersonPhotosModelFromJson(json);
}

@freezed
class PersonPhotosProfilesModel with _$PersonPhotosProfilesModel {
  const factory PersonPhotosProfilesModel({
    @JsonKey(name: 'aspect_ratio') double? aspectRatio,
    int? height,
    @JsonKey(name: 'iso_639_1') dynamic iso6391,
    @JsonKey(name: 'file_path') String? filePath,
    @JsonKey(name: 'vote_average') double? voteAverage,
    @JsonKey(name: 'vote_count') int? voteCount,
    int? width,
  }) = _PersonPhotosProfilesModel;

  factory PersonPhotosProfilesModel.fromJson(Map<String, dynamic> json) =>
      _$PersonPhotosProfilesModelFromJson(json);
}
