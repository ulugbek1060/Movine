
import 'package:movie_app/core/config/app_provider.dart';
import 'package:movie_app/core/config/remote_source_provider.dart';
import 'package:movie_app/features/home/data/home_repository.dart';
import 'package:movie_app/features/home/domain/i_home_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_repository_provider.g.dart';

@riverpod
IHomeRepository homeRepository(HomeRepositoryRef ref) {
  return HomeRepository(
    ref.read(moviesRemoteSourceProvider),
    ref.read(langServiceProvider),
  );
}