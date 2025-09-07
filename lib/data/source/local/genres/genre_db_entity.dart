import 'package:movie_app/domain/entities/genre_entity.dart';

class GenreDbEntity {
  final int id;
  final String name;
  final bool isActive;

  GenreDbEntity({required this.id, required this.name, required this.isActive});

  // toJson
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'isActive': isActive,
    };
  }

  // fromJson
  factory GenreDbEntity.fromJson(Map<String, dynamic> json) {
    return GenreDbEntity(
      id: json['id'],
      name: json['name'],
      isActive: json['isActive'],
    );
  }

  factory GenreDbEntity.fromModel(GenreEntity genre) {
    return GenreDbEntity(
      id: genre.id,
      name: genre.name,
      isActive: genre.isActive,
    );
  }

  static GenreDbEntity fromEntity(GenreEntity e) {
    return GenreDbEntity(
      id: e.id,
      name: e.name,
      isActive: e.isActive,
    );
  }
}
