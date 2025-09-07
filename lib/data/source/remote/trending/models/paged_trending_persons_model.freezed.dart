// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paged_trending_persons_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PagedTrendingPersonsModel _$PagedTrendingPersonsModelFromJson(
    Map<String, dynamic> json) {
  return _PagedTrendingPersonsModel.fromJson(json);
}

/// @nodoc
mixin _$PagedTrendingPersonsModel {
  int? get page => throw _privateConstructorUsedError;
  List<PagedTrendingPersonsResultsModel?>? get results =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'total_pages')
  int? get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_results')
  int? get totalResults => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PagedTrendingPersonsModelCopyWith<PagedTrendingPersonsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PagedTrendingPersonsModelCopyWith<$Res> {
  factory $PagedTrendingPersonsModelCopyWith(PagedTrendingPersonsModel value,
          $Res Function(PagedTrendingPersonsModel) then) =
      _$PagedTrendingPersonsModelCopyWithImpl<$Res, PagedTrendingPersonsModel>;
  @useResult
  $Res call(
      {int? page,
      List<PagedTrendingPersonsResultsModel?>? results,
      @JsonKey(name: 'total_pages') int? totalPages,
      @JsonKey(name: 'total_results') int? totalResults});
}

/// @nodoc
class _$PagedTrendingPersonsModelCopyWithImpl<$Res,
        $Val extends PagedTrendingPersonsModel>
    implements $PagedTrendingPersonsModelCopyWith<$Res> {
  _$PagedTrendingPersonsModelCopyWithImpl(this._value, this._then);

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
              as List<PagedTrendingPersonsResultsModel?>?,
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
abstract class _$$PagedTrendingPersonsModelImplCopyWith<$Res>
    implements $PagedTrendingPersonsModelCopyWith<$Res> {
  factory _$$PagedTrendingPersonsModelImplCopyWith(
          _$PagedTrendingPersonsModelImpl value,
          $Res Function(_$PagedTrendingPersonsModelImpl) then) =
      __$$PagedTrendingPersonsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? page,
      List<PagedTrendingPersonsResultsModel?>? results,
      @JsonKey(name: 'total_pages') int? totalPages,
      @JsonKey(name: 'total_results') int? totalResults});
}

/// @nodoc
class __$$PagedTrendingPersonsModelImplCopyWithImpl<$Res>
    extends _$PagedTrendingPersonsModelCopyWithImpl<$Res,
        _$PagedTrendingPersonsModelImpl>
    implements _$$PagedTrendingPersonsModelImplCopyWith<$Res> {
  __$$PagedTrendingPersonsModelImplCopyWithImpl(
      _$PagedTrendingPersonsModelImpl _value,
      $Res Function(_$PagedTrendingPersonsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? results = freezed,
    Object? totalPages = freezed,
    Object? totalResults = freezed,
  }) {
    return _then(_$PagedTrendingPersonsModelImpl(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<PagedTrendingPersonsResultsModel?>?,
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
class _$PagedTrendingPersonsModelImpl implements _PagedTrendingPersonsModel {
  const _$PagedTrendingPersonsModelImpl(
      {this.page,
      final List<PagedTrendingPersonsResultsModel?>? results,
      @JsonKey(name: 'total_pages') this.totalPages,
      @JsonKey(name: 'total_results') this.totalResults})
      : _results = results;

  factory _$PagedTrendingPersonsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PagedTrendingPersonsModelImplFromJson(json);

  @override
  final int? page;
  final List<PagedTrendingPersonsResultsModel?>? _results;
  @override
  List<PagedTrendingPersonsResultsModel?>? get results {
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
    return 'PagedTrendingPersonsModel(page: $page, results: $results, totalPages: $totalPages, totalResults: $totalResults)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PagedTrendingPersonsModelImpl &&
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
  _$$PagedTrendingPersonsModelImplCopyWith<_$PagedTrendingPersonsModelImpl>
      get copyWith => __$$PagedTrendingPersonsModelImplCopyWithImpl<
          _$PagedTrendingPersonsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PagedTrendingPersonsModelImplToJson(
      this,
    );
  }
}

abstract class _PagedTrendingPersonsModel implements PagedTrendingPersonsModel {
  const factory _PagedTrendingPersonsModel(
          {final int? page,
          final List<PagedTrendingPersonsResultsModel?>? results,
          @JsonKey(name: 'total_pages') final int? totalPages,
          @JsonKey(name: 'total_results') final int? totalResults}) =
      _$PagedTrendingPersonsModelImpl;

  factory _PagedTrendingPersonsModel.fromJson(Map<String, dynamic> json) =
      _$PagedTrendingPersonsModelImpl.fromJson;

  @override
  int? get page;
  @override
  List<PagedTrendingPersonsResultsModel?>? get results;
  @override
  @JsonKey(name: 'total_pages')
  int? get totalPages;
  @override
  @JsonKey(name: 'total_results')
  int? get totalResults;
  @override
  @JsonKey(ignore: true)
  _$$PagedTrendingPersonsModelImplCopyWith<_$PagedTrendingPersonsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PagedTrendingPersonsResultsModel _$PagedTrendingPersonsResultsModelFromJson(
    Map<String, dynamic> json) {
  return _PagedTrendingPersonsResultsModel.fromJson(json);
}

/// @nodoc
mixin _$PagedTrendingPersonsResultsModel {
  bool? get adult => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_name')
  String? get originalName => throw _privateConstructorUsedError;
  @JsonKey(name: 'media_type')
  String? get mediaType => throw _privateConstructorUsedError;
  double? get popularity => throw _privateConstructorUsedError;
  int? get gender => throw _privateConstructorUsedError;
  @JsonKey(name: 'known_for_department')
  String? get knownForDepartment => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_path')
  String? get profilePath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PagedTrendingPersonsResultsModelCopyWith<PagedTrendingPersonsResultsModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PagedTrendingPersonsResultsModelCopyWith<$Res> {
  factory $PagedTrendingPersonsResultsModelCopyWith(
          PagedTrendingPersonsResultsModel value,
          $Res Function(PagedTrendingPersonsResultsModel) then) =
      _$PagedTrendingPersonsResultsModelCopyWithImpl<$Res,
          PagedTrendingPersonsResultsModel>;
  @useResult
  $Res call(
      {bool? adult,
      int? id,
      String? name,
      @JsonKey(name: 'original_name') String? originalName,
      @JsonKey(name: 'media_type') String? mediaType,
      double? popularity,
      int? gender,
      @JsonKey(name: 'known_for_department') String? knownForDepartment,
      @JsonKey(name: 'profile_path') String? profilePath});
}

/// @nodoc
class _$PagedTrendingPersonsResultsModelCopyWithImpl<$Res,
        $Val extends PagedTrendingPersonsResultsModel>
    implements $PagedTrendingPersonsResultsModelCopyWith<$Res> {
  _$PagedTrendingPersonsResultsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? originalName = freezed,
    Object? mediaType = freezed,
    Object? popularity = freezed,
    Object? gender = freezed,
    Object? knownForDepartment = freezed,
    Object? profilePath = freezed,
  }) {
    return _then(_value.copyWith(
      adult: freezed == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      originalName: freezed == originalName
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaType: freezed == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: freezed == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int?,
      knownForDepartment: freezed == knownForDepartment
          ? _value.knownForDepartment
          : knownForDepartment // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePath: freezed == profilePath
          ? _value.profilePath
          : profilePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PagedTrendingPersonsResultsModelImplCopyWith<$Res>
    implements $PagedTrendingPersonsResultsModelCopyWith<$Res> {
  factory _$$PagedTrendingPersonsResultsModelImplCopyWith(
          _$PagedTrendingPersonsResultsModelImpl value,
          $Res Function(_$PagedTrendingPersonsResultsModelImpl) then) =
      __$$PagedTrendingPersonsResultsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? adult,
      int? id,
      String? name,
      @JsonKey(name: 'original_name') String? originalName,
      @JsonKey(name: 'media_type') String? mediaType,
      double? popularity,
      int? gender,
      @JsonKey(name: 'known_for_department') String? knownForDepartment,
      @JsonKey(name: 'profile_path') String? profilePath});
}

/// @nodoc
class __$$PagedTrendingPersonsResultsModelImplCopyWithImpl<$Res>
    extends _$PagedTrendingPersonsResultsModelCopyWithImpl<$Res,
        _$PagedTrendingPersonsResultsModelImpl>
    implements _$$PagedTrendingPersonsResultsModelImplCopyWith<$Res> {
  __$$PagedTrendingPersonsResultsModelImplCopyWithImpl(
      _$PagedTrendingPersonsResultsModelImpl _value,
      $Res Function(_$PagedTrendingPersonsResultsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? originalName = freezed,
    Object? mediaType = freezed,
    Object? popularity = freezed,
    Object? gender = freezed,
    Object? knownForDepartment = freezed,
    Object? profilePath = freezed,
  }) {
    return _then(_$PagedTrendingPersonsResultsModelImpl(
      adult: freezed == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      originalName: freezed == originalName
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaType: freezed == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: freezed == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int?,
      knownForDepartment: freezed == knownForDepartment
          ? _value.knownForDepartment
          : knownForDepartment // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePath: freezed == profilePath
          ? _value.profilePath
          : profilePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PagedTrendingPersonsResultsModelImpl
    implements _PagedTrendingPersonsResultsModel {
  const _$PagedTrendingPersonsResultsModelImpl(
      {this.adult,
      this.id,
      this.name,
      @JsonKey(name: 'original_name') this.originalName,
      @JsonKey(name: 'media_type') this.mediaType,
      this.popularity,
      this.gender,
      @JsonKey(name: 'known_for_department') this.knownForDepartment,
      @JsonKey(name: 'profile_path') this.profilePath});

  factory _$PagedTrendingPersonsResultsModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PagedTrendingPersonsResultsModelImplFromJson(json);

  @override
  final bool? adult;
  @override
  final int? id;
  @override
  final String? name;
  @override
  @JsonKey(name: 'original_name')
  final String? originalName;
  @override
  @JsonKey(name: 'media_type')
  final String? mediaType;
  @override
  final double? popularity;
  @override
  final int? gender;
  @override
  @JsonKey(name: 'known_for_department')
  final String? knownForDepartment;
  @override
  @JsonKey(name: 'profile_path')
  final String? profilePath;

  @override
  String toString() {
    return 'PagedTrendingPersonsResultsModel(adult: $adult, id: $id, name: $name, originalName: $originalName, mediaType: $mediaType, popularity: $popularity, gender: $gender, knownForDepartment: $knownForDepartment, profilePath: $profilePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PagedTrendingPersonsResultsModelImpl &&
            (identical(other.adult, adult) || other.adult == adult) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.originalName, originalName) ||
                other.originalName == originalName) &&
            (identical(other.mediaType, mediaType) ||
                other.mediaType == mediaType) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.knownForDepartment, knownForDepartment) ||
                other.knownForDepartment == knownForDepartment) &&
            (identical(other.profilePath, profilePath) ||
                other.profilePath == profilePath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, adult, id, name, originalName,
      mediaType, popularity, gender, knownForDepartment, profilePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PagedTrendingPersonsResultsModelImplCopyWith<
          _$PagedTrendingPersonsResultsModelImpl>
      get copyWith => __$$PagedTrendingPersonsResultsModelImplCopyWithImpl<
          _$PagedTrendingPersonsResultsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PagedTrendingPersonsResultsModelImplToJson(
      this,
    );
  }
}

abstract class _PagedTrendingPersonsResultsModel
    implements PagedTrendingPersonsResultsModel {
  const factory _PagedTrendingPersonsResultsModel(
      {final bool? adult,
      final int? id,
      final String? name,
      @JsonKey(name: 'original_name') final String? originalName,
      @JsonKey(name: 'media_type') final String? mediaType,
      final double? popularity,
      final int? gender,
      @JsonKey(name: 'known_for_department') final String? knownForDepartment,
      @JsonKey(name: 'profile_path')
      final String? profilePath}) = _$PagedTrendingPersonsResultsModelImpl;

  factory _PagedTrendingPersonsResultsModel.fromJson(
          Map<String, dynamic> json) =
      _$PagedTrendingPersonsResultsModelImpl.fromJson;

  @override
  bool? get adult;
  @override
  int? get id;
  @override
  String? get name;
  @override
  @JsonKey(name: 'original_name')
  String? get originalName;
  @override
  @JsonKey(name: 'media_type')
  String? get mediaType;
  @override
  double? get popularity;
  @override
  int? get gender;
  @override
  @JsonKey(name: 'known_for_department')
  String? get knownForDepartment;
  @override
  @JsonKey(name: 'profile_path')
  String? get profilePath;
  @override
  @JsonKey(ignore: true)
  _$$PagedTrendingPersonsResultsModelImplCopyWith<
          _$PagedTrendingPersonsResultsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
