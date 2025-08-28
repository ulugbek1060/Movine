import 'package:injectable/injectable.dart';
import 'package:movie_app/data/source/remote/people/models/paged_people_model.dart';
import 'package:movie_app/data/source/remote/people/models/person_detail_model.dart';

import 'models/person_photos_model.dart';

abstract class PeopleRemoteSource {
  /// Fetches Popular People
  /// person/popular?language=en-US&page=1
  Future<PagedPeopleModel> getPopularPeople(
      {required String language, required int page});

  /// Fetches Person by id
  /// person/{id}?language=en-US&page=1
  Future<PersonDetailModel> getPersonById(
      {required int id, required String language});

  /// Fetches Person by query
  /// search/person?language=en-US&page=1&query={query}
  Future<PagedPeopleModel> getPeopleByQuery(
      {required String query, required String language, required int page});

  /// Fetches Person by movie
  /// person/{id}/movie_credits?language=en-US&page=1

  /// Fetches Person by images
  /// person/{id}/images?language=en-US&page=1
  Future<PersonPhotosModel> getPersonImages(
      {required int id, required String language});

  /// Fetches Person by translations
  /// person/{id}/translations?language=en-US&page=1

  /// Fetches Person by videos
  /// person/{id}/videos?language=en-US&page=1

  /// Fetches Person by similar
  /// person/{id}/similar?language=en-US&page=1

  /// Fetches Person by watch provider
  /// person/{id}/watch/providers?language=en-US&page=1

  /// Fetches Person by rating
  /// person/{id}/rating?language=en-US&page=1
}

@Singleton(as: PeopleRemoteSource)
class PeopleRemoteSourceImpl implements PeopleRemoteSource {
  @override
  Future<PagedPeopleModel> getPeopleByQuery(
      {required String query, required String language, required int page}) {
    // TODO: implement getPeopleByQuery
    throw UnimplementedError();
  }

  @override
  Future<PersonDetailModel> getPersonById(
      {required int id, required String language}) {
    // TODO: implement getPersonById
    throw UnimplementedError();
  }

  @override
  Future<PersonPhotosModel> getPersonImages(
      {required int id, required String language}) {
    // TODO: implement getPersonImages
    throw UnimplementedError();
  }

  @override
  Future<PagedPeopleModel> getPopularPeople(
      {required String language, required int page}) {
    // TODO: implement getPopularPeople
    throw UnimplementedError();
  }
}
