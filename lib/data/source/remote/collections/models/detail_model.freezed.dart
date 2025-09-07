// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DetailModel _$DetailModelFromJson(Map<String, dynamic> json) {
  return _DetailModel.fromJson(json);
}

/// @nodoc
mixin _$DetailModel {
  bool? get adult => throw _privateConstructorUsedError;
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'belongs_to_collection')
  dynamic get belongsToCollection => throw _privateConstructorUsedError;
  int? get budget => throw _privateConstructorUsedError;
  List<DetailGenresModel?>? get genres => throw _privateConstructorUsedError;
  String? get homepage => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'imdb_id')
  String? get imdbId => throw _privateConstructorUsedError;
  @JsonKey(name: 'origin_country')
  List<String?>? get originCountry => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_language')
  String? get originalLanguage => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_title')
  String? get originalTitle => throw _privateConstructorUsedError;
  String? get overview => throw _privateConstructorUsedError;
  double? get popularity => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster_path')
  String? get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'production_companies')
  List<DetailProductionCompaniesModel?>? get productionCompanies =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'production_countries')
  List<DetailProductionCountriesModel?>? get productionCountries =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'release_date')
  String? get releaseDate => throw _privateConstructorUsedError;
  int? get revenue => throw _privateConstructorUsedError;
  int? get runtime => throw _privateConstructorUsedError;
  @JsonKey(name: 'spoken_languages')
  List<DetailSpokenLanguagesModel?>? get spokenLanguages =>
      throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get tagline => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  bool? get video => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_average')
  double? get voteAverage => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_count')
  int? get voteCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailModelCopyWith<DetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailModelCopyWith<$Res> {
  factory $DetailModelCopyWith(
          DetailModel value, $Res Function(DetailModel) then) =
      _$DetailModelCopyWithImpl<$Res, DetailModel>;
  @useResult
  $Res call(
      {bool? adult,
      @JsonKey(name: 'backdrop_path') String? backdropPath,
      @JsonKey(name: 'belongs_to_collection') dynamic belongsToCollection,
      int? budget,
      List<DetailGenresModel?>? genres,
      String? homepage,
      int? id,
      @JsonKey(name: 'imdb_id') String? imdbId,
      @JsonKey(name: 'origin_country') List<String?>? originCountry,
      @JsonKey(name: 'original_language') String? originalLanguage,
      @JsonKey(name: 'original_title') String? originalTitle,
      String? overview,
      double? popularity,
      @JsonKey(name: 'poster_path') String? posterPath,
      @JsonKey(name: 'production_companies')
      List<DetailProductionCompaniesModel?>? productionCompanies,
      @JsonKey(name: 'production_countries')
      List<DetailProductionCountriesModel?>? productionCountries,
      @JsonKey(name: 'release_date') String? releaseDate,
      int? revenue,
      int? runtime,
      @JsonKey(name: 'spoken_languages')
      List<DetailSpokenLanguagesModel?>? spokenLanguages,
      String? status,
      String? tagline,
      String? title,
      bool? video,
      @JsonKey(name: 'vote_average') double? voteAverage,
      @JsonKey(name: 'vote_count') int? voteCount});
}

/// @nodoc
class _$DetailModelCopyWithImpl<$Res, $Val extends DetailModel>
    implements $DetailModelCopyWith<$Res> {
  _$DetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = freezed,
    Object? backdropPath = freezed,
    Object? belongsToCollection = freezed,
    Object? budget = freezed,
    Object? genres = freezed,
    Object? homepage = freezed,
    Object? id = freezed,
    Object? imdbId = freezed,
    Object? originCountry = freezed,
    Object? originalLanguage = freezed,
    Object? originalTitle = freezed,
    Object? overview = freezed,
    Object? popularity = freezed,
    Object? posterPath = freezed,
    Object? productionCompanies = freezed,
    Object? productionCountries = freezed,
    Object? releaseDate = freezed,
    Object? revenue = freezed,
    Object? runtime = freezed,
    Object? spokenLanguages = freezed,
    Object? status = freezed,
    Object? tagline = freezed,
    Object? title = freezed,
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
      belongsToCollection: freezed == belongsToCollection
          ? _value.belongsToCollection
          : belongsToCollection // ignore: cast_nullable_to_non_nullable
              as dynamic,
      budget: freezed == budget
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as int?,
      genres: freezed == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<DetailGenresModel?>?,
      homepage: freezed == homepage
          ? _value.homepage
          : homepage // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      imdbId: freezed == imdbId
          ? _value.imdbId
          : imdbId // ignore: cast_nullable_to_non_nullable
              as String?,
      originCountry: freezed == originCountry
          ? _value.originCountry
          : originCountry // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      originalLanguage: freezed == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      originalTitle: freezed == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: freezed == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double?,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      productionCompanies: freezed == productionCompanies
          ? _value.productionCompanies
          : productionCompanies // ignore: cast_nullable_to_non_nullable
              as List<DetailProductionCompaniesModel?>?,
      productionCountries: freezed == productionCountries
          ? _value.productionCountries
          : productionCountries // ignore: cast_nullable_to_non_nullable
              as List<DetailProductionCountriesModel?>?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      revenue: freezed == revenue
          ? _value.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as int?,
      runtime: freezed == runtime
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as int?,
      spokenLanguages: freezed == spokenLanguages
          ? _value.spokenLanguages
          : spokenLanguages // ignore: cast_nullable_to_non_nullable
              as List<DetailSpokenLanguagesModel?>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      tagline: freezed == tagline
          ? _value.tagline
          : tagline // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
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
abstract class _$$DetailModelImplCopyWith<$Res>
    implements $DetailModelCopyWith<$Res> {
  factory _$$DetailModelImplCopyWith(
          _$DetailModelImpl value, $Res Function(_$DetailModelImpl) then) =
      __$$DetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? adult,
      @JsonKey(name: 'backdrop_path') String? backdropPath,
      @JsonKey(name: 'belongs_to_collection') dynamic belongsToCollection,
      int? budget,
      List<DetailGenresModel?>? genres,
      String? homepage,
      int? id,
      @JsonKey(name: 'imdb_id') String? imdbId,
      @JsonKey(name: 'origin_country') List<String?>? originCountry,
      @JsonKey(name: 'original_language') String? originalLanguage,
      @JsonKey(name: 'original_title') String? originalTitle,
      String? overview,
      double? popularity,
      @JsonKey(name: 'poster_path') String? posterPath,
      @JsonKey(name: 'production_companies')
      List<DetailProductionCompaniesModel?>? productionCompanies,
      @JsonKey(name: 'production_countries')
      List<DetailProductionCountriesModel?>? productionCountries,
      @JsonKey(name: 'release_date') String? releaseDate,
      int? revenue,
      int? runtime,
      @JsonKey(name: 'spoken_languages')
      List<DetailSpokenLanguagesModel?>? spokenLanguages,
      String? status,
      String? tagline,
      String? title,
      bool? video,
      @JsonKey(name: 'vote_average') double? voteAverage,
      @JsonKey(name: 'vote_count') int? voteCount});
}

/// @nodoc
class __$$DetailModelImplCopyWithImpl<$Res>
    extends _$DetailModelCopyWithImpl<$Res, _$DetailModelImpl>
    implements _$$DetailModelImplCopyWith<$Res> {
  __$$DetailModelImplCopyWithImpl(
      _$DetailModelImpl _value, $Res Function(_$DetailModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = freezed,
    Object? backdropPath = freezed,
    Object? belongsToCollection = freezed,
    Object? budget = freezed,
    Object? genres = freezed,
    Object? homepage = freezed,
    Object? id = freezed,
    Object? imdbId = freezed,
    Object? originCountry = freezed,
    Object? originalLanguage = freezed,
    Object? originalTitle = freezed,
    Object? overview = freezed,
    Object? popularity = freezed,
    Object? posterPath = freezed,
    Object? productionCompanies = freezed,
    Object? productionCountries = freezed,
    Object? releaseDate = freezed,
    Object? revenue = freezed,
    Object? runtime = freezed,
    Object? spokenLanguages = freezed,
    Object? status = freezed,
    Object? tagline = freezed,
    Object? title = freezed,
    Object? video = freezed,
    Object? voteAverage = freezed,
    Object? voteCount = freezed,
  }) {
    return _then(_$DetailModelImpl(
      adult: freezed == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool?,
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      belongsToCollection: freezed == belongsToCollection
          ? _value.belongsToCollection
          : belongsToCollection // ignore: cast_nullable_to_non_nullable
              as dynamic,
      budget: freezed == budget
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as int?,
      genres: freezed == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<DetailGenresModel?>?,
      homepage: freezed == homepage
          ? _value.homepage
          : homepage // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      imdbId: freezed == imdbId
          ? _value.imdbId
          : imdbId // ignore: cast_nullable_to_non_nullable
              as String?,
      originCountry: freezed == originCountry
          ? _value._originCountry
          : originCountry // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      originalLanguage: freezed == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      originalTitle: freezed == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: freezed == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double?,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      productionCompanies: freezed == productionCompanies
          ? _value._productionCompanies
          : productionCompanies // ignore: cast_nullable_to_non_nullable
              as List<DetailProductionCompaniesModel?>?,
      productionCountries: freezed == productionCountries
          ? _value._productionCountries
          : productionCountries // ignore: cast_nullable_to_non_nullable
              as List<DetailProductionCountriesModel?>?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      revenue: freezed == revenue
          ? _value.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as int?,
      runtime: freezed == runtime
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as int?,
      spokenLanguages: freezed == spokenLanguages
          ? _value._spokenLanguages
          : spokenLanguages // ignore: cast_nullable_to_non_nullable
              as List<DetailSpokenLanguagesModel?>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      tagline: freezed == tagline
          ? _value.tagline
          : tagline // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
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
class _$DetailModelImpl implements _DetailModel {
  const _$DetailModelImpl(
      {this.adult,
      @JsonKey(name: 'backdrop_path') this.backdropPath,
      @JsonKey(name: 'belongs_to_collection') this.belongsToCollection,
      this.budget,
      final List<DetailGenresModel?>? genres,
      this.homepage,
      this.id,
      @JsonKey(name: 'imdb_id') this.imdbId,
      @JsonKey(name: 'origin_country') final List<String?>? originCountry,
      @JsonKey(name: 'original_language') this.originalLanguage,
      @JsonKey(name: 'original_title') this.originalTitle,
      this.overview,
      this.popularity,
      @JsonKey(name: 'poster_path') this.posterPath,
      @JsonKey(name: 'production_companies')
      final List<DetailProductionCompaniesModel?>? productionCompanies,
      @JsonKey(name: 'production_countries')
      final List<DetailProductionCountriesModel?>? productionCountries,
      @JsonKey(name: 'release_date') this.releaseDate,
      this.revenue,
      this.runtime,
      @JsonKey(name: 'spoken_languages')
      final List<DetailSpokenLanguagesModel?>? spokenLanguages,
      this.status,
      this.tagline,
      this.title,
      this.video,
      @JsonKey(name: 'vote_average') this.voteAverage,
      @JsonKey(name: 'vote_count') this.voteCount})
      : _genres = genres,
        _originCountry = originCountry,
        _productionCompanies = productionCompanies,
        _productionCountries = productionCountries,
        _spokenLanguages = spokenLanguages;

  factory _$DetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailModelImplFromJson(json);

  @override
  final bool? adult;
  @override
  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;
  @override
  @JsonKey(name: 'belongs_to_collection')
  final dynamic belongsToCollection;
  @override
  final int? budget;
  final List<DetailGenresModel?>? _genres;
  @override
  List<DetailGenresModel?>? get genres {
    final value = _genres;
    if (value == null) return null;
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? homepage;
  @override
  final int? id;
  @override
  @JsonKey(name: 'imdb_id')
  final String? imdbId;
  final List<String?>? _originCountry;
  @override
  @JsonKey(name: 'origin_country')
  List<String?>? get originCountry {
    final value = _originCountry;
    if (value == null) return null;
    if (_originCountry is EqualUnmodifiableListView) return _originCountry;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'original_language')
  final String? originalLanguage;
  @override
  @JsonKey(name: 'original_title')
  final String? originalTitle;
  @override
  final String? overview;
  @override
  final double? popularity;
  @override
  @JsonKey(name: 'poster_path')
  final String? posterPath;
  final List<DetailProductionCompaniesModel?>? _productionCompanies;
  @override
  @JsonKey(name: 'production_companies')
  List<DetailProductionCompaniesModel?>? get productionCompanies {
    final value = _productionCompanies;
    if (value == null) return null;
    if (_productionCompanies is EqualUnmodifiableListView)
      return _productionCompanies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<DetailProductionCountriesModel?>? _productionCountries;
  @override
  @JsonKey(name: 'production_countries')
  List<DetailProductionCountriesModel?>? get productionCountries {
    final value = _productionCountries;
    if (value == null) return null;
    if (_productionCountries is EqualUnmodifiableListView)
      return _productionCountries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'release_date')
  final String? releaseDate;
  @override
  final int? revenue;
  @override
  final int? runtime;
  final List<DetailSpokenLanguagesModel?>? _spokenLanguages;
  @override
  @JsonKey(name: 'spoken_languages')
  List<DetailSpokenLanguagesModel?>? get spokenLanguages {
    final value = _spokenLanguages;
    if (value == null) return null;
    if (_spokenLanguages is EqualUnmodifiableListView) return _spokenLanguages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? status;
  @override
  final String? tagline;
  @override
  final String? title;
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
    return 'DetailModel(adult: $adult, backdropPath: $backdropPath, belongsToCollection: $belongsToCollection, budget: $budget, genres: $genres, homepage: $homepage, id: $id, imdbId: $imdbId, originCountry: $originCountry, originalLanguage: $originalLanguage, originalTitle: $originalTitle, overview: $overview, popularity: $popularity, posterPath: $posterPath, productionCompanies: $productionCompanies, productionCountries: $productionCountries, releaseDate: $releaseDate, revenue: $revenue, runtime: $runtime, spokenLanguages: $spokenLanguages, status: $status, tagline: $tagline, title: $title, video: $video, voteAverage: $voteAverage, voteCount: $voteCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailModelImpl &&
            (identical(other.adult, adult) || other.adult == adult) &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath) &&
            const DeepCollectionEquality()
                .equals(other.belongsToCollection, belongsToCollection) &&
            (identical(other.budget, budget) || other.budget == budget) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            (identical(other.homepage, homepage) ||
                other.homepage == homepage) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imdbId, imdbId) || other.imdbId == imdbId) &&
            const DeepCollectionEquality()
                .equals(other._originCountry, _originCountry) &&
            (identical(other.originalLanguage, originalLanguage) ||
                other.originalLanguage == originalLanguage) &&
            (identical(other.originalTitle, originalTitle) ||
                other.originalTitle == originalTitle) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            const DeepCollectionEquality()
                .equals(other._productionCompanies, _productionCompanies) &&
            const DeepCollectionEquality()
                .equals(other._productionCountries, _productionCountries) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.revenue, revenue) || other.revenue == revenue) &&
            (identical(other.runtime, runtime) || other.runtime == runtime) &&
            const DeepCollectionEquality()
                .equals(other._spokenLanguages, _spokenLanguages) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.tagline, tagline) || other.tagline == tagline) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.video, video) || other.video == video) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            (identical(other.voteCount, voteCount) ||
                other.voteCount == voteCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        adult,
        backdropPath,
        const DeepCollectionEquality().hash(belongsToCollection),
        budget,
        const DeepCollectionEquality().hash(_genres),
        homepage,
        id,
        imdbId,
        const DeepCollectionEquality().hash(_originCountry),
        originalLanguage,
        originalTitle,
        overview,
        popularity,
        posterPath,
        const DeepCollectionEquality().hash(_productionCompanies),
        const DeepCollectionEquality().hash(_productionCountries),
        releaseDate,
        revenue,
        runtime,
        const DeepCollectionEquality().hash(_spokenLanguages),
        status,
        tagline,
        title,
        video,
        voteAverage,
        voteCount
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailModelImplCopyWith<_$DetailModelImpl> get copyWith =>
      __$$DetailModelImplCopyWithImpl<_$DetailModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailModelImplToJson(
      this,
    );
  }
}

abstract class _DetailModel implements DetailModel {
  const factory _DetailModel(
      {final bool? adult,
      @JsonKey(name: 'backdrop_path') final String? backdropPath,
      @JsonKey(name: 'belongs_to_collection') final dynamic belongsToCollection,
      final int? budget,
      final List<DetailGenresModel?>? genres,
      final String? homepage,
      final int? id,
      @JsonKey(name: 'imdb_id') final String? imdbId,
      @JsonKey(name: 'origin_country') final List<String?>? originCountry,
      @JsonKey(name: 'original_language') final String? originalLanguage,
      @JsonKey(name: 'original_title') final String? originalTitle,
      final String? overview,
      final double? popularity,
      @JsonKey(name: 'poster_path') final String? posterPath,
      @JsonKey(name: 'production_companies')
      final List<DetailProductionCompaniesModel?>? productionCompanies,
      @JsonKey(name: 'production_countries')
      final List<DetailProductionCountriesModel?>? productionCountries,
      @JsonKey(name: 'release_date') final String? releaseDate,
      final int? revenue,
      final int? runtime,
      @JsonKey(name: 'spoken_languages')
      final List<DetailSpokenLanguagesModel?>? spokenLanguages,
      final String? status,
      final String? tagline,
      final String? title,
      final bool? video,
      @JsonKey(name: 'vote_average') final double? voteAverage,
      @JsonKey(name: 'vote_count') final int? voteCount}) = _$DetailModelImpl;

  factory _DetailModel.fromJson(Map<String, dynamic> json) =
      _$DetailModelImpl.fromJson;

  @override
  bool? get adult;
  @override
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath;
  @override
  @JsonKey(name: 'belongs_to_collection')
  dynamic get belongsToCollection;
  @override
  int? get budget;
  @override
  List<DetailGenresModel?>? get genres;
  @override
  String? get homepage;
  @override
  int? get id;
  @override
  @JsonKey(name: 'imdb_id')
  String? get imdbId;
  @override
  @JsonKey(name: 'origin_country')
  List<String?>? get originCountry;
  @override
  @JsonKey(name: 'original_language')
  String? get originalLanguage;
  @override
  @JsonKey(name: 'original_title')
  String? get originalTitle;
  @override
  String? get overview;
  @override
  double? get popularity;
  @override
  @JsonKey(name: 'poster_path')
  String? get posterPath;
  @override
  @JsonKey(name: 'production_companies')
  List<DetailProductionCompaniesModel?>? get productionCompanies;
  @override
  @JsonKey(name: 'production_countries')
  List<DetailProductionCountriesModel?>? get productionCountries;
  @override
  @JsonKey(name: 'release_date')
  String? get releaseDate;
  @override
  int? get revenue;
  @override
  int? get runtime;
  @override
  @JsonKey(name: 'spoken_languages')
  List<DetailSpokenLanguagesModel?>? get spokenLanguages;
  @override
  String? get status;
  @override
  String? get tagline;
  @override
  String? get title;
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
  _$$DetailModelImplCopyWith<_$DetailModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DetailGenresModel _$DetailGenresModelFromJson(Map<String, dynamic> json) {
  return _DetailGenresModel.fromJson(json);
}

/// @nodoc
mixin _$DetailGenresModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailGenresModelCopyWith<DetailGenresModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailGenresModelCopyWith<$Res> {
  factory $DetailGenresModelCopyWith(
          DetailGenresModel value, $Res Function(DetailGenresModel) then) =
      _$DetailGenresModelCopyWithImpl<$Res, DetailGenresModel>;
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class _$DetailGenresModelCopyWithImpl<$Res, $Val extends DetailGenresModel>
    implements $DetailGenresModelCopyWith<$Res> {
  _$DetailGenresModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailGenresModelImplCopyWith<$Res>
    implements $DetailGenresModelCopyWith<$Res> {
  factory _$$DetailGenresModelImplCopyWith(_$DetailGenresModelImpl value,
          $Res Function(_$DetailGenresModelImpl) then) =
      __$$DetailGenresModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class __$$DetailGenresModelImplCopyWithImpl<$Res>
    extends _$DetailGenresModelCopyWithImpl<$Res, _$DetailGenresModelImpl>
    implements _$$DetailGenresModelImplCopyWith<$Res> {
  __$$DetailGenresModelImplCopyWithImpl(_$DetailGenresModelImpl _value,
      $Res Function(_$DetailGenresModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$DetailGenresModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailGenresModelImpl implements _DetailGenresModel {
  const _$DetailGenresModelImpl({this.id, this.name});

  factory _$DetailGenresModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailGenresModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'DetailGenresModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailGenresModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailGenresModelImplCopyWith<_$DetailGenresModelImpl> get copyWith =>
      __$$DetailGenresModelImplCopyWithImpl<_$DetailGenresModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailGenresModelImplToJson(
      this,
    );
  }
}

abstract class _DetailGenresModel implements DetailGenresModel {
  const factory _DetailGenresModel({final int? id, final String? name}) =
      _$DetailGenresModelImpl;

  factory _DetailGenresModel.fromJson(Map<String, dynamic> json) =
      _$DetailGenresModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$DetailGenresModelImplCopyWith<_$DetailGenresModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DetailProductionCompaniesModel _$DetailProductionCompaniesModelFromJson(
    Map<String, dynamic> json) {
  return _DetailProductionCompaniesModel.fromJson(json);
}

/// @nodoc
mixin _$DetailProductionCompaniesModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'logo_path')
  String? get logoPath => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'origin_country')
  String? get originCountry => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailProductionCompaniesModelCopyWith<DetailProductionCompaniesModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailProductionCompaniesModelCopyWith<$Res> {
  factory $DetailProductionCompaniesModelCopyWith(
          DetailProductionCompaniesModel value,
          $Res Function(DetailProductionCompaniesModel) then) =
      _$DetailProductionCompaniesModelCopyWithImpl<$Res,
          DetailProductionCompaniesModel>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'logo_path') String? logoPath,
      String? name,
      @JsonKey(name: 'origin_country') String? originCountry});
}

/// @nodoc
class _$DetailProductionCompaniesModelCopyWithImpl<$Res,
        $Val extends DetailProductionCompaniesModel>
    implements $DetailProductionCompaniesModelCopyWith<$Res> {
  _$DetailProductionCompaniesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? logoPath = freezed,
    Object? name = freezed,
    Object? originCountry = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      logoPath: freezed == logoPath
          ? _value.logoPath
          : logoPath // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      originCountry: freezed == originCountry
          ? _value.originCountry
          : originCountry // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailProductionCompaniesModelImplCopyWith<$Res>
    implements $DetailProductionCompaniesModelCopyWith<$Res> {
  factory _$$DetailProductionCompaniesModelImplCopyWith(
          _$DetailProductionCompaniesModelImpl value,
          $Res Function(_$DetailProductionCompaniesModelImpl) then) =
      __$$DetailProductionCompaniesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'logo_path') String? logoPath,
      String? name,
      @JsonKey(name: 'origin_country') String? originCountry});
}

/// @nodoc
class __$$DetailProductionCompaniesModelImplCopyWithImpl<$Res>
    extends _$DetailProductionCompaniesModelCopyWithImpl<$Res,
        _$DetailProductionCompaniesModelImpl>
    implements _$$DetailProductionCompaniesModelImplCopyWith<$Res> {
  __$$DetailProductionCompaniesModelImplCopyWithImpl(
      _$DetailProductionCompaniesModelImpl _value,
      $Res Function(_$DetailProductionCompaniesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? logoPath = freezed,
    Object? name = freezed,
    Object? originCountry = freezed,
  }) {
    return _then(_$DetailProductionCompaniesModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      logoPath: freezed == logoPath
          ? _value.logoPath
          : logoPath // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      originCountry: freezed == originCountry
          ? _value.originCountry
          : originCountry // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailProductionCompaniesModelImpl
    implements _DetailProductionCompaniesModel {
  const _$DetailProductionCompaniesModelImpl(
      {this.id,
      @JsonKey(name: 'logo_path') this.logoPath,
      this.name,
      @JsonKey(name: 'origin_country') this.originCountry});

  factory _$DetailProductionCompaniesModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$DetailProductionCompaniesModelImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'logo_path')
  final String? logoPath;
  @override
  final String? name;
  @override
  @JsonKey(name: 'origin_country')
  final String? originCountry;

  @override
  String toString() {
    return 'DetailProductionCompaniesModel(id: $id, logoPath: $logoPath, name: $name, originCountry: $originCountry)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailProductionCompaniesModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.logoPath, logoPath) ||
                other.logoPath == logoPath) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.originCountry, originCountry) ||
                other.originCountry == originCountry));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, logoPath, name, originCountry);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailProductionCompaniesModelImplCopyWith<
          _$DetailProductionCompaniesModelImpl>
      get copyWith => __$$DetailProductionCompaniesModelImplCopyWithImpl<
          _$DetailProductionCompaniesModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailProductionCompaniesModelImplToJson(
      this,
    );
  }
}

abstract class _DetailProductionCompaniesModel
    implements DetailProductionCompaniesModel {
  const factory _DetailProductionCompaniesModel(
          {final int? id,
          @JsonKey(name: 'logo_path') final String? logoPath,
          final String? name,
          @JsonKey(name: 'origin_country') final String? originCountry}) =
      _$DetailProductionCompaniesModelImpl;

  factory _DetailProductionCompaniesModel.fromJson(Map<String, dynamic> json) =
      _$DetailProductionCompaniesModelImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'logo_path')
  String? get logoPath;
  @override
  String? get name;
  @override
  @JsonKey(name: 'origin_country')
  String? get originCountry;
  @override
  @JsonKey(ignore: true)
  _$$DetailProductionCompaniesModelImplCopyWith<
          _$DetailProductionCompaniesModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DetailProductionCountriesModel _$DetailProductionCountriesModelFromJson(
    Map<String, dynamic> json) {
  return _DetailProductionCountriesModel.fromJson(json);
}

/// @nodoc
mixin _$DetailProductionCountriesModel {
  @JsonKey(name: 'iso_3166_1')
  String? get iso31661 => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailProductionCountriesModelCopyWith<DetailProductionCountriesModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailProductionCountriesModelCopyWith<$Res> {
  factory $DetailProductionCountriesModelCopyWith(
          DetailProductionCountriesModel value,
          $Res Function(DetailProductionCountriesModel) then) =
      _$DetailProductionCountriesModelCopyWithImpl<$Res,
          DetailProductionCountriesModel>;
  @useResult
  $Res call({@JsonKey(name: 'iso_3166_1') String? iso31661, String? name});
}

/// @nodoc
class _$DetailProductionCountriesModelCopyWithImpl<$Res,
        $Val extends DetailProductionCountriesModel>
    implements $DetailProductionCountriesModelCopyWith<$Res> {
  _$DetailProductionCountriesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iso31661 = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      iso31661: freezed == iso31661
          ? _value.iso31661
          : iso31661 // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailProductionCountriesModelImplCopyWith<$Res>
    implements $DetailProductionCountriesModelCopyWith<$Res> {
  factory _$$DetailProductionCountriesModelImplCopyWith(
          _$DetailProductionCountriesModelImpl value,
          $Res Function(_$DetailProductionCountriesModelImpl) then) =
      __$$DetailProductionCountriesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'iso_3166_1') String? iso31661, String? name});
}

/// @nodoc
class __$$DetailProductionCountriesModelImplCopyWithImpl<$Res>
    extends _$DetailProductionCountriesModelCopyWithImpl<$Res,
        _$DetailProductionCountriesModelImpl>
    implements _$$DetailProductionCountriesModelImplCopyWith<$Res> {
  __$$DetailProductionCountriesModelImplCopyWithImpl(
      _$DetailProductionCountriesModelImpl _value,
      $Res Function(_$DetailProductionCountriesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iso31661 = freezed,
    Object? name = freezed,
  }) {
    return _then(_$DetailProductionCountriesModelImpl(
      iso31661: freezed == iso31661
          ? _value.iso31661
          : iso31661 // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailProductionCountriesModelImpl
    implements _DetailProductionCountriesModel {
  const _$DetailProductionCountriesModelImpl(
      {@JsonKey(name: 'iso_3166_1') this.iso31661, this.name});

  factory _$DetailProductionCountriesModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$DetailProductionCountriesModelImplFromJson(json);

  @override
  @JsonKey(name: 'iso_3166_1')
  final String? iso31661;
  @override
  final String? name;

  @override
  String toString() {
    return 'DetailProductionCountriesModel(iso31661: $iso31661, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailProductionCountriesModelImpl &&
            (identical(other.iso31661, iso31661) ||
                other.iso31661 == iso31661) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, iso31661, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailProductionCountriesModelImplCopyWith<
          _$DetailProductionCountriesModelImpl>
      get copyWith => __$$DetailProductionCountriesModelImplCopyWithImpl<
          _$DetailProductionCountriesModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailProductionCountriesModelImplToJson(
      this,
    );
  }
}

abstract class _DetailProductionCountriesModel
    implements DetailProductionCountriesModel {
  const factory _DetailProductionCountriesModel(
      {@JsonKey(name: 'iso_3166_1') final String? iso31661,
      final String? name}) = _$DetailProductionCountriesModelImpl;

  factory _DetailProductionCountriesModel.fromJson(Map<String, dynamic> json) =
      _$DetailProductionCountriesModelImpl.fromJson;

  @override
  @JsonKey(name: 'iso_3166_1')
  String? get iso31661;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$DetailProductionCountriesModelImplCopyWith<
          _$DetailProductionCountriesModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DetailSpokenLanguagesModel _$DetailSpokenLanguagesModelFromJson(
    Map<String, dynamic> json) {
  return _DetailSpokenLanguagesModel.fromJson(json);
}

/// @nodoc
mixin _$DetailSpokenLanguagesModel {
  @JsonKey(name: 'english_name')
  String? get englishName => throw _privateConstructorUsedError;
  @JsonKey(name: 'iso_639_1')
  String? get iso6391 => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailSpokenLanguagesModelCopyWith<DetailSpokenLanguagesModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailSpokenLanguagesModelCopyWith<$Res> {
  factory $DetailSpokenLanguagesModelCopyWith(DetailSpokenLanguagesModel value,
          $Res Function(DetailSpokenLanguagesModel) then) =
      _$DetailSpokenLanguagesModelCopyWithImpl<$Res,
          DetailSpokenLanguagesModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'english_name') String? englishName,
      @JsonKey(name: 'iso_639_1') String? iso6391,
      String? name});
}

/// @nodoc
class _$DetailSpokenLanguagesModelCopyWithImpl<$Res,
        $Val extends DetailSpokenLanguagesModel>
    implements $DetailSpokenLanguagesModelCopyWith<$Res> {
  _$DetailSpokenLanguagesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? englishName = freezed,
    Object? iso6391 = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      englishName: freezed == englishName
          ? _value.englishName
          : englishName // ignore: cast_nullable_to_non_nullable
              as String?,
      iso6391: freezed == iso6391
          ? _value.iso6391
          : iso6391 // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailSpokenLanguagesModelImplCopyWith<$Res>
    implements $DetailSpokenLanguagesModelCopyWith<$Res> {
  factory _$$DetailSpokenLanguagesModelImplCopyWith(
          _$DetailSpokenLanguagesModelImpl value,
          $Res Function(_$DetailSpokenLanguagesModelImpl) then) =
      __$$DetailSpokenLanguagesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'english_name') String? englishName,
      @JsonKey(name: 'iso_639_1') String? iso6391,
      String? name});
}

/// @nodoc
class __$$DetailSpokenLanguagesModelImplCopyWithImpl<$Res>
    extends _$DetailSpokenLanguagesModelCopyWithImpl<$Res,
        _$DetailSpokenLanguagesModelImpl>
    implements _$$DetailSpokenLanguagesModelImplCopyWith<$Res> {
  __$$DetailSpokenLanguagesModelImplCopyWithImpl(
      _$DetailSpokenLanguagesModelImpl _value,
      $Res Function(_$DetailSpokenLanguagesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? englishName = freezed,
    Object? iso6391 = freezed,
    Object? name = freezed,
  }) {
    return _then(_$DetailSpokenLanguagesModelImpl(
      englishName: freezed == englishName
          ? _value.englishName
          : englishName // ignore: cast_nullable_to_non_nullable
              as String?,
      iso6391: freezed == iso6391
          ? _value.iso6391
          : iso6391 // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailSpokenLanguagesModelImpl implements _DetailSpokenLanguagesModel {
  const _$DetailSpokenLanguagesModelImpl(
      {@JsonKey(name: 'english_name') this.englishName,
      @JsonKey(name: 'iso_639_1') this.iso6391,
      this.name});

  factory _$DetailSpokenLanguagesModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$DetailSpokenLanguagesModelImplFromJson(json);

  @override
  @JsonKey(name: 'english_name')
  final String? englishName;
  @override
  @JsonKey(name: 'iso_639_1')
  final String? iso6391;
  @override
  final String? name;

  @override
  String toString() {
    return 'DetailSpokenLanguagesModel(englishName: $englishName, iso6391: $iso6391, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailSpokenLanguagesModelImpl &&
            (identical(other.englishName, englishName) ||
                other.englishName == englishName) &&
            (identical(other.iso6391, iso6391) || other.iso6391 == iso6391) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, englishName, iso6391, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailSpokenLanguagesModelImplCopyWith<_$DetailSpokenLanguagesModelImpl>
      get copyWith => __$$DetailSpokenLanguagesModelImplCopyWithImpl<
          _$DetailSpokenLanguagesModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailSpokenLanguagesModelImplToJson(
      this,
    );
  }
}

abstract class _DetailSpokenLanguagesModel
    implements DetailSpokenLanguagesModel {
  const factory _DetailSpokenLanguagesModel(
      {@JsonKey(name: 'english_name') final String? englishName,
      @JsonKey(name: 'iso_639_1') final String? iso6391,
      final String? name}) = _$DetailSpokenLanguagesModelImpl;

  factory _DetailSpokenLanguagesModel.fromJson(Map<String, dynamic> json) =
      _$DetailSpokenLanguagesModelImpl.fromJson;

  @override
  @JsonKey(name: 'english_name')
  String? get englishName;
  @override
  @JsonKey(name: 'iso_639_1')
  String? get iso6391;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$DetailSpokenLanguagesModelImplCopyWith<_$DetailSpokenLanguagesModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
