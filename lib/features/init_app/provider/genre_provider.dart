import 'package:movie_app/core/config/app_provider.dart';
import 'package:movie_app/core/config/remote_source_provider.dart';
import 'package:movie_app/data/source/local/local_source_provider.dart';
import 'package:movie_app/domain/entities/genre_entity.dart';
import 'package:movie_app/features/init_app/data/genres_repositoy.dart';
import 'package:movie_app/features/init_app/domain/i_genres_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'genre_provider.g.dart';

@riverpod
IGenresRepository genresRepository(GenresRepositoryRef ref) {
  return GenresRepository(
    ref.read(genreRemoteSourceProvider),
    ref.read(langServiceProvider),
    ref.read(genresLocalServiceProvider),
  );
}

@riverpod
class Genre extends _$Genre {
  @override
  Future<List<GenreEntity>> build() async {
    return await _fetchGenres();
  }

  Future<List<GenreEntity>> _fetchGenres() async {
    final genresRepository = ref.read(genresRepositoryProvider);
    final result = await genresRepository.getGenres();

    return result.fold(
      onSuccess: (genres) => genres,
      onError: (message, error, stackTrace) {
        throw error ?? Exception(message);
      },
    );
  }

  /// Call this if you want to refresh manually later
  Future<void> getGenres() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async => await _fetchGenres());
  }

  void setGenre(GenreEntity item) {
    if (state.valueOrNull == null) return;
    final genres = state.valueOrNull!;
    final index = genres.indexWhere((e) => e.id == item.id);
    if (index == -1) return;
    final genre = genres[index];
    final newGenre = genre.copyWith(isActive: !genre.isActive);
    genres[index] = newGenre;
    state = AsyncValue.data(genres);
  }

  void setGenres() async {
    final genres = state.valueOrNull;
    if (genres == null) return;
    final genresRepository = ref.read(genresRepositoryProvider);
    final activeGenres = genres.where((e) => e.isActive).toList();
    final result = await genresRepository.saveGenres(activeGenres);
    result.fold(
      onSuccess: (result) => state = AsyncValue.data(genres),
      onError: (message, error, stackTrace) {
        throw error ?? Exception(message);
      }
    );
  }
}
