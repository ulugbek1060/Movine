import 'package:equatable/equatable.dart';
import 'package:movie_app/data/source/remote/collections/models/movie_model.dart';

class MovieEntity extends Equatable {
  final int id;
  final String title;
  final String overview;
  final double voteAverage;
  final String releaseDate;
  final String posterPath;
  final String backdropPath;
  final List<int> genreIds;
  final double popularity;
  final bool video;
  final int voteCount;

  const MovieEntity({
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

  // fromSourceModel
  static MovieEntity fromSourceModel(MovieModel movie) => MovieEntity(
        id: movie.id ?? 0,
        title: movie.title ?? '',
        overview: movie.overview ?? '',
        voteAverage: movie.voteAverage ?? 0,
        releaseDate: movie.releaseDate ?? '',
        posterPath: movie.posterPath ?? '',
        backdropPath: movie.backdropPath ?? '',
        genreIds: movie.genreIds ?? [],
        popularity: movie.popularity ?? 0,
        video: movie.video ?? false,
        voteCount: movie.voteCount ?? 0,
      );
}
