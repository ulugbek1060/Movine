import 'dart:async';

import 'package:hive/hive.dart';
import 'package:movie_app/core/network/result.dart';
import 'package:movie_app/data/source/local/favorite/movie_db_entity.dart';

abstract interface class IFavoriteLocalService {
  Stream<Set<int>> get favoriteMoviesIds;
  Stream<List<MovieDbEntity>> get favoriteMovies;
  Future<Result<void>> addFavoriteMovie(MovieDbEntity movie);
  Future<Result<void>> removeFavoriteMovie(int movieId);
}

class FavoriteLocalService implements IFavoriteLocalService {
  late final Box<MovieDbEntity> _favoriteMoviesBox;
  static const String _favoriteMoviesBoxName = "favoriteMovies";

  final _favoriteMoviesController =
      StreamController<List<MovieDbEntity>>.broadcast();

  FavoriteLocalService() {
    _init();
  }

  Future<void> _init() async {
    try {
      Future.microtask(() {
        Hive.registerAdapter(MovieDbEntityAdapter());
      });

      _favoriteMoviesBox = await Hive.openBox<MovieDbEntity>(
        _favoriteMoviesBoxName,
      );

      _updateStream();

      _favoriteMoviesBox.watch().listen((event) {
        _updateStream();
      });
    } catch (e) {
      // TODO: handle error
    }
  }

  Future<void> _ensureBoxOpen() async {
    if (!_favoriteMoviesBox.isOpen) {
      _favoriteMoviesBox = await Hive.openBox<MovieDbEntity>(
        _favoriteMoviesBoxName,
      );
    }
  }

  void _updateStream() {
    if (!_favoriteMoviesController.isClosed) {
      _favoriteMoviesController.add(_favoriteMoviesBox.values.toList());
    }
  }

  @override
  Stream<List<MovieDbEntity>> get favoriteMovies =>
      _favoriteMoviesController.stream;

  @override
  Stream<Set<int>> get favoriteMoviesIds =>
      _favoriteMoviesController.stream.map((item) {
        return item.map((e) => e.id ?? 0).toSet();
      });

  @override
  Future<Result<void>> addFavoriteMovie(MovieDbEntity movie) async {
    try {
      await _ensureBoxOpen();
      _favoriteMoviesBox.add(movie);
      return Success(null);
    } catch (e) {
      return Error(e.toString());
    }
  }

  @override
  Future<Result<void>> removeFavoriteMovie(int movieId) async {
    try {
      await _ensureBoxOpen();
      await _favoriteMoviesBox.delete(movieId);
      return Success(null);
    } catch (e) {
      return Error(e.toString());
    }
  }
}
