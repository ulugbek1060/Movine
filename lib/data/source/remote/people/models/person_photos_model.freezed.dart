// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'person_photos_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PersonPhotosModel _$PersonPhotosModelFromJson(Map<String, dynamic> json) {
  return _PersonPhotosModel.fromJson(json);
}

/// @nodoc
mixin _$PersonPhotosModel {
  int? get id => throw _privateConstructorUsedError;
  List<PersonPhotosProfilesModel?>? get profiles =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonPhotosModelCopyWith<PersonPhotosModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonPhotosModelCopyWith<$Res> {
  factory $PersonPhotosModelCopyWith(
          PersonPhotosModel value, $Res Function(PersonPhotosModel) then) =
      _$PersonPhotosModelCopyWithImpl<$Res, PersonPhotosModel>;
  @useResult
  $Res call({int? id, List<PersonPhotosProfilesModel?>? profiles});
}

/// @nodoc
class _$PersonPhotosModelCopyWithImpl<$Res, $Val extends PersonPhotosModel>
    implements $PersonPhotosModelCopyWith<$Res> {
  _$PersonPhotosModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? profiles = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      profiles: freezed == profiles
          ? _value.profiles
          : profiles // ignore: cast_nullable_to_non_nullable
              as List<PersonPhotosProfilesModel?>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PersonPhotosModelImplCopyWith<$Res>
    implements $PersonPhotosModelCopyWith<$Res> {
  factory _$$PersonPhotosModelImplCopyWith(_$PersonPhotosModelImpl value,
          $Res Function(_$PersonPhotosModelImpl) then) =
      __$$PersonPhotosModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, List<PersonPhotosProfilesModel?>? profiles});
}

/// @nodoc
class __$$PersonPhotosModelImplCopyWithImpl<$Res>
    extends _$PersonPhotosModelCopyWithImpl<$Res, _$PersonPhotosModelImpl>
    implements _$$PersonPhotosModelImplCopyWith<$Res> {
  __$$PersonPhotosModelImplCopyWithImpl(_$PersonPhotosModelImpl _value,
      $Res Function(_$PersonPhotosModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? profiles = freezed,
  }) {
    return _then(_$PersonPhotosModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      profiles: freezed == profiles
          ? _value._profiles
          : profiles // ignore: cast_nullable_to_non_nullable
              as List<PersonPhotosProfilesModel?>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PersonPhotosModelImpl implements _PersonPhotosModel {
  const _$PersonPhotosModelImpl(
      {this.id, final List<PersonPhotosProfilesModel?>? profiles})
      : _profiles = profiles;

  factory _$PersonPhotosModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PersonPhotosModelImplFromJson(json);

  @override
  final int? id;
  final List<PersonPhotosProfilesModel?>? _profiles;
  @override
  List<PersonPhotosProfilesModel?>? get profiles {
    final value = _profiles;
    if (value == null) return null;
    if (_profiles is EqualUnmodifiableListView) return _profiles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PersonPhotosModel(id: $id, profiles: $profiles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonPhotosModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._profiles, _profiles));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, const DeepCollectionEquality().hash(_profiles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PersonPhotosModelImplCopyWith<_$PersonPhotosModelImpl> get copyWith =>
      __$$PersonPhotosModelImplCopyWithImpl<_$PersonPhotosModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PersonPhotosModelImplToJson(
      this,
    );
  }
}

abstract class _PersonPhotosModel implements PersonPhotosModel {
  const factory _PersonPhotosModel(
          {final int? id, final List<PersonPhotosProfilesModel?>? profiles}) =
      _$PersonPhotosModelImpl;

  factory _PersonPhotosModel.fromJson(Map<String, dynamic> json) =
      _$PersonPhotosModelImpl.fromJson;

  @override
  int? get id;
  @override
  List<PersonPhotosProfilesModel?>? get profiles;
  @override
  @JsonKey(ignore: true)
  _$$PersonPhotosModelImplCopyWith<_$PersonPhotosModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PersonPhotosProfilesModel _$PersonPhotosProfilesModelFromJson(
    Map<String, dynamic> json) {
  return _PersonPhotosProfilesModel.fromJson(json);
}

/// @nodoc
mixin _$PersonPhotosProfilesModel {
  @JsonKey(name: 'aspect_ratio')
  double? get aspectRatio => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;
  @JsonKey(name: 'iso_639_1')
  dynamic get iso6391 => throw _privateConstructorUsedError;
  @JsonKey(name: 'file_path')
  String? get filePath => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_average')
  double? get voteAverage => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_count')
  int? get voteCount => throw _privateConstructorUsedError;
  int? get width => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonPhotosProfilesModelCopyWith<PersonPhotosProfilesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonPhotosProfilesModelCopyWith<$Res> {
  factory $PersonPhotosProfilesModelCopyWith(PersonPhotosProfilesModel value,
          $Res Function(PersonPhotosProfilesModel) then) =
      _$PersonPhotosProfilesModelCopyWithImpl<$Res, PersonPhotosProfilesModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'aspect_ratio') double? aspectRatio,
      int? height,
      @JsonKey(name: 'iso_639_1') dynamic iso6391,
      @JsonKey(name: 'file_path') String? filePath,
      @JsonKey(name: 'vote_average') double? voteAverage,
      @JsonKey(name: 'vote_count') int? voteCount,
      int? width});
}

/// @nodoc
class _$PersonPhotosProfilesModelCopyWithImpl<$Res,
        $Val extends PersonPhotosProfilesModel>
    implements $PersonPhotosProfilesModelCopyWith<$Res> {
  _$PersonPhotosProfilesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aspectRatio = freezed,
    Object? height = freezed,
    Object? iso6391 = freezed,
    Object? filePath = freezed,
    Object? voteAverage = freezed,
    Object? voteCount = freezed,
    Object? width = freezed,
  }) {
    return _then(_value.copyWith(
      aspectRatio: freezed == aspectRatio
          ? _value.aspectRatio
          : aspectRatio // ignore: cast_nullable_to_non_nullable
              as double?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      iso6391: freezed == iso6391
          ? _value.iso6391
          : iso6391 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      filePath: freezed == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String?,
      voteAverage: freezed == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      voteCount: freezed == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PersonPhotosProfilesModelImplCopyWith<$Res>
    implements $PersonPhotosProfilesModelCopyWith<$Res> {
  factory _$$PersonPhotosProfilesModelImplCopyWith(
          _$PersonPhotosProfilesModelImpl value,
          $Res Function(_$PersonPhotosProfilesModelImpl) then) =
      __$$PersonPhotosProfilesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'aspect_ratio') double? aspectRatio,
      int? height,
      @JsonKey(name: 'iso_639_1') dynamic iso6391,
      @JsonKey(name: 'file_path') String? filePath,
      @JsonKey(name: 'vote_average') double? voteAverage,
      @JsonKey(name: 'vote_count') int? voteCount,
      int? width});
}

/// @nodoc
class __$$PersonPhotosProfilesModelImplCopyWithImpl<$Res>
    extends _$PersonPhotosProfilesModelCopyWithImpl<$Res,
        _$PersonPhotosProfilesModelImpl>
    implements _$$PersonPhotosProfilesModelImplCopyWith<$Res> {
  __$$PersonPhotosProfilesModelImplCopyWithImpl(
      _$PersonPhotosProfilesModelImpl _value,
      $Res Function(_$PersonPhotosProfilesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aspectRatio = freezed,
    Object? height = freezed,
    Object? iso6391 = freezed,
    Object? filePath = freezed,
    Object? voteAverage = freezed,
    Object? voteCount = freezed,
    Object? width = freezed,
  }) {
    return _then(_$PersonPhotosProfilesModelImpl(
      aspectRatio: freezed == aspectRatio
          ? _value.aspectRatio
          : aspectRatio // ignore: cast_nullable_to_non_nullable
              as double?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      iso6391: freezed == iso6391
          ? _value.iso6391
          : iso6391 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      filePath: freezed == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String?,
      voteAverage: freezed == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      voteCount: freezed == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PersonPhotosProfilesModelImpl implements _PersonPhotosProfilesModel {
  const _$PersonPhotosProfilesModelImpl(
      {@JsonKey(name: 'aspect_ratio') this.aspectRatio,
      this.height,
      @JsonKey(name: 'iso_639_1') this.iso6391,
      @JsonKey(name: 'file_path') this.filePath,
      @JsonKey(name: 'vote_average') this.voteAverage,
      @JsonKey(name: 'vote_count') this.voteCount,
      this.width});

  factory _$PersonPhotosProfilesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PersonPhotosProfilesModelImplFromJson(json);

  @override
  @JsonKey(name: 'aspect_ratio')
  final double? aspectRatio;
  @override
  final int? height;
  @override
  @JsonKey(name: 'iso_639_1')
  final dynamic iso6391;
  @override
  @JsonKey(name: 'file_path')
  final String? filePath;
  @override
  @JsonKey(name: 'vote_average')
  final double? voteAverage;
  @override
  @JsonKey(name: 'vote_count')
  final int? voteCount;
  @override
  final int? width;

  @override
  String toString() {
    return 'PersonPhotosProfilesModel(aspectRatio: $aspectRatio, height: $height, iso6391: $iso6391, filePath: $filePath, voteAverage: $voteAverage, voteCount: $voteCount, width: $width)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonPhotosProfilesModelImpl &&
            (identical(other.aspectRatio, aspectRatio) ||
                other.aspectRatio == aspectRatio) &&
            (identical(other.height, height) || other.height == height) &&
            const DeepCollectionEquality().equals(other.iso6391, iso6391) &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            (identical(other.voteCount, voteCount) ||
                other.voteCount == voteCount) &&
            (identical(other.width, width) || other.width == width));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      aspectRatio,
      height,
      const DeepCollectionEquality().hash(iso6391),
      filePath,
      voteAverage,
      voteCount,
      width);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PersonPhotosProfilesModelImplCopyWith<_$PersonPhotosProfilesModelImpl>
      get copyWith => __$$PersonPhotosProfilesModelImplCopyWithImpl<
          _$PersonPhotosProfilesModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PersonPhotosProfilesModelImplToJson(
      this,
    );
  }
}

abstract class _PersonPhotosProfilesModel implements PersonPhotosProfilesModel {
  const factory _PersonPhotosProfilesModel(
      {@JsonKey(name: 'aspect_ratio') final double? aspectRatio,
      final int? height,
      @JsonKey(name: 'iso_639_1') final dynamic iso6391,
      @JsonKey(name: 'file_path') final String? filePath,
      @JsonKey(name: 'vote_average') final double? voteAverage,
      @JsonKey(name: 'vote_count') final int? voteCount,
      final int? width}) = _$PersonPhotosProfilesModelImpl;

  factory _PersonPhotosProfilesModel.fromJson(Map<String, dynamic> json) =
      _$PersonPhotosProfilesModelImpl.fromJson;

  @override
  @JsonKey(name: 'aspect_ratio')
  double? get aspectRatio;
  @override
  int? get height;
  @override
  @JsonKey(name: 'iso_639_1')
  dynamic get iso6391;
  @override
  @JsonKey(name: 'file_path')
  String? get filePath;
  @override
  @JsonKey(name: 'vote_average')
  double? get voteAverage;
  @override
  @JsonKey(name: 'vote_count')
  int? get voteCount;
  @override
  int? get width;
  @override
  @JsonKey(ignore: true)
  _$$PersonPhotosProfilesModelImplCopyWith<_$PersonPhotosProfilesModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
