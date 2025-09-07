// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paged_people_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PagedPeopleModel _$PagedPeopleModelFromJson(Map<String, dynamic> json) {
  return _PagedPeopleModel.fromJson(json);
}

/// @nodoc
mixin _$PagedPeopleModel {
  int? get page => throw _privateConstructorUsedError;
  List<PagedPeopleResultsModel?>? get results =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'total_pages')
  int? get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_results')
  int? get totalResults => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PagedPeopleModelCopyWith<PagedPeopleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PagedPeopleModelCopyWith<$Res> {
  factory $PagedPeopleModelCopyWith(
          PagedPeopleModel value, $Res Function(PagedPeopleModel) then) =
      _$PagedPeopleModelCopyWithImpl<$Res, PagedPeopleModel>;
  @useResult
  $Res call(
      {int? page,
      List<PagedPeopleResultsModel?>? results,
      @JsonKey(name: 'total_pages') int? totalPages,
      @JsonKey(name: 'total_results') int? totalResults});
}

/// @nodoc
class _$PagedPeopleModelCopyWithImpl<$Res, $Val extends PagedPeopleModel>
    implements $PagedPeopleModelCopyWith<$Res> {
  _$PagedPeopleModelCopyWithImpl(this._value, this._then);

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
              as List<PagedPeopleResultsModel?>?,
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
abstract class _$$PagedPeopleModelImplCopyWith<$Res>
    implements $PagedPeopleModelCopyWith<$Res> {
  factory _$$PagedPeopleModelImplCopyWith(_$PagedPeopleModelImpl value,
          $Res Function(_$PagedPeopleModelImpl) then) =
      __$$PagedPeopleModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? page,
      List<PagedPeopleResultsModel?>? results,
      @JsonKey(name: 'total_pages') int? totalPages,
      @JsonKey(name: 'total_results') int? totalResults});
}

/// @nodoc
class __$$PagedPeopleModelImplCopyWithImpl<$Res>
    extends _$PagedPeopleModelCopyWithImpl<$Res, _$PagedPeopleModelImpl>
    implements _$$PagedPeopleModelImplCopyWith<$Res> {
  __$$PagedPeopleModelImplCopyWithImpl(_$PagedPeopleModelImpl _value,
      $Res Function(_$PagedPeopleModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? results = freezed,
    Object? totalPages = freezed,
    Object? totalResults = freezed,
  }) {
    return _then(_$PagedPeopleModelImpl(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<PagedPeopleResultsModel?>?,
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
class _$PagedPeopleModelImpl implements _PagedPeopleModel {
  const _$PagedPeopleModelImpl(
      {this.page,
      final List<PagedPeopleResultsModel?>? results,
      @JsonKey(name: 'total_pages') this.totalPages,
      @JsonKey(name: 'total_results') this.totalResults})
      : _results = results;

  factory _$PagedPeopleModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PagedPeopleModelImplFromJson(json);

  @override
  final int? page;
  final List<PagedPeopleResultsModel?>? _results;
  @override
  List<PagedPeopleResultsModel?>? get results {
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
    return 'PagedPeopleModel(page: $page, results: $results, totalPages: $totalPages, totalResults: $totalResults)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PagedPeopleModelImpl &&
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
  _$$PagedPeopleModelImplCopyWith<_$PagedPeopleModelImpl> get copyWith =>
      __$$PagedPeopleModelImplCopyWithImpl<_$PagedPeopleModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PagedPeopleModelImplToJson(
      this,
    );
  }
}

abstract class _PagedPeopleModel implements PagedPeopleModel {
  const factory _PagedPeopleModel(
          {final int? page,
          final List<PagedPeopleResultsModel?>? results,
          @JsonKey(name: 'total_pages') final int? totalPages,
          @JsonKey(name: 'total_results') final int? totalResults}) =
      _$PagedPeopleModelImpl;

  factory _PagedPeopleModel.fromJson(Map<String, dynamic> json) =
      _$PagedPeopleModelImpl.fromJson;

  @override
  int? get page;
  @override
  List<PagedPeopleResultsModel?>? get results;
  @override
  @JsonKey(name: 'total_pages')
  int? get totalPages;
  @override
  @JsonKey(name: 'total_results')
  int? get totalResults;
  @override
  @JsonKey(ignore: true)
  _$$PagedPeopleModelImplCopyWith<_$PagedPeopleModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PagedPeopleResultsModel _$PagedPeopleResultsModelFromJson(
    Map<String, dynamic> json) {
  return _PagedPeopleResultsModel.fromJson(json);
}

/// @nodoc
mixin _$PagedPeopleResultsModel {
  bool? get adult => throw _privateConstructorUsedError;
  int? get gender => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'known_for_department')
  String? get knownForDepartment => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_name')
  String? get originalName => throw _privateConstructorUsedError;
  double? get popularity => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_path')
  String? get profilePath => throw _privateConstructorUsedError;
  @JsonKey(name: 'known_for')
  List<PagedPeopleResultsKnownForModel?>? get knownFor =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PagedPeopleResultsModelCopyWith<PagedPeopleResultsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PagedPeopleResultsModelCopyWith<$Res> {
  factory $PagedPeopleResultsModelCopyWith(PagedPeopleResultsModel value,
          $Res Function(PagedPeopleResultsModel) then) =
      _$PagedPeopleResultsModelCopyWithImpl<$Res, PagedPeopleResultsModel>;
  @useResult
  $Res call(
      {bool? adult,
      int? gender,
      int? id,
      @JsonKey(name: 'known_for_department') String? knownForDepartment,
      String? name,
      @JsonKey(name: 'original_name') String? originalName,
      double? popularity,
      @JsonKey(name: 'profile_path') String? profilePath,
      @JsonKey(name: 'known_for')
      List<PagedPeopleResultsKnownForModel?>? knownFor});
}

/// @nodoc
class _$PagedPeopleResultsModelCopyWithImpl<$Res,
        $Val extends PagedPeopleResultsModel>
    implements $PagedPeopleResultsModelCopyWith<$Res> {
  _$PagedPeopleResultsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = freezed,
    Object? gender = freezed,
    Object? id = freezed,
    Object? knownForDepartment = freezed,
    Object? name = freezed,
    Object? originalName = freezed,
    Object? popularity = freezed,
    Object? profilePath = freezed,
    Object? knownFor = freezed,
  }) {
    return _then(_value.copyWith(
      adult: freezed == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      knownForDepartment: freezed == knownForDepartment
          ? _value.knownForDepartment
          : knownForDepartment // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      originalName: freezed == originalName
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: freezed == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double?,
      profilePath: freezed == profilePath
          ? _value.profilePath
          : profilePath // ignore: cast_nullable_to_non_nullable
              as String?,
      knownFor: freezed == knownFor
          ? _value.knownFor
          : knownFor // ignore: cast_nullable_to_non_nullable
              as List<PagedPeopleResultsKnownForModel?>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PagedPeopleResultsModelImplCopyWith<$Res>
    implements $PagedPeopleResultsModelCopyWith<$Res> {
  factory _$$PagedPeopleResultsModelImplCopyWith(
          _$PagedPeopleResultsModelImpl value,
          $Res Function(_$PagedPeopleResultsModelImpl) then) =
      __$$PagedPeopleResultsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? adult,
      int? gender,
      int? id,
      @JsonKey(name: 'known_for_department') String? knownForDepartment,
      String? name,
      @JsonKey(name: 'original_name') String? originalName,
      double? popularity,
      @JsonKey(name: 'profile_path') String? profilePath,
      @JsonKey(name: 'known_for')
      List<PagedPeopleResultsKnownForModel?>? knownFor});
}

/// @nodoc
class __$$PagedPeopleResultsModelImplCopyWithImpl<$Res>
    extends _$PagedPeopleResultsModelCopyWithImpl<$Res,
        _$PagedPeopleResultsModelImpl>
    implements _$$PagedPeopleResultsModelImplCopyWith<$Res> {
  __$$PagedPeopleResultsModelImplCopyWithImpl(
      _$PagedPeopleResultsModelImpl _value,
      $Res Function(_$PagedPeopleResultsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = freezed,
    Object? gender = freezed,
    Object? id = freezed,
    Object? knownForDepartment = freezed,
    Object? name = freezed,
    Object? originalName = freezed,
    Object? popularity = freezed,
    Object? profilePath = freezed,
    Object? knownFor = freezed,
  }) {
    return _then(_$PagedPeopleResultsModelImpl(
      adult: freezed == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      knownForDepartment: freezed == knownForDepartment
          ? _value.knownForDepartment
          : knownForDepartment // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      originalName: freezed == originalName
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: freezed == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double?,
      profilePath: freezed == profilePath
          ? _value.profilePath
          : profilePath // ignore: cast_nullable_to_non_nullable
              as String?,
      knownFor: freezed == knownFor
          ? _value._knownFor
          : knownFor // ignore: cast_nullable_to_non_nullable
              as List<PagedPeopleResultsKnownForModel?>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PagedPeopleResultsModelImpl implements _PagedPeopleResultsModel {
  const _$PagedPeopleResultsModelImpl(
      {this.adult,
      this.gender,
      this.id,
      @JsonKey(name: 'known_for_department') this.knownForDepartment,
      this.name,
      @JsonKey(name: 'original_name') this.originalName,
      this.popularity,
      @JsonKey(name: 'profile_path') this.profilePath,
      @JsonKey(name: 'known_for')
      final List<PagedPeopleResultsKnownForModel?>? knownFor})
      : _knownFor = knownFor;

  factory _$PagedPeopleResultsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PagedPeopleResultsModelImplFromJson(json);

  @override
  final bool? adult;
  @override
  final int? gender;
  @override
  final int? id;
  @override
  @JsonKey(name: 'known_for_department')
  final String? knownForDepartment;
  @override
  final String? name;
  @override
  @JsonKey(name: 'original_name')
  final String? originalName;
  @override
  final double? popularity;
  @override
  @JsonKey(name: 'profile_path')
  final String? profilePath;
  final List<PagedPeopleResultsKnownForModel?>? _knownFor;
  @override
  @JsonKey(name: 'known_for')
  List<PagedPeopleResultsKnownForModel?>? get knownFor {
    final value = _knownFor;
    if (value == null) return null;
    if (_knownFor is EqualUnmodifiableListView) return _knownFor;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PagedPeopleResultsModel(adult: $adult, gender: $gender, id: $id, knownForDepartment: $knownForDepartment, name: $name, originalName: $originalName, popularity: $popularity, profilePath: $profilePath, knownFor: $knownFor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PagedPeopleResultsModelImpl &&
            (identical(other.adult, adult) || other.adult == adult) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.knownForDepartment, knownForDepartment) ||
                other.knownForDepartment == knownForDepartment) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.originalName, originalName) ||
                other.originalName == originalName) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.profilePath, profilePath) ||
                other.profilePath == profilePath) &&
            const DeepCollectionEquality().equals(other._knownFor, _knownFor));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      adult,
      gender,
      id,
      knownForDepartment,
      name,
      originalName,
      popularity,
      profilePath,
      const DeepCollectionEquality().hash(_knownFor));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PagedPeopleResultsModelImplCopyWith<_$PagedPeopleResultsModelImpl>
      get copyWith => __$$PagedPeopleResultsModelImplCopyWithImpl<
          _$PagedPeopleResultsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PagedPeopleResultsModelImplToJson(
      this,
    );
  }
}

abstract class _PagedPeopleResultsModel implements PagedPeopleResultsModel {
  const factory _PagedPeopleResultsModel(
      {final bool? adult,
      final int? gender,
      final int? id,
      @JsonKey(name: 'known_for_department') final String? knownForDepartment,
      final String? name,
      @JsonKey(name: 'original_name') final String? originalName,
      final double? popularity,
      @JsonKey(name: 'profile_path') final String? profilePath,
      @JsonKey(name: 'known_for')
      final List<PagedPeopleResultsKnownForModel?>?
          knownFor}) = _$PagedPeopleResultsModelImpl;

  factory _PagedPeopleResultsModel.fromJson(Map<String, dynamic> json) =
      _$PagedPeopleResultsModelImpl.fromJson;

  @override
  bool? get adult;
  @override
  int? get gender;
  @override
  int? get id;
  @override
  @JsonKey(name: 'known_for_department')
  String? get knownForDepartment;
  @override
  String? get name;
  @override
  @JsonKey(name: 'original_name')
  String? get originalName;
  @override
  double? get popularity;
  @override
  @JsonKey(name: 'profile_path')
  String? get profilePath;
  @override
  @JsonKey(name: 'known_for')
  List<PagedPeopleResultsKnownForModel?>? get knownFor;
  @override
  @JsonKey(ignore: true)
  _$$PagedPeopleResultsModelImplCopyWith<_$PagedPeopleResultsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PagedPeopleResultsKnownForModel _$PagedPeopleResultsKnownForModelFromJson(
    Map<String, dynamic> json) {
  return _PagedPeopleResultsKnownForModel.fromJson(json);
}

/// @nodoc
mixin _$PagedPeopleResultsKnownForModel {
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
  $PagedPeopleResultsKnownForModelCopyWith<PagedPeopleResultsKnownForModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PagedPeopleResultsKnownForModelCopyWith<$Res> {
  factory $PagedPeopleResultsKnownForModelCopyWith(
          PagedPeopleResultsKnownForModel value,
          $Res Function(PagedPeopleResultsKnownForModel) then) =
      _$PagedPeopleResultsKnownForModelCopyWithImpl<$Res,
          PagedPeopleResultsKnownForModel>;
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
class _$PagedPeopleResultsKnownForModelCopyWithImpl<$Res,
        $Val extends PagedPeopleResultsKnownForModel>
    implements $PagedPeopleResultsKnownForModelCopyWith<$Res> {
  _$PagedPeopleResultsKnownForModelCopyWithImpl(this._value, this._then);

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
abstract class _$$PagedPeopleResultsKnownForModelImplCopyWith<$Res>
    implements $PagedPeopleResultsKnownForModelCopyWith<$Res> {
  factory _$$PagedPeopleResultsKnownForModelImplCopyWith(
          _$PagedPeopleResultsKnownForModelImpl value,
          $Res Function(_$PagedPeopleResultsKnownForModelImpl) then) =
      __$$PagedPeopleResultsKnownForModelImplCopyWithImpl<$Res>;
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
class __$$PagedPeopleResultsKnownForModelImplCopyWithImpl<$Res>
    extends _$PagedPeopleResultsKnownForModelCopyWithImpl<$Res,
        _$PagedPeopleResultsKnownForModelImpl>
    implements _$$PagedPeopleResultsKnownForModelImplCopyWith<$Res> {
  __$$PagedPeopleResultsKnownForModelImplCopyWithImpl(
      _$PagedPeopleResultsKnownForModelImpl _value,
      $Res Function(_$PagedPeopleResultsKnownForModelImpl) _then)
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
    return _then(_$PagedPeopleResultsKnownForModelImpl(
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
class _$PagedPeopleResultsKnownForModelImpl
    implements _PagedPeopleResultsKnownForModel {
  const _$PagedPeopleResultsKnownForModelImpl(
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

  factory _$PagedPeopleResultsKnownForModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PagedPeopleResultsKnownForModelImplFromJson(json);

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
    return 'PagedPeopleResultsKnownForModel(adult: $adult, backdropPath: $backdropPath, id: $id, title: $title, originalTitle: $originalTitle, overview: $overview, posterPath: $posterPath, mediaType: $mediaType, originalLanguage: $originalLanguage, genreIds: $genreIds, popularity: $popularity, releaseDate: $releaseDate, video: $video, voteAverage: $voteAverage, voteCount: $voteCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PagedPeopleResultsKnownForModelImpl &&
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
  _$$PagedPeopleResultsKnownForModelImplCopyWith<
          _$PagedPeopleResultsKnownForModelImpl>
      get copyWith => __$$PagedPeopleResultsKnownForModelImplCopyWithImpl<
          _$PagedPeopleResultsKnownForModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PagedPeopleResultsKnownForModelImplToJson(
      this,
    );
  }
}

abstract class _PagedPeopleResultsKnownForModel
    implements PagedPeopleResultsKnownForModel {
  const factory _PagedPeopleResultsKnownForModel(
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
      _$PagedPeopleResultsKnownForModelImpl;

  factory _PagedPeopleResultsKnownForModel.fromJson(Map<String, dynamic> json) =
      _$PagedPeopleResultsKnownForModelImpl.fromJson;

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
  _$$PagedPeopleResultsKnownForModelImplCopyWith<
          _$PagedPeopleResultsKnownForModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
