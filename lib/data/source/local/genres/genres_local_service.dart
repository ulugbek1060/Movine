import 'dart:async';

import 'package:hive/hive.dart';
import 'package:movie_app/core/network/result.dart';
import 'package:movie_app/data/source/local/genres/genre_db_entity.dart';

abstract interface class IGenresLocalService {
  Stream<List<GenreDbEntity>> get activeGenres;
  Future<Result<List<GenreDbEntity>>> getActiveGenres();
  Future<Result<void>> setActiveGenres(List<GenreDbEntity> genres);
}

class GenresLocalService implements IGenresLocalService {
  static const _boxName = 'genres';
  late final Box _box;

  final StreamController _genresList =
      StreamController<List<GenreDbEntity>>.broadcast();

  GenresLocalService() {
    _init();
  }

  Future<void> _init() async {
    try {
      _box = await Hive.openBox(_boxName);
      _updateStream();
      _box.watch().listen((event) {
        _updateStream();
      });
    } catch (e) {
      // TODO: handle error
    }
  }

  @override
  Stream<List<GenreDbEntity>> get activeGenres => throw UnimplementedError();

  Future<void> _ensureBoxOpen() async {
    if (!_box.isOpen) {
      _box = await Hive.openBox(_boxName);
    }
  }

  void _updateStream() {
    if (!_box.isOpen) {
      _genresList.add(_box.values.toList());
    }
  }

  @override
  Future<Result<List<GenreDbEntity>>> getActiveGenres() async {
    try {
      await _ensureBoxOpen();
      final map = _box.values;
      final genres = map.map((e) => GenreDbEntity.fromJson(e)).toList();
      return Success(genres);
    } catch (e) {
      return Error(e.toString());
    }
  }

  @override
  Future<Result<void>> setActiveGenres(List<GenreDbEntity> genres) async {
    try {
      await _ensureBoxOpen();
      final map = <int, dynamic>{};
      for (var genre in genres) {
        map[genre.id] = genre.toJson();
      }
      await _box.putAll(map);
      return Success(null);
    } catch (e) {
      return Error(e.toString());
    }
  }
}
