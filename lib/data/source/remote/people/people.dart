import 'package:movie_app/core/base/base_source.dart';
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
  /// person/{id}/watch/provider?language=en-US&page=1

  /// Fetches Person by rating
  /// person/{id}/rating?language=en-US&page=1
}

class PeopleRemoteSourceImpl extends BaseSource implements PeopleRemoteSource {
  PeopleRemoteSourceImpl(super.dio);

  @override
  Future<PagedPeopleModel> getPeopleByQuery(
          {required String query,
          required String language,
          required int page}) =>
      makeRequest(
          path: 'search/person',
          queryParameters: {
            'language': language,
            'page': page,
            'query': query,
          },
          method: 'GET',
          call: (data) => PagedPeopleModel.fromJson(data));

  @override
  Future<PersonDetailModel> getPersonById(
          {required int id, required String language}) =>
      makeRequest(
          path: 'person/$id',
          queryParameters: {'language': language},
          method: 'GET',
          call: (data) => PersonDetailModel.fromJson(data));

  @override
  Future<PersonPhotosModel> getPersonImages(
          {required int id, required String language}) =>
      makeRequest(
          path: 'person/$id/images',
          method: 'GET',
          call: (data) => PersonPhotosModel.fromJson(data));

  @override
  Future<PagedPeopleModel> getPopularPeople(
          {required String language, required int page}) =>
      makeRequest(
          path: 'person/popular',
          queryParameters: {'language': language, 'page': page},
          method: 'GET',
          call: (data) => PagedPeopleModel.fromJson(data));
}
