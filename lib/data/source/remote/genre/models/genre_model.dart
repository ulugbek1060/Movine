import 'package:freezed_annotation/freezed_annotation.dart';

part 'genre_model.freezed.dart';
part 'genre_model.g.dart';

@freezed
class GenresModel with _$GenresModel {
  const factory GenresModel({
    List<GenreModel>? genres,
  }) = _GenresModel;

  factory GenresModel.fromJson(Map<String, dynamic> json) =>
      _$GenresModelFromJson(json);
}

@freezed
class GenreModel with _$GenreModel {
  const factory GenreModel({
    int? id,
    String? name,
  }) = _GenreModel;

  factory GenreModel.fromJson(Map<String, dynamic> json) =>
      _$GenreModelFromJson(json);
}
