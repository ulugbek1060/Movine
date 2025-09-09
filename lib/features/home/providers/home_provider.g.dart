// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$homeRepositoryHash() => r'957085f0cc35086c658eca7bfee61d3da2ac63a2';

/// See also [homeRepository].
@ProviderFor(homeRepository)
final homeRepositoryProvider = AutoDisposeProvider<IHomeRepository>.internal(
  homeRepository,
  name: r'homeRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$homeRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef HomeRepositoryRef = AutoDisposeProviderRef<IHomeRepository>;
String _$nowPlayingMoviesHash() => r'98edc6db7bdfc70f2dd88d23563778742fed75e4';

/// See also [nowPlayingMovies].
@ProviderFor(nowPlayingMovies)
final nowPlayingMoviesProvider =
    AutoDisposeFutureProvider<PaginationState<MovieEntity>>.internal(
  nowPlayingMovies,
  name: r'nowPlayingMoviesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$nowPlayingMoviesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef NowPlayingMoviesRef
    = AutoDisposeFutureProviderRef<PaginationState<MovieEntity>>;
String _$popularMoviesHash() => r'300ae4bcef7b82041b55c4ee89c2929ec85a13eb';

/// See also [popularMovies].
@ProviderFor(popularMovies)
final popularMoviesProvider =
    AutoDisposeFutureProvider<PaginationState<MovieEntity>>.internal(
  popularMovies,
  name: r'popularMoviesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$popularMoviesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef PopularMoviesRef
    = AutoDisposeFutureProviderRef<PaginationState<MovieEntity>>;
String _$topRatedMoviesHash() => r'89ed8bb458eb0f1003c689f96fd2f014d165188b';

/// See also [topRatedMovies].
@ProviderFor(topRatedMovies)
final topRatedMoviesProvider =
    AutoDisposeFutureProvider<PaginationState<MovieEntity>>.internal(
  topRatedMovies,
  name: r'topRatedMoviesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$topRatedMoviesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef TopRatedMoviesRef
    = AutoDisposeFutureProviderRef<PaginationState<MovieEntity>>;
String _$upcomingMoviesHash() => r'1640f86240311788cf99b2b3308906909467f343';

/// See also [upcomingMovies].
@ProviderFor(upcomingMovies)
final upcomingMoviesProvider =
    AutoDisposeFutureProvider<PaginationState<MovieEntity>>.internal(
  upcomingMovies,
  name: r'upcomingMoviesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$upcomingMoviesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef UpcomingMoviesRef
    = AutoDisposeFutureProviderRef<PaginationState<MovieEntity>>;
String _$movieListProviderHash() => r'fbc2c1fb66ce29d8f05843216a07de2716af44fa';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$MovieListProvider
    extends BuildlessAutoDisposeAsyncNotifier<PaginationState<MovieEntity>> {
  late final MovieType type;

  FutureOr<PaginationState<MovieEntity>> build(
    MovieType type,
  );
}

/// home controller
///
/// Copied from [MovieListProvider].
@ProviderFor(MovieListProvider)
const movieListProviderProvider = MovieListProviderFamily();

/// home controller
///
/// Copied from [MovieListProvider].
class MovieListProviderFamily
    extends Family<AsyncValue<PaginationState<MovieEntity>>> {
  /// home controller
  ///
  /// Copied from [MovieListProvider].
  const MovieListProviderFamily();

  /// home controller
  ///
  /// Copied from [MovieListProvider].
  MovieListProviderProvider call(
    MovieType type,
  ) {
    return MovieListProviderProvider(
      type,
    );
  }

  @override
  MovieListProviderProvider getProviderOverride(
    covariant MovieListProviderProvider provider,
  ) {
    return call(
      provider.type,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'movieListProviderProvider';
}

/// home controller
///
/// Copied from [MovieListProvider].
class MovieListProviderProvider extends AutoDisposeAsyncNotifierProviderImpl<
    MovieListProvider, PaginationState<MovieEntity>> {
  /// home controller
  ///
  /// Copied from [MovieListProvider].
  MovieListProviderProvider(
    MovieType type,
  ) : this._internal(
          () => MovieListProvider()..type = type,
          from: movieListProviderProvider,
          name: r'movieListProviderProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$movieListProviderHash,
          dependencies: MovieListProviderFamily._dependencies,
          allTransitiveDependencies:
              MovieListProviderFamily._allTransitiveDependencies,
          type: type,
        );

  MovieListProviderProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.type,
  }) : super.internal();

  final MovieType type;

  @override
  FutureOr<PaginationState<MovieEntity>> runNotifierBuild(
    covariant MovieListProvider notifier,
  ) {
    return notifier.build(
      type,
    );
  }

  @override
  Override overrideWith(MovieListProvider Function() create) {
    return ProviderOverride(
      origin: this,
      override: MovieListProviderProvider._internal(
        () => create()..type = type,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        type: type,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<MovieListProvider,
      PaginationState<MovieEntity>> createElement() {
    return _MovieListProviderProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MovieListProviderProvider && other.type == type;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, type.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin MovieListProviderRef
    on AutoDisposeAsyncNotifierProviderRef<PaginationState<MovieEntity>> {
  /// The parameter `type` of this provider.
  MovieType get type;
}

class _MovieListProviderProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<MovieListProvider,
        PaginationState<MovieEntity>> with MovieListProviderRef {
  _MovieListProviderProviderElement(super.provider);

  @override
  MovieType get type => (origin as MovieListProviderProvider).type;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
