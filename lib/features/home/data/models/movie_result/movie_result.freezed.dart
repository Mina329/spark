// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MovieResult _$MovieResultFromJson(Map<String, dynamic> json) {
  return _MovieResult.fromJson(json);
}

/// @nodoc
mixin _$MovieResult {
  bool? get adult => throw _privateConstructorUsedError;
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'belongs_to_collection')
  BelongsToCollection? get belongsToCollection =>
      throw _privateConstructorUsedError;
  int? get budget => throw _privateConstructorUsedError;
  List<Genre>? get genres => throw _privateConstructorUsedError;
  String? get homepage => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'imdb_id')
  String? get imdbId => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_language')
  String? get originalLanguage => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_title')
  String? get originalTitle => throw _privateConstructorUsedError;
  String? get overview => throw _privateConstructorUsedError;
  double? get popularity => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster_path')
  String? get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'production_companies')
  List<ProductionCompany>? get productionCompanies =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'production_countries')
  List<ProductionCountry>? get productionCountries =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'release_date')
  String? get releaseDate => throw _privateConstructorUsedError;
  int? get revenue => throw _privateConstructorUsedError;
  int? get runtime => throw _privateConstructorUsedError;
  @JsonKey(name: 'spoken_languages')
  List<SpokenLanguage>? get spokenLanguages =>
      throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get tagline => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  bool? get video => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_average')
  double? get voteAverage => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_count')
  int? get voteCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'credits')
  MovieCredits? get movieCredits => throw _privateConstructorUsedError;
  @JsonKey(name: 'images')
  MovieImages? get movieImages => throw _privateConstructorUsedError;
  @JsonKey(name: 'videos')
  MovieVideos? get movieVideos => throw _privateConstructorUsedError;
  @JsonKey(name: 'reviews')
  MovieReviews? get movieReviews => throw _privateConstructorUsedError;
  @JsonKey(name: 'similar')
  MovieSimilar? get movieSimilar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieResultCopyWith<MovieResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieResultCopyWith<$Res> {
  factory $MovieResultCopyWith(
          MovieResult value, $Res Function(MovieResult) then) =
      _$MovieResultCopyWithImpl<$Res, MovieResult>;
  @useResult
  $Res call(
      {bool? adult,
      @JsonKey(name: 'backdrop_path') String? backdropPath,
      @JsonKey(name: 'belongs_to_collection')
      BelongsToCollection? belongsToCollection,
      int? budget,
      List<Genre>? genres,
      String? homepage,
      int? id,
      @JsonKey(name: 'imdb_id') String? imdbId,
      @JsonKey(name: 'original_language') String? originalLanguage,
      @JsonKey(name: 'original_title') String? originalTitle,
      String? overview,
      double? popularity,
      @JsonKey(name: 'poster_path') String? posterPath,
      @JsonKey(name: 'production_companies')
      List<ProductionCompany>? productionCompanies,
      @JsonKey(name: 'production_countries')
      List<ProductionCountry>? productionCountries,
      @JsonKey(name: 'release_date') String? releaseDate,
      int? revenue,
      int? runtime,
      @JsonKey(name: 'spoken_languages') List<SpokenLanguage>? spokenLanguages,
      String? status,
      String? tagline,
      String? title,
      bool? video,
      @JsonKey(name: 'vote_average') double? voteAverage,
      @JsonKey(name: 'vote_count') int? voteCount,
      @JsonKey(name: 'credits') MovieCredits? movieCredits,
      @JsonKey(name: 'images') MovieImages? movieImages,
      @JsonKey(name: 'videos') MovieVideos? movieVideos,
      @JsonKey(name: 'reviews') MovieReviews? movieReviews,
      @JsonKey(name: 'similar') MovieSimilar? movieSimilar});

  $BelongsToCollectionCopyWith<$Res>? get belongsToCollection;
  $MovieCreditsCopyWith<$Res>? get movieCredits;
  $MovieImagesCopyWith<$Res>? get movieImages;
  $MovieVideosCopyWith<$Res>? get movieVideos;
  $MovieReviewsCopyWith<$Res>? get movieReviews;
  $MovieSimilarCopyWith<$Res>? get movieSimilar;
}

/// @nodoc
class _$MovieResultCopyWithImpl<$Res, $Val extends MovieResult>
    implements $MovieResultCopyWith<$Res> {
  _$MovieResultCopyWithImpl(this._value, this._then);

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
    Object? movieCredits = freezed,
    Object? movieImages = freezed,
    Object? movieVideos = freezed,
    Object? movieReviews = freezed,
    Object? movieSimilar = freezed,
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
              as BelongsToCollection?,
      budget: freezed == budget
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as int?,
      genres: freezed == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genre>?,
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
              as List<ProductionCompany>?,
      productionCountries: freezed == productionCountries
          ? _value.productionCountries
          : productionCountries // ignore: cast_nullable_to_non_nullable
              as List<ProductionCountry>?,
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
              as List<SpokenLanguage>?,
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
      movieCredits: freezed == movieCredits
          ? _value.movieCredits
          : movieCredits // ignore: cast_nullable_to_non_nullable
              as MovieCredits?,
      movieImages: freezed == movieImages
          ? _value.movieImages
          : movieImages // ignore: cast_nullable_to_non_nullable
              as MovieImages?,
      movieVideos: freezed == movieVideos
          ? _value.movieVideos
          : movieVideos // ignore: cast_nullable_to_non_nullable
              as MovieVideos?,
      movieReviews: freezed == movieReviews
          ? _value.movieReviews
          : movieReviews // ignore: cast_nullable_to_non_nullable
              as MovieReviews?,
      movieSimilar: freezed == movieSimilar
          ? _value.movieSimilar
          : movieSimilar // ignore: cast_nullable_to_non_nullable
              as MovieSimilar?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BelongsToCollectionCopyWith<$Res>? get belongsToCollection {
    if (_value.belongsToCollection == null) {
      return null;
    }

    return $BelongsToCollectionCopyWith<$Res>(_value.belongsToCollection!,
        (value) {
      return _then(_value.copyWith(belongsToCollection: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MovieCreditsCopyWith<$Res>? get movieCredits {
    if (_value.movieCredits == null) {
      return null;
    }

    return $MovieCreditsCopyWith<$Res>(_value.movieCredits!, (value) {
      return _then(_value.copyWith(movieCredits: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MovieImagesCopyWith<$Res>? get movieImages {
    if (_value.movieImages == null) {
      return null;
    }

    return $MovieImagesCopyWith<$Res>(_value.movieImages!, (value) {
      return _then(_value.copyWith(movieImages: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MovieVideosCopyWith<$Res>? get movieVideos {
    if (_value.movieVideos == null) {
      return null;
    }

    return $MovieVideosCopyWith<$Res>(_value.movieVideos!, (value) {
      return _then(_value.copyWith(movieVideos: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MovieReviewsCopyWith<$Res>? get movieReviews {
    if (_value.movieReviews == null) {
      return null;
    }

    return $MovieReviewsCopyWith<$Res>(_value.movieReviews!, (value) {
      return _then(_value.copyWith(movieReviews: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MovieSimilarCopyWith<$Res>? get movieSimilar {
    if (_value.movieSimilar == null) {
      return null;
    }

    return $MovieSimilarCopyWith<$Res>(_value.movieSimilar!, (value) {
      return _then(_value.copyWith(movieSimilar: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MovieResultImplCopyWith<$Res>
    implements $MovieResultCopyWith<$Res> {
  factory _$$MovieResultImplCopyWith(
          _$MovieResultImpl value, $Res Function(_$MovieResultImpl) then) =
      __$$MovieResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? adult,
      @JsonKey(name: 'backdrop_path') String? backdropPath,
      @JsonKey(name: 'belongs_to_collection')
      BelongsToCollection? belongsToCollection,
      int? budget,
      List<Genre>? genres,
      String? homepage,
      int? id,
      @JsonKey(name: 'imdb_id') String? imdbId,
      @JsonKey(name: 'original_language') String? originalLanguage,
      @JsonKey(name: 'original_title') String? originalTitle,
      String? overview,
      double? popularity,
      @JsonKey(name: 'poster_path') String? posterPath,
      @JsonKey(name: 'production_companies')
      List<ProductionCompany>? productionCompanies,
      @JsonKey(name: 'production_countries')
      List<ProductionCountry>? productionCountries,
      @JsonKey(name: 'release_date') String? releaseDate,
      int? revenue,
      int? runtime,
      @JsonKey(name: 'spoken_languages') List<SpokenLanguage>? spokenLanguages,
      String? status,
      String? tagline,
      String? title,
      bool? video,
      @JsonKey(name: 'vote_average') double? voteAverage,
      @JsonKey(name: 'vote_count') int? voteCount,
      @JsonKey(name: 'credits') MovieCredits? movieCredits,
      @JsonKey(name: 'images') MovieImages? movieImages,
      @JsonKey(name: 'videos') MovieVideos? movieVideos,
      @JsonKey(name: 'reviews') MovieReviews? movieReviews,
      @JsonKey(name: 'similar') MovieSimilar? movieSimilar});

  @override
  $BelongsToCollectionCopyWith<$Res>? get belongsToCollection;
  @override
  $MovieCreditsCopyWith<$Res>? get movieCredits;
  @override
  $MovieImagesCopyWith<$Res>? get movieImages;
  @override
  $MovieVideosCopyWith<$Res>? get movieVideos;
  @override
  $MovieReviewsCopyWith<$Res>? get movieReviews;
  @override
  $MovieSimilarCopyWith<$Res>? get movieSimilar;
}

/// @nodoc
class __$$MovieResultImplCopyWithImpl<$Res>
    extends _$MovieResultCopyWithImpl<$Res, _$MovieResultImpl>
    implements _$$MovieResultImplCopyWith<$Res> {
  __$$MovieResultImplCopyWithImpl(
      _$MovieResultImpl _value, $Res Function(_$MovieResultImpl) _then)
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
    Object? movieCredits = freezed,
    Object? movieImages = freezed,
    Object? movieVideos = freezed,
    Object? movieReviews = freezed,
    Object? movieSimilar = freezed,
  }) {
    return _then(_$MovieResultImpl(
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
              as BelongsToCollection?,
      budget: freezed == budget
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as int?,
      genres: freezed == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genre>?,
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
              as List<ProductionCompany>?,
      productionCountries: freezed == productionCountries
          ? _value._productionCountries
          : productionCountries // ignore: cast_nullable_to_non_nullable
              as List<ProductionCountry>?,
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
              as List<SpokenLanguage>?,
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
      movieCredits: freezed == movieCredits
          ? _value.movieCredits
          : movieCredits // ignore: cast_nullable_to_non_nullable
              as MovieCredits?,
      movieImages: freezed == movieImages
          ? _value.movieImages
          : movieImages // ignore: cast_nullable_to_non_nullable
              as MovieImages?,
      movieVideos: freezed == movieVideos
          ? _value.movieVideos
          : movieVideos // ignore: cast_nullable_to_non_nullable
              as MovieVideos?,
      movieReviews: freezed == movieReviews
          ? _value.movieReviews
          : movieReviews // ignore: cast_nullable_to_non_nullable
              as MovieReviews?,
      movieSimilar: freezed == movieSimilar
          ? _value.movieSimilar
          : movieSimilar // ignore: cast_nullable_to_non_nullable
              as MovieSimilar?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieResultImpl implements _MovieResult {
  _$MovieResultImpl(
      {this.adult,
      @JsonKey(name: 'backdrop_path') this.backdropPath,
      @JsonKey(name: 'belongs_to_collection') this.belongsToCollection,
      this.budget,
      final List<Genre>? genres,
      this.homepage,
      this.id,
      @JsonKey(name: 'imdb_id') this.imdbId,
      @JsonKey(name: 'original_language') this.originalLanguage,
      @JsonKey(name: 'original_title') this.originalTitle,
      this.overview,
      this.popularity,
      @JsonKey(name: 'poster_path') this.posterPath,
      @JsonKey(name: 'production_companies')
      final List<ProductionCompany>? productionCompanies,
      @JsonKey(name: 'production_countries')
      final List<ProductionCountry>? productionCountries,
      @JsonKey(name: 'release_date') this.releaseDate,
      this.revenue,
      this.runtime,
      @JsonKey(name: 'spoken_languages')
      final List<SpokenLanguage>? spokenLanguages,
      this.status,
      this.tagline,
      this.title,
      this.video,
      @JsonKey(name: 'vote_average') this.voteAverage,
      @JsonKey(name: 'vote_count') this.voteCount,
      @JsonKey(name: 'credits') this.movieCredits,
      @JsonKey(name: 'images') this.movieImages,
      @JsonKey(name: 'videos') this.movieVideos,
      @JsonKey(name: 'reviews') this.movieReviews,
      @JsonKey(name: 'similar') this.movieSimilar})
      : _genres = genres,
        _productionCompanies = productionCompanies,
        _productionCountries = productionCountries,
        _spokenLanguages = spokenLanguages;

  factory _$MovieResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieResultImplFromJson(json);

  @override
  final bool? adult;
  @override
  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;
  @override
  @JsonKey(name: 'belongs_to_collection')
  final BelongsToCollection? belongsToCollection;
  @override
  final int? budget;
  final List<Genre>? _genres;
  @override
  List<Genre>? get genres {
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
  final List<ProductionCompany>? _productionCompanies;
  @override
  @JsonKey(name: 'production_companies')
  List<ProductionCompany>? get productionCompanies {
    final value = _productionCompanies;
    if (value == null) return null;
    if (_productionCompanies is EqualUnmodifiableListView)
      return _productionCompanies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ProductionCountry>? _productionCountries;
  @override
  @JsonKey(name: 'production_countries')
  List<ProductionCountry>? get productionCountries {
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
  final List<SpokenLanguage>? _spokenLanguages;
  @override
  @JsonKey(name: 'spoken_languages')
  List<SpokenLanguage>? get spokenLanguages {
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
  @JsonKey(name: 'credits')
  final MovieCredits? movieCredits;
  @override
  @JsonKey(name: 'images')
  final MovieImages? movieImages;
  @override
  @JsonKey(name: 'videos')
  final MovieVideos? movieVideos;
  @override
  @JsonKey(name: 'reviews')
  final MovieReviews? movieReviews;
  @override
  @JsonKey(name: 'similar')
  final MovieSimilar? movieSimilar;

  @override
  String toString() {
    return 'MovieResult(adult: $adult, backdropPath: $backdropPath, belongsToCollection: $belongsToCollection, budget: $budget, genres: $genres, homepage: $homepage, id: $id, imdbId: $imdbId, originalLanguage: $originalLanguage, originalTitle: $originalTitle, overview: $overview, popularity: $popularity, posterPath: $posterPath, productionCompanies: $productionCompanies, productionCountries: $productionCountries, releaseDate: $releaseDate, revenue: $revenue, runtime: $runtime, spokenLanguages: $spokenLanguages, status: $status, tagline: $tagline, title: $title, video: $video, voteAverage: $voteAverage, voteCount: $voteCount, movieCredits: $movieCredits, movieImages: $movieImages, movieVideos: $movieVideos, movieReviews: $movieReviews, movieSimilar: $movieSimilar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieResultImpl &&
            (identical(other.adult, adult) || other.adult == adult) &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath) &&
            (identical(other.belongsToCollection, belongsToCollection) ||
                other.belongsToCollection == belongsToCollection) &&
            (identical(other.budget, budget) || other.budget == budget) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            (identical(other.homepage, homepage) ||
                other.homepage == homepage) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imdbId, imdbId) || other.imdbId == imdbId) &&
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
                other.voteCount == voteCount) &&
            (identical(other.movieCredits, movieCredits) ||
                other.movieCredits == movieCredits) &&
            (identical(other.movieImages, movieImages) ||
                other.movieImages == movieImages) &&
            (identical(other.movieVideos, movieVideos) ||
                other.movieVideos == movieVideos) &&
            (identical(other.movieReviews, movieReviews) ||
                other.movieReviews == movieReviews) &&
            (identical(other.movieSimilar, movieSimilar) ||
                other.movieSimilar == movieSimilar));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        adult,
        backdropPath,
        belongsToCollection,
        budget,
        const DeepCollectionEquality().hash(_genres),
        homepage,
        id,
        imdbId,
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
        voteCount,
        movieCredits,
        movieImages,
        movieVideos,
        movieReviews,
        movieSimilar
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieResultImplCopyWith<_$MovieResultImpl> get copyWith =>
      __$$MovieResultImplCopyWithImpl<_$MovieResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieResultImplToJson(
      this,
    );
  }
}

abstract class _MovieResult implements MovieResult {
  factory _MovieResult(
          {final bool? adult,
          @JsonKey(name: 'backdrop_path') final String? backdropPath,
          @JsonKey(name: 'belongs_to_collection')
          final BelongsToCollection? belongsToCollection,
          final int? budget,
          final List<Genre>? genres,
          final String? homepage,
          final int? id,
          @JsonKey(name: 'imdb_id') final String? imdbId,
          @JsonKey(name: 'original_language') final String? originalLanguage,
          @JsonKey(name: 'original_title') final String? originalTitle,
          final String? overview,
          final double? popularity,
          @JsonKey(name: 'poster_path') final String? posterPath,
          @JsonKey(name: 'production_companies')
          final List<ProductionCompany>? productionCompanies,
          @JsonKey(name: 'production_countries')
          final List<ProductionCountry>? productionCountries,
          @JsonKey(name: 'release_date') final String? releaseDate,
          final int? revenue,
          final int? runtime,
          @JsonKey(name: 'spoken_languages')
          final List<SpokenLanguage>? spokenLanguages,
          final String? status,
          final String? tagline,
          final String? title,
          final bool? video,
          @JsonKey(name: 'vote_average') final double? voteAverage,
          @JsonKey(name: 'vote_count') final int? voteCount,
          @JsonKey(name: 'credits') final MovieCredits? movieCredits,
          @JsonKey(name: 'images') final MovieImages? movieImages,
          @JsonKey(name: 'videos') final MovieVideos? movieVideos,
          @JsonKey(name: 'reviews') final MovieReviews? movieReviews,
          @JsonKey(name: 'similar') final MovieSimilar? movieSimilar}) =
      _$MovieResultImpl;

  factory _MovieResult.fromJson(Map<String, dynamic> json) =
      _$MovieResultImpl.fromJson;

  @override
  bool? get adult;
  @override
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath;
  @override
  @JsonKey(name: 'belongs_to_collection')
  BelongsToCollection? get belongsToCollection;
  @override
  int? get budget;
  @override
  List<Genre>? get genres;
  @override
  String? get homepage;
  @override
  int? get id;
  @override
  @JsonKey(name: 'imdb_id')
  String? get imdbId;
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
  List<ProductionCompany>? get productionCompanies;
  @override
  @JsonKey(name: 'production_countries')
  List<ProductionCountry>? get productionCountries;
  @override
  @JsonKey(name: 'release_date')
  String? get releaseDate;
  @override
  int? get revenue;
  @override
  int? get runtime;
  @override
  @JsonKey(name: 'spoken_languages')
  List<SpokenLanguage>? get spokenLanguages;
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
  @JsonKey(name: 'credits')
  MovieCredits? get movieCredits;
  @override
  @JsonKey(name: 'images')
  MovieImages? get movieImages;
  @override
  @JsonKey(name: 'videos')
  MovieVideos? get movieVideos;
  @override
  @JsonKey(name: 'reviews')
  MovieReviews? get movieReviews;
  @override
  @JsonKey(name: 'similar')
  MovieSimilar? get movieSimilar;
  @override
  @JsonKey(ignore: true)
  _$$MovieResultImplCopyWith<_$MovieResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
