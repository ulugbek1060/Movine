import 'package:movie_app/core/config/app_provider.dart';
import 'package:movie_app/core/config/remote_source_provider.dart';
import 'package:movie_app/features/explore/data/explore_repository.dart';
import 'package:movie_app/features/explore/domain/explore_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'explore_repository_provider.g.dart';

@riverpod
IExploreRepository exploreRepository(ExploreRepositoryRef ref) =>
    ExploreRepository(
      remoteSource: ref.read(moviesRemoteSourceProvider),
      langService: ref.read(langServiceProvider),
    );
