import 'package:movie_app/core/extensions/lang.dart';
import 'package:movie_app/core/network/result.dart';
import 'package:movie_app/core/services/lang_service.dart';
import 'package:movie_app/data/source/local/genres/genre_db_entity.dart';
import 'package:movie_app/data/source/local/genres/genres_local_service.dart';
import 'package:movie_app/data/source/remote/genre/genre.dart';
import 'package:movie_app/domain/entities/genre_entity.dart';
import 'package:movie_app/features/init_app/domain/i_genres_repository.dart';

class GenresRepository implements IGenresRepository {
  final IGenreRemoteSource _genreRemoteSource;
  final ILangService _langService;
  final IGenresLocalService _genresLocalService;

  GenresRepository(
    this._genreRemoteSource,
    this._langService,
    this._genresLocalService,
  );

  @override
  Future<Result<List<GenreEntity>>> getGenres() async {
    try {
      final lang = _langService.getLanguage().toCountryCode();
      final result = await _genreRemoteSource.getAllGenres(language: lang);
      final genres =
          (result.genres ?? [])
              .map((element) => GenreEntity.fromModel(element))
              .toList();
      return Success(genres);
    } catch (e) {
      return Error(e.toString());
    }
  }

  @override
  Future<Result<bool>> saveGenres(List<GenreEntity> activeGenres) async {
    try {
      final genres =
          activeGenres.map((e) => GenreDbEntity.fromEntity(e)).toList();
      await _genresLocalService.setActiveGenres(genres);
      return Success(true);
    } catch (e) {
      return Error(e.toString());
    }
  }
}
