import 'package:freezed_annotation/freezed_annotation.dart';

part 'genre_model.freezed.dart';

part 'genre_model.g.dart';

@freezed
class GenreModel with _$GenreModel {
  const factory GenreModel({
    List<GenreGenresModel?>? genres,
  }) = _GenreModel;

  factory GenreModel.fromJson(Map<String, dynamic> json) =>
      _$GenreModelFromJson(json);
}

@freezed
class GenreGenresModel with _$GenreGenresModel {
  const factory GenreGenresModel({
    int? id,
    String? name,
  }) = _GenreGenresModel;

  factory GenreGenresModel.fromJson(Map<String, dynamic> json) =>
      _$GenreGenresModelFromJson(json);
}
