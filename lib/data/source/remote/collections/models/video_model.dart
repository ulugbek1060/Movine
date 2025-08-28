import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_model.freezed.dart';
part 'video_model.g.dart';

@freezed
class VideoModel with _$VideoModel {
  const factory VideoModel({
    int? id,
    List<VideoResultsModel>? results,
  }) = _VideoModel;

  factory VideoModel.fromJson(Map<String, dynamic> json) =>
      _$VideoModelFromJson(json);
}

@freezed
class VideoResultsModel with _$VideoResultsModel {
  const factory VideoResultsModel({
    @JsonKey(name: 'iso_639_1') String? iso6391,
    @JsonKey(name: 'iso_3166_1') String? iso31661,
    String? name,
    String? key,
    String? site,
    int? size,
    String? type,
    bool? official,
    @JsonKey(name: 'published_at') String? publishedAt,
    String? id,
  }) = _VideoResultsModel;

  factory VideoResultsModel.fromJson(Map<String, dynamic> json) =>
      _$VideoResultsModelFromJson(json);
}
