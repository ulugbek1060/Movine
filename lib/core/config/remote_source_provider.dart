
import 'package:movie_app/core/config/app_provider.dart';
import 'package:movie_app/data/source/remote/collections/collections.dart';
import 'package:movie_app/data/source/remote/genre/genre.dart';
import 'package:movie_app/data/source/remote/people/people.dart';
import 'package:movie_app/data/source/remote/trending/trending.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'remote_source_provider.g.dart';

@Riverpod(keepAlive: true)
MoviesRemoteSource moviesRemoteSource(MoviesRemoteSourceRef ref) =>
    MoviesRemoteSourceImpl(ref.watch(dioProvider));

@Riverpod(keepAlive: true)
IGenreRemoteSource genreRemoteSource(GenreRemoteSourceRef ref) =>
    GenreRemoteSourceImpl(ref.watch(dioProvider));

@Riverpod(keepAlive: true)
PeopleRemoteSource peopleRemoteSource(PeopleRemoteSourceRef ref) =>
    PeopleRemoteSourceImpl(ref.watch(dioProvider));

@Riverpod(keepAlive: true)
TrendingRemoteSource trendingRemoteSource(TrendingRemoteSourceRef ref) =>
    TrendingRemoteSourceImpl(ref.watch(dioProvider));
