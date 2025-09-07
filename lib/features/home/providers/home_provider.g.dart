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
String _$nowPlayingMoviesHash() => r'1ace0b11cfa93608da5bc09a9cb8dce13a3bd548';

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

abstract class _$NowPlayingMovies
    extends BuildlessAutoDisposeAsyncNotifier<PaginationState<MovieEntity>> {
  late final MovieType type;

  FutureOr<PaginationState<MovieEntity>> build(
    MovieType type,
  );
}

/// See also [NowPlayingMovies].
@ProviderFor(NowPlayingMovies)
const nowPlayingMoviesProvider = NowPlayingMoviesFamily();

/// See also [NowPlayingMovies].
class NowPlayingMoviesFamily
    extends Family<AsyncValue<PaginationState<MovieEntity>>> {
  /// See also [NowPlayingMovies].
  const NowPlayingMoviesFamily();

  /// See also [NowPlayingMovies].
  NowPlayingMoviesProvider call(
    MovieType type,
  ) {
    return NowPlayingMoviesProvider(
      type,
    );
  }

  @override
  NowPlayingMoviesProvider getProviderOverride(
    covariant NowPlayingMoviesProvider provider,
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
  String? get name => r'nowPlayingMoviesProvider';
}

/// See also [NowPlayingMovies].
class NowPlayingMoviesProvider extends AutoDisposeAsyncNotifierProviderImpl<
    NowPlayingMovies, PaginationState<MovieEntity>> {
  /// See also [NowPlayingMovies].
  NowPlayingMoviesProvider(
    MovieType type,
  ) : this._internal(
          () => NowPlayingMovies()..type = type,
          from: nowPlayingMoviesProvider,
          name: r'nowPlayingMoviesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$nowPlayingMoviesHash,
          dependencies: NowPlayingMoviesFamily._dependencies,
          allTransitiveDependencies:
              NowPlayingMoviesFamily._allTransitiveDependencies,
          type: type,
        );

  NowPlayingMoviesProvider._internal(
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
    covariant NowPlayingMovies notifier,
  ) {
    return notifier.build(
      type,
    );
  }

  @override
  Override overrideWith(NowPlayingMovies Function() create) {
    return ProviderOverride(
      origin: this,
      override: NowPlayingMoviesProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<NowPlayingMovies,
      PaginationState<MovieEntity>> createElement() {
    return _NowPlayingMoviesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is NowPlayingMoviesProvider && other.type == type;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, type.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin NowPlayingMoviesRef
    on AutoDisposeAsyncNotifierProviderRef<PaginationState<MovieEntity>> {
  /// The parameter `type` of this provider.
  MovieType get type;
}

class _NowPlayingMoviesProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<NowPlayingMovies,
        PaginationState<MovieEntity>> with NowPlayingMoviesRef {
  _NowPlayingMoviesProviderElement(super.provider);

  @override
  MovieType get type => (origin as NowPlayingMoviesProvider).type;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
