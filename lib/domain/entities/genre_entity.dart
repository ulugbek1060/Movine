import 'package:equatable/equatable.dart';
import 'package:movie_app/data/source/remote/genre/models/genre_model.dart';

class GenreEntity extends Equatable {
  final int id;
  final String name;
  final bool isActive;

  const GenreEntity({
    required this.id,
    required this.name,
    this.isActive = false,
  });

  @override
  List<Object?> get props => [id, name, isActive];

  factory GenreEntity.fromModel(GenreModel model) =>
      GenreEntity(id: model.id ?? 0, name: model.name ?? '');

  GenreEntity copyWith({required bool isActive}) {
    return GenreEntity(id: id, name: name, isActive: isActive);
  }
}
