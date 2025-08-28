import 'package:freezed_annotation/freezed_annotation.dart';

part 'person_detail_model.freezed.dart';

part 'person_detail_model.g.dart';

@freezed
class PersonDetailModel with _$PersonDetailModel {
  const factory PersonDetailModel({
    bool? adult,
    @JsonKey(name: 'also_known_as') List<String?>? alsoKnownAs,
    String? biography,
    String? birthday,
    dynamic deathday,
    int? gender,
    dynamic homepage,
    int? id,
    @JsonKey(name: 'imdb_id') String? imdbId,
    @JsonKey(name: 'known_for_department') String? knownForDepartment,
    String? name,
    @JsonKey(name: 'place_of_birth') String? placeOfBirth,
    double? popularity,
    @JsonKey(name: 'profile_path') String? profilePath,
  }) = _PersonDetailModel;

  factory PersonDetailModel.fromJson(Map<String, dynamic> json) =>
      _$PersonDetailModelFromJson(json);
}
