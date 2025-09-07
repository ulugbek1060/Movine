import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';
import 'package:movie_app/domain/entities/movie_entity.dart';

part 'movie_db_entity.g.dart';

@HiveType(typeId: 0)
class MovieDbEntity extends Equatable {
  @HiveField(0)
  final int? id;
  @HiveField(1)
  final String? title;
  @HiveField(2)
  final String? overview;
  @HiveField(3)
  final double? voteAverage;
  @HiveField(4)
  final String? releaseDate;
  @HiveField(5)
  final String? posterPath;
  @HiveField(6)
  final String? backdropPath;
  @HiveField(7)
  final List<int> genreIds;
  @HiveField(8)
  final double? popularity;
  @HiveField(9)
  final bool? video;
  @HiveField(10)
  final int? voteCount;

  const MovieDbEntity({
    required this.id,
    required this.title,
    required this.overview,
    required this.voteAverage,
    required this.releaseDate,
    required this.posterPath,
    required this.backdropPath,
    required this.genreIds,
    required this.popularity,
    required this.video,
    required this.voteCount,
  });

  @override
  List<Object?> get props => [
    id,
    title,
    overview,
    voteAverage,
    releaseDate,
    posterPath,
    backdropPath,
    genreIds,
    popularity,
    video,
    voteCount,
  ];

}
