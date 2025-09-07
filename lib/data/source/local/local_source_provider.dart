import 'package:movie_app/data/source/local/genres/genres_local_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'favorite/favorite_local_service.dart';

part 'local_source_provider.g.dart';

@riverpod
IGenresLocalService genresLocalService(GenresLocalServiceRef ref) =>
    GenresLocalService();

@riverpod
IFavoriteLocalService favoriteLocalService(FavoriteLocalServiceRef ref) =>
    FavoriteLocalService();
