// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'genre_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$genresRepositoryHash() => r'730ec461d0f22b01fa9c6119e2c2e9c9a2d8d76b';

/// See also [genresRepository].
@ProviderFor(genresRepository)
final genresRepositoryProvider =
    AutoDisposeProvider<IGenresRepository>.internal(
  genresRepository,
  name: r'genresRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$genresRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GenresRepositoryRef = AutoDisposeProviderRef<IGenresRepository>;
String _$genreHash() => r'08265f6cb3e8d05c80f87600000b9169e7d1de84';

/// See also [Genre].
@ProviderFor(Genre)
final genreProvider =
    AutoDisposeAsyncNotifierProvider<Genre, List<GenreEntity>>.internal(
  Genre.new,
  name: r'genreProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$genreHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Genre = AutoDisposeAsyncNotifier<List<GenreEntity>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
