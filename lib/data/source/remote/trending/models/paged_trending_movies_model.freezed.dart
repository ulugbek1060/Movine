// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paged_trending_movies_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PagedTrendingMoviesModel _$PagedTrendingMoviesModelFromJson(
    Map<String, dynamic> json) {
  return _PagedTrendingMoviesModel.fromJson(json);
}

/// @nodoc
mixin _$PagedTrendingMoviesModel {
  int? get page => throw _privateConstructorUsedError;
  List<PagedTrendingMoviesResultsModel?>? get results =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'total_pages')
  int? get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_results')
  int? get totalResults => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PagedTrendingMoviesModelCopyWith<PagedTrendingMoviesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PagedTrendingMoviesModelCopyWith<$Res> {
  factory $PagedTrendingMoviesModelCopyWith(PagedTrendingMoviesModel value,
          $Res Function(PagedTrendingMoviesModel) then) =
      _$PagedTrendingMoviesModelCopyWithImpl<$Res, PagedTrendingMoviesModel>;
  @useResult
  $Res call(
      {int? page,
      List<PagedTrendingMoviesResultsModel?>? results,
      @JsonKey(name: 'total_pages') int? totalPages,
      @JsonKey(name: 'total_results') int? totalResults});
}

/// @nodoc
class _$PagedTrendingMoviesModelCopyWithImpl<$Res,
        $Val extends PagedTrendingMoviesModel>
    implements $PagedTrendingMoviesModelCopyWith<$Res> {
  _$PagedTrendingMoviesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? results = freezed,
    Object? totalPages = freezed,
    Object? totalResults = freezed,
  }) {
    return _then(_value.copyWith(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<PagedTrendingMoviesResultsModel?>?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PagedTrendingMoviesModelImplCopyWith<$Res>
    implements $PagedTrendingMoviesModelCopyWith<$Res> {
  factory _$$PagedTrendingMoviesModelImplCopyWith(
          _$PagedTrendingMoviesModelImpl value,
          $Res Function(_$PagedTrendingMoviesModelImpl) then) =
      __$$PagedTrendingMoviesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? page,
      List<PagedTrendingMoviesResultsModel?>? results,
      @JsonKey(name: 'total_pages') int? totalPages,
      @JsonKey(name: 'total_results') int? totalResults});
}

/// @nodoc
class __$$PagedTrendingMoviesModelImplCopyWithImpl<$Res>
    extends _$PagedTrendingMoviesModelCopyWithImpl<$Res,
        _$PagedTrendingMoviesModelImpl>
    implements _$$PagedTrendingMoviesModelImplCopyWith<$Res> {
  __$$PagedTrendingMoviesModelImplCopyWithImpl(
      _$PagedTrendingMoviesModelImpl _value,
      $Res Function(_$PagedTrendingMoviesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? results = freezed,
    Object? totalPages = freezed,
    Object? totalResults = freezed,
  }) {
    return _then(_$PagedTrendingMoviesModelImpl(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<PagedTrendingMoviesResultsModel?>?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PagedTrendingMoviesModelImpl implements _PagedTrendingMoviesModel {
  const _$PagedTrendingMoviesModelImpl(
      {this.page,
      final List<PagedTrendingMoviesResultsModel?>? results,
      @JsonKey(name: 'total_pages') this.totalPages,
      @JsonKey(name: 'total_results') this.totalResults})
      : _results = results;

  factory _$PagedTrendingMoviesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PagedTrendingMoviesModelImplFromJson(json);

  @override
  final int? page;
  final List<PagedTrendingMoviesResultsModel?>? _results;
  @override
  List<PagedTrendingMoviesResultsModel?>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'total_pages')
  final int? totalPages;
  @override
  @JsonKey(name: 'total_results')
  final int? totalResults;

  @override
  String toString() {
    return 'PagedTrendingMoviesModel(page: $page, results: $results, totalPages: $totalPages, totalResults: $totalResults)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PagedTrendingMoviesModelImpl &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, page,
      const DeepCollectionEquality().hash(_results), totalPages, totalResults);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PagedTrendingMoviesModelImplCopyWith<_$PagedTrendingMoviesModelImpl>
      get copyWith => __$$PagedTrendingMoviesModelImplCopyWithImpl<
          _$PagedTrendingMoviesModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PagedTrendingMoviesModelImplToJson(
      this,
    );
  }
}

abstract class _PagedTrendingMoviesModel implements PagedTrendingMoviesModel {
  const factory _PagedTrendingMoviesModel(
          {final int? page,
          final List<PagedTrendingMoviesResultsModel?>? results,
          @JsonKey(name: 'total_pages') final int? totalPages,
          @JsonKey(name: 'total_results') final int? totalResults}) =
      _$PagedTrendingMoviesModelImpl;

  factory _PagedTrendingMoviesModel.fromJson(Map<String, dynamic> json) =
      _$PagedTrendingMoviesModelImpl.fromJson;

  @override
  int? get page;
  @override
  List<PagedTrendingMoviesResultsModel?>? get results;
  @override
  @JsonKey(name: 'total_pages')
  int? get totalPages;
  @override
  @JsonKey(name: 'total_results')
  int? get totalResults;
  @override
  @JsonKey(ignore: true)
  _$$PagedTrendingMoviesModelImplCopyWith<_$PagedTrendingMoviesModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PagedTrendingMoviesResultsModel _$PagedTrendingMoviesResultsModelFromJson(
    Map<String, dynamic> json) {
  return _PagedTrendingMoviesResultsModel.fromJson(json);
}

/// @nodoc
mixin _$PagedTrendingMoviesResultsModel {
  bool? get adult => throw _privateConstructorUsedError;
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_title')
  String? get originalTitle => throw _privateConstructorUsedError;
  String? get overview => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster_path')
  String? get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'media_type')
  String? get mediaType => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_language')
  String? get originalLanguage => throw _privateConstructorUsedError;
  @JsonKey(name: 'genre_ids')
  List<int?>? get genreIds => throw _privateConstructorUsedError;
  double? get popularity => throw _privateConstructorUsedError;
  @JsonKey(name: 'release_date')
  String? get releaseDate => throw _privateConstructorUsedError;
  bool? get video => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_average')
  double? get voteAverage => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_count')
  int? get voteCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PagedTrendingMoviesResultsModelCopyWith<PagedTrendingMoviesResultsModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PagedTrendingMoviesResultsModelCopyWith<$Res> {
  factory $PagedTrendingMoviesResultsModelCopyWith(
          PagedTrendingMoviesResultsModel value,
          $Res Function(PagedTrendingMoviesResultsModel) then) =
      _$PagedTrendingMoviesResultsModelCopyWithImpl<$Res,
          PagedTrendingMoviesResultsModel>;
  @useResult
  $Res call(
      {bool? adult,
      @JsonKey(name: 'backdrop_path') String? backdropPath,
      int? id,
      String? title,
      @JsonKey(name: 'original_title') String? originalTitle,
      String? overview,
      @JsonKey(name: 'poster_path') String? posterPath,
      @JsonKey(name: 'media_type') String? mediaType,
      @JsonKey(name: 'original_language') String? originalLanguage,
      @JsonKey(name: 'genre_ids') List<int?>? genreIds,
      double? popularity,
      @JsonKey(name: 'release_date') String? releaseDate,
      bool? video,
      @JsonKey(name: 'vote_average') double? voteAverage,
      @JsonKey(name: 'vote_count') int? voteCount});
}

/// @nodoc
class _$PagedTrendingMoviesResultsModelCopyWithImpl<$Res,
        $Val extends PagedTrendingMoviesResultsModel>
    implements $PagedTrendingMoviesResultsModelCopyWith<$Res> {
  _$PagedTrendingMoviesResultsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = freezed,
    Object? backdropPath = freezed,
    Object? id = freezed,
    Object? title = freezed,
    Object? originalTitle = freezed,
    Object? overview = freezed,
    Object? posterPath = freezed,
    Object? mediaType = freezed,
    Object? originalLanguage = freezed,
    Object? genreIds = freezed,
    Object? popularity = freezed,
    Object? releaseDate = freezed,
    Object? video = freezed,
    Object? voteAverage = freezed,
    Object? voteCount = freezed,
  }) {
    return _then(_value.copyWith(
      adult: freezed == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool?,
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      originalTitle: freezed == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaType: freezed == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String?,
      originalLanguage: freezed == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      genreIds: freezed == genreIds
          ? _value.genreIds
          : genreIds // ignore: cast_nullable_to_non_nullable
              as List<int?>?,
      popularity: freezed == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool?,
      voteAverage: freezed == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      voteCount: freezed == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PagedTrendingMoviesResultsModelImplCopyWith<$Res>
    implements $PagedTrendingMoviesResultsModelCopyWith<$Res> {
  factory _$$PagedTrendingMoviesResultsModelImplCopyWith(
          _$PagedTrendingMoviesResultsModelImpl value,
          $Res Function(_$PagedTrendingMoviesResultsModelImpl) then) =
      __$$PagedTrendingMoviesResultsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? adult,
      @JsonKey(name: 'backdrop_path') String? backdropPath,
      int? id,
      String? title,
      @JsonKey(name: 'original_title') String? originalTitle,
      String? overview,
      @JsonKey(name: 'poster_path') String? posterPath,
      @JsonKey(name: 'media_type') String? mediaType,
      @JsonKey(name: 'original_language') String? originalLanguage,
      @JsonKey(name: 'genre_ids') List<int?>? genreIds,
      double? popularity,
      @JsonKey(name: 'release_date') String? releaseDate,
      bool? video,
      @JsonKey(name: 'vote_average') double? voteAverage,
      @JsonKey(name: 'vote_count') int? voteCount});
}

/// @nodoc
class __$$PagedTrendingMoviesResultsModelImplCopyWithImpl<$Res>
    extends _$PagedTrendingMoviesResultsModelCopyWithImpl<$Res,
        _$PagedTrendingMoviesResultsModelImpl>
    implements _$$PagedTrendingMoviesResultsModelImplCopyWith<$Res> {
  __$$PagedTrendingMoviesResultsModelImplCopyWithImpl(
      _$PagedTrendingMoviesResultsModelImpl _value,
      $Res Function(_$PagedTrendingMoviesResultsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = freezed,
    Object? backdropPath = freezed,
    Object? id = freezed,
    Object? title = freezed,
    Object? originalTitle = freezed,
    Object? overview = freezed,
    Object? posterPath = freezed,
    Object? mediaType = freezed,
    Object? originalLanguage = freezed,
    Object? genreIds = freezed,
    Object? popularity = freezed,
    Object? releaseDate = freezed,
    Object? video = freezed,
    Object? voteAverage = freezed,
    Object? voteCount = freezed,
  }) {
    return _then(_$PagedTrendingMoviesResultsModelImpl(
      adult: freezed == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool?,
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      originalTitle: freezed == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaType: freezed == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String?,
      originalLanguage: freezed == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      genreIds: freezed == genreIds
          ? _value._genreIds
          : genreIds // ignore: cast_nullable_to_non_nullable
              as List<int?>?,
      popularity: freezed == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool?,
      voteAverage: freezed == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      voteCount: freezed == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PagedTrendingMoviesResultsModelImpl
    implements _PagedTrendingMoviesResultsModel {
  const _$PagedTrendingMoviesResultsModelImpl(
      {this.adult,
      @JsonKey(name: 'backdrop_path') this.backdropPath,
      this.id,
      this.title,
      @JsonKey(name: 'original_title') this.originalTitle,
      this.overview,
      @JsonKey(name: 'poster_path') this.posterPath,
      @JsonKey(name: 'media_type') this.mediaType,
      @JsonKey(name: 'original_language') this.originalLanguage,
      @JsonKey(name: 'genre_ids') final List<int?>? genreIds,
      this.popularity,
      @JsonKey(name: 'release_date') this.releaseDate,
      this.video,
      @JsonKey(name: 'vote_average') this.voteAverage,
      @JsonKey(name: 'vote_count') this.voteCount})
      : _genreIds = genreIds;

  factory _$PagedTrendingMoviesResultsModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PagedTrendingMoviesResultsModelImplFromJson(json);

  @override
  final bool? adult;
  @override
  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;
  @override
  final int? id;
  @override
  final String? title;
  @override
  @JsonKey(name: 'original_title')
  final String? originalTitle;
  @override
  final String? overview;
  @override
  @JsonKey(name: 'poster_path')
  final String? posterPath;
  @override
  @JsonKey(name: 'media_type')
  final String? mediaType;
  @override
  @JsonKey(name: 'original_language')
  final String? originalLanguage;
  final List<int?>? _genreIds;
  @override
  @JsonKey(name: 'genre_ids')
  List<int?>? get genreIds {
    final value = _genreIds;
    if (value == null) return null;
    if (_genreIds is EqualUnmodifiableListView) return _genreIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final double? popularity;
  @override
  @JsonKey(name: 'release_date')
  final String? releaseDate;
  @override
  final bool? video;
  @override
  @JsonKey(name: 'vote_average')
  final double? voteAverage;
  @override
  @JsonKey(name: 'vote_count')
  final int? voteCount;

  @override
  String toString() {
    return 'PagedTrendingMoviesResultsModel(adult: $adult, backdropPath: $backdropPath, id: $id, title: $title, originalTitle: $originalTitle, overview: $overview, posterPath: $posterPath, mediaType: $mediaType, originalLanguage: $originalLanguage, genreIds: $genreIds, popularity: $popularity, releaseDate: $releaseDate, video: $video, voteAverage: $voteAverage, voteCount: $voteCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PagedTrendingMoviesResultsModelImpl &&
            (identical(other.adult, adult) || other.adult == adult) &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.originalTitle, originalTitle) ||
                other.originalTitle == originalTitle) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.mediaType, mediaType) ||
                other.mediaType == mediaType) &&
            (identical(other.originalLanguage, originalLanguage) ||
                other.originalLanguage == originalLanguage) &&
            const DeepCollectionEquality().equals(other._genreIds, _genreIds) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.video, video) || other.video == video) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            (identical(other.voteCount, voteCount) ||
                other.voteCount == voteCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      adult,
      backdropPath,
      id,
      title,
      originalTitle,
      overview,
      posterPath,
      mediaType,
      originalLanguage,
      const DeepCollectionEquality().hash(_genreIds),
      popularity,
      releaseDate,
      video,
      voteAverage,
      voteCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PagedTrendingMoviesResultsModelImplCopyWith<
          _$PagedTrendingMoviesResultsModelImpl>
      get copyWith => __$$PagedTrendingMoviesResultsModelImplCopyWithImpl<
          _$PagedTrendingMoviesResultsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PagedTrendingMoviesResultsModelImplToJson(
      this,
    );
  }
}

abstract class _PagedTrendingMoviesResultsModel
    implements PagedTrendingMoviesResultsModel {
  const factory _PagedTrendingMoviesResultsModel(
          {final bool? adult,
          @JsonKey(name: 'backdrop_path') final String? backdropPath,
          final int? id,
          final String? title,
          @JsonKey(name: 'original_title') final String? originalTitle,
          final String? overview,
          @JsonKey(name: 'poster_path') final String? posterPath,
          @JsonKey(name: 'media_type') final String? mediaType,
          @JsonKey(name: 'original_language') final String? originalLanguage,
          @JsonKey(name: 'genre_ids') final List<int?>? genreIds,
          final double? popularity,
          @JsonKey(name: 'release_date') final String? releaseDate,
          final bool? video,
          @JsonKey(name: 'vote_average') final double? voteAverage,
          @JsonKey(name: 'vote_count') final int? voteCount}) =
      _$PagedTrendingMoviesResultsModelImpl;

  factory _PagedTrendingMoviesResultsModel.fromJson(Map<String, dynamic> json) =
      _$PagedTrendingMoviesResultsModelImpl.fromJson;

  @override
  bool? get adult;
  @override
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath;
  @override
  int? get id;
  @override
  String? get title;
  @override
  @JsonKey(name: 'original_title')
  String? get originalTitle;
  @override
  String? get overview;
  @override
  @JsonKey(name: 'poster_path')
  String? get posterPath;
  @override
  @JsonKey(name: 'media_type')
  String? get mediaType;
  @override
  @JsonKey(name: 'original_language')
  String? get originalLanguage;
  @override
  @JsonKey(name: 'genre_ids')
  List<int?>? get genreIds;
  @override
  double? get popularity;
  @override
  @JsonKey(name: 'release_date')
  String? get releaseDate;
  @override
  bool? get video;
  @override
  @JsonKey(name: 'vote_average')
  double? get voteAverage;
  @override
  @JsonKey(name: 'vote_count')
  int? get voteCount;
  @override
  @JsonKey(ignore: true)
  _$$PagedTrendingMoviesResultsModelImplCopyWith<
          _$PagedTrendingMoviesResultsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
