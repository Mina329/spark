// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tv_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TvResult _$TvResultFromJson(Map<String, dynamic> json) {
  return _TvResult.fromJson(json);
}

/// @nodoc
mixin _$TvResult {
  bool? get adult => throw _privateConstructorUsedError;
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_by')
  List<CreatedBy>? get createdBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'episode_run_time')
  List<dynamic>? get episodeRunTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_air_date')
  String? get firstAirDate => throw _privateConstructorUsedError;
  List<Genre>? get genres => throw _privateConstructorUsedError;
  String? get homepage => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'in_production')
  bool? get inProduction => throw _privateConstructorUsedError;
  List<String>? get languages => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_air_date')
  String? get lastAirDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_episode_to_air')
  LastEpisodeToAir? get lastEpisodeToAir => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'next_episode_to_air')
  dynamic get nextEpisodeToAir => throw _privateConstructorUsedError;
  List<Network>? get networks => throw _privateConstructorUsedError;
  @JsonKey(name: 'number_of_episodes')
  int? get numberOfEpisodes => throw _privateConstructorUsedError;
  @JsonKey(name: 'number_of_seasons')
  int? get numberOfSeasons => throw _privateConstructorUsedError;
  @JsonKey(name: 'origin_country')
  List<String>? get originCountry => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_language')
  String? get originalLanguage => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_name')
  String? get originalName => throw _privateConstructorUsedError;
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
  List<Season>? get seasons => throw _privateConstructorUsedError;
  @JsonKey(name: 'spoken_languages')
  List<SpokenLanguage>? get spokenLanguages =>
      throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get tagline => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_average')
  double? get voteAverage => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_count')
  int? get voteCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'credits')
  TvCredits? get tvCredits => throw _privateConstructorUsedError;
  @JsonKey(name: 'images')
  TvImages? get tvImages => throw _privateConstructorUsedError;
  @JsonKey(name: 'videos')
  TvVideos? get tvVideos => throw _privateConstructorUsedError;
  @JsonKey(name: 'similar')
  TvSimilar? get tvSimilar => throw _privateConstructorUsedError;
  @JsonKey(name: 'reviews')
  TvReviews? get tvReviews => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TvResultCopyWith<TvResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TvResultCopyWith<$Res> {
  factory $TvResultCopyWith(TvResult value, $Res Function(TvResult) then) =
      _$TvResultCopyWithImpl<$Res, TvResult>;
  @useResult
  $Res call(
      {bool? adult,
      @JsonKey(name: 'backdrop_path') String? backdropPath,
      @JsonKey(name: 'created_by') List<CreatedBy>? createdBy,
      @JsonKey(name: 'episode_run_time') List<dynamic>? episodeRunTime,
      @JsonKey(name: 'first_air_date') String? firstAirDate,
      List<Genre>? genres,
      String? homepage,
      int? id,
      @JsonKey(name: 'in_production') bool? inProduction,
      List<String>? languages,
      @JsonKey(name: 'last_air_date') String? lastAirDate,
      @JsonKey(name: 'last_episode_to_air') LastEpisodeToAir? lastEpisodeToAir,
      String? name,
      @JsonKey(name: 'next_episode_to_air') dynamic nextEpisodeToAir,
      List<Network>? networks,
      @JsonKey(name: 'number_of_episodes') int? numberOfEpisodes,
      @JsonKey(name: 'number_of_seasons') int? numberOfSeasons,
      @JsonKey(name: 'origin_country') List<String>? originCountry,
      @JsonKey(name: 'original_language') String? originalLanguage,
      @JsonKey(name: 'original_name') String? originalName,
      String? overview,
      double? popularity,
      @JsonKey(name: 'poster_path') String? posterPath,
      @JsonKey(name: 'production_companies')
      List<ProductionCompany>? productionCompanies,
      @JsonKey(name: 'production_countries')
      List<ProductionCountry>? productionCountries,
      List<Season>? seasons,
      @JsonKey(name: 'spoken_languages') List<SpokenLanguage>? spokenLanguages,
      String? status,
      String? tagline,
      String? type,
      @JsonKey(name: 'vote_average') double? voteAverage,
      @JsonKey(name: 'vote_count') int? voteCount,
      @JsonKey(name: 'credits') TvCredits? tvCredits,
      @JsonKey(name: 'images') TvImages? tvImages,
      @JsonKey(name: 'videos') TvVideos? tvVideos,
      @JsonKey(name: 'similar') TvSimilar? tvSimilar,
      @JsonKey(name: 'reviews') TvReviews? tvReviews});

  $LastEpisodeToAirCopyWith<$Res>? get lastEpisodeToAir;
  $TvCreditsCopyWith<$Res>? get tvCredits;
  $TvImagesCopyWith<$Res>? get tvImages;
  $TvVideosCopyWith<$Res>? get tvVideos;
  $TvSimilarCopyWith<$Res>? get tvSimilar;
  $TvReviewsCopyWith<$Res>? get tvReviews;
}

/// @nodoc
class _$TvResultCopyWithImpl<$Res, $Val extends TvResult>
    implements $TvResultCopyWith<$Res> {
  _$TvResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = freezed,
    Object? backdropPath = freezed,
    Object? createdBy = freezed,
    Object? episodeRunTime = freezed,
    Object? firstAirDate = freezed,
    Object? genres = freezed,
    Object? homepage = freezed,
    Object? id = freezed,
    Object? inProduction = freezed,
    Object? languages = freezed,
    Object? lastAirDate = freezed,
    Object? lastEpisodeToAir = freezed,
    Object? name = freezed,
    Object? nextEpisodeToAir = freezed,
    Object? networks = freezed,
    Object? numberOfEpisodes = freezed,
    Object? numberOfSeasons = freezed,
    Object? originCountry = freezed,
    Object? originalLanguage = freezed,
    Object? originalName = freezed,
    Object? overview = freezed,
    Object? popularity = freezed,
    Object? posterPath = freezed,
    Object? productionCompanies = freezed,
    Object? productionCountries = freezed,
    Object? seasons = freezed,
    Object? spokenLanguages = freezed,
    Object? status = freezed,
    Object? tagline = freezed,
    Object? type = freezed,
    Object? voteAverage = freezed,
    Object? voteCount = freezed,
    Object? tvCredits = freezed,
    Object? tvImages = freezed,
    Object? tvVideos = freezed,
    Object? tvSimilar = freezed,
    Object? tvReviews = freezed,
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
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as List<CreatedBy>?,
      episodeRunTime: freezed == episodeRunTime
          ? _value.episodeRunTime
          : episodeRunTime // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      firstAirDate: freezed == firstAirDate
          ? _value.firstAirDate
          : firstAirDate // ignore: cast_nullable_to_non_nullable
              as String?,
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
      inProduction: freezed == inProduction
          ? _value.inProduction
          : inProduction // ignore: cast_nullable_to_non_nullable
              as bool?,
      languages: freezed == languages
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      lastAirDate: freezed == lastAirDate
          ? _value.lastAirDate
          : lastAirDate // ignore: cast_nullable_to_non_nullable
              as String?,
      lastEpisodeToAir: freezed == lastEpisodeToAir
          ? _value.lastEpisodeToAir
          : lastEpisodeToAir // ignore: cast_nullable_to_non_nullable
              as LastEpisodeToAir?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nextEpisodeToAir: freezed == nextEpisodeToAir
          ? _value.nextEpisodeToAir
          : nextEpisodeToAir // ignore: cast_nullable_to_non_nullable
              as dynamic,
      networks: freezed == networks
          ? _value.networks
          : networks // ignore: cast_nullable_to_non_nullable
              as List<Network>?,
      numberOfEpisodes: freezed == numberOfEpisodes
          ? _value.numberOfEpisodes
          : numberOfEpisodes // ignore: cast_nullable_to_non_nullable
              as int?,
      numberOfSeasons: freezed == numberOfSeasons
          ? _value.numberOfSeasons
          : numberOfSeasons // ignore: cast_nullable_to_non_nullable
              as int?,
      originCountry: freezed == originCountry
          ? _value.originCountry
          : originCountry // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      originalLanguage: freezed == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      originalName: freezed == originalName
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
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
      seasons: freezed == seasons
          ? _value.seasons
          : seasons // ignore: cast_nullable_to_non_nullable
              as List<Season>?,
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
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      voteAverage: freezed == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      voteCount: freezed == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int?,
      tvCredits: freezed == tvCredits
          ? _value.tvCredits
          : tvCredits // ignore: cast_nullable_to_non_nullable
              as TvCredits?,
      tvImages: freezed == tvImages
          ? _value.tvImages
          : tvImages // ignore: cast_nullable_to_non_nullable
              as TvImages?,
      tvVideos: freezed == tvVideos
          ? _value.tvVideos
          : tvVideos // ignore: cast_nullable_to_non_nullable
              as TvVideos?,
      tvSimilar: freezed == tvSimilar
          ? _value.tvSimilar
          : tvSimilar // ignore: cast_nullable_to_non_nullable
              as TvSimilar?,
      tvReviews: freezed == tvReviews
          ? _value.tvReviews
          : tvReviews // ignore: cast_nullable_to_non_nullable
              as TvReviews?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LastEpisodeToAirCopyWith<$Res>? get lastEpisodeToAir {
    if (_value.lastEpisodeToAir == null) {
      return null;
    }

    return $LastEpisodeToAirCopyWith<$Res>(_value.lastEpisodeToAir!, (value) {
      return _then(_value.copyWith(lastEpisodeToAir: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TvCreditsCopyWith<$Res>? get tvCredits {
    if (_value.tvCredits == null) {
      return null;
    }

    return $TvCreditsCopyWith<$Res>(_value.tvCredits!, (value) {
      return _then(_value.copyWith(tvCredits: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TvImagesCopyWith<$Res>? get tvImages {
    if (_value.tvImages == null) {
      return null;
    }

    return $TvImagesCopyWith<$Res>(_value.tvImages!, (value) {
      return _then(_value.copyWith(tvImages: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TvVideosCopyWith<$Res>? get tvVideos {
    if (_value.tvVideos == null) {
      return null;
    }

    return $TvVideosCopyWith<$Res>(_value.tvVideos!, (value) {
      return _then(_value.copyWith(tvVideos: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TvSimilarCopyWith<$Res>? get tvSimilar {
    if (_value.tvSimilar == null) {
      return null;
    }

    return $TvSimilarCopyWith<$Res>(_value.tvSimilar!, (value) {
      return _then(_value.copyWith(tvSimilar: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TvReviewsCopyWith<$Res>? get tvReviews {
    if (_value.tvReviews == null) {
      return null;
    }

    return $TvReviewsCopyWith<$Res>(_value.tvReviews!, (value) {
      return _then(_value.copyWith(tvReviews: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TvResultImplCopyWith<$Res>
    implements $TvResultCopyWith<$Res> {
  factory _$$TvResultImplCopyWith(
          _$TvResultImpl value, $Res Function(_$TvResultImpl) then) =
      __$$TvResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? adult,
      @JsonKey(name: 'backdrop_path') String? backdropPath,
      @JsonKey(name: 'created_by') List<CreatedBy>? createdBy,
      @JsonKey(name: 'episode_run_time') List<dynamic>? episodeRunTime,
      @JsonKey(name: 'first_air_date') String? firstAirDate,
      List<Genre>? genres,
      String? homepage,
      int? id,
      @JsonKey(name: 'in_production') bool? inProduction,
      List<String>? languages,
      @JsonKey(name: 'last_air_date') String? lastAirDate,
      @JsonKey(name: 'last_episode_to_air') LastEpisodeToAir? lastEpisodeToAir,
      String? name,
      @JsonKey(name: 'next_episode_to_air') dynamic nextEpisodeToAir,
      List<Network>? networks,
      @JsonKey(name: 'number_of_episodes') int? numberOfEpisodes,
      @JsonKey(name: 'number_of_seasons') int? numberOfSeasons,
      @JsonKey(name: 'origin_country') List<String>? originCountry,
      @JsonKey(name: 'original_language') String? originalLanguage,
      @JsonKey(name: 'original_name') String? originalName,
      String? overview,
      double? popularity,
      @JsonKey(name: 'poster_path') String? posterPath,
      @JsonKey(name: 'production_companies')
      List<ProductionCompany>? productionCompanies,
      @JsonKey(name: 'production_countries')
      List<ProductionCountry>? productionCountries,
      List<Season>? seasons,
      @JsonKey(name: 'spoken_languages') List<SpokenLanguage>? spokenLanguages,
      String? status,
      String? tagline,
      String? type,
      @JsonKey(name: 'vote_average') double? voteAverage,
      @JsonKey(name: 'vote_count') int? voteCount,
      @JsonKey(name: 'credits') TvCredits? tvCredits,
      @JsonKey(name: 'images') TvImages? tvImages,
      @JsonKey(name: 'videos') TvVideos? tvVideos,
      @JsonKey(name: 'similar') TvSimilar? tvSimilar,
      @JsonKey(name: 'reviews') TvReviews? tvReviews});

  @override
  $LastEpisodeToAirCopyWith<$Res>? get lastEpisodeToAir;
  @override
  $TvCreditsCopyWith<$Res>? get tvCredits;
  @override
  $TvImagesCopyWith<$Res>? get tvImages;
  @override
  $TvVideosCopyWith<$Res>? get tvVideos;
  @override
  $TvSimilarCopyWith<$Res>? get tvSimilar;
  @override
  $TvReviewsCopyWith<$Res>? get tvReviews;
}

/// @nodoc
class __$$TvResultImplCopyWithImpl<$Res>
    extends _$TvResultCopyWithImpl<$Res, _$TvResultImpl>
    implements _$$TvResultImplCopyWith<$Res> {
  __$$TvResultImplCopyWithImpl(
      _$TvResultImpl _value, $Res Function(_$TvResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = freezed,
    Object? backdropPath = freezed,
    Object? createdBy = freezed,
    Object? episodeRunTime = freezed,
    Object? firstAirDate = freezed,
    Object? genres = freezed,
    Object? homepage = freezed,
    Object? id = freezed,
    Object? inProduction = freezed,
    Object? languages = freezed,
    Object? lastAirDate = freezed,
    Object? lastEpisodeToAir = freezed,
    Object? name = freezed,
    Object? nextEpisodeToAir = freezed,
    Object? networks = freezed,
    Object? numberOfEpisodes = freezed,
    Object? numberOfSeasons = freezed,
    Object? originCountry = freezed,
    Object? originalLanguage = freezed,
    Object? originalName = freezed,
    Object? overview = freezed,
    Object? popularity = freezed,
    Object? posterPath = freezed,
    Object? productionCompanies = freezed,
    Object? productionCountries = freezed,
    Object? seasons = freezed,
    Object? spokenLanguages = freezed,
    Object? status = freezed,
    Object? tagline = freezed,
    Object? type = freezed,
    Object? voteAverage = freezed,
    Object? voteCount = freezed,
    Object? tvCredits = freezed,
    Object? tvImages = freezed,
    Object? tvVideos = freezed,
    Object? tvSimilar = freezed,
    Object? tvReviews = freezed,
  }) {
    return _then(_$TvResultImpl(
      adult: freezed == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool?,
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _value._createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as List<CreatedBy>?,
      episodeRunTime: freezed == episodeRunTime
          ? _value._episodeRunTime
          : episodeRunTime // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      firstAirDate: freezed == firstAirDate
          ? _value.firstAirDate
          : firstAirDate // ignore: cast_nullable_to_non_nullable
              as String?,
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
      inProduction: freezed == inProduction
          ? _value.inProduction
          : inProduction // ignore: cast_nullable_to_non_nullable
              as bool?,
      languages: freezed == languages
          ? _value._languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      lastAirDate: freezed == lastAirDate
          ? _value.lastAirDate
          : lastAirDate // ignore: cast_nullable_to_non_nullable
              as String?,
      lastEpisodeToAir: freezed == lastEpisodeToAir
          ? _value.lastEpisodeToAir
          : lastEpisodeToAir // ignore: cast_nullable_to_non_nullable
              as LastEpisodeToAir?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nextEpisodeToAir: freezed == nextEpisodeToAir
          ? _value.nextEpisodeToAir
          : nextEpisodeToAir // ignore: cast_nullable_to_non_nullable
              as dynamic,
      networks: freezed == networks
          ? _value._networks
          : networks // ignore: cast_nullable_to_non_nullable
              as List<Network>?,
      numberOfEpisodes: freezed == numberOfEpisodes
          ? _value.numberOfEpisodes
          : numberOfEpisodes // ignore: cast_nullable_to_non_nullable
              as int?,
      numberOfSeasons: freezed == numberOfSeasons
          ? _value.numberOfSeasons
          : numberOfSeasons // ignore: cast_nullable_to_non_nullable
              as int?,
      originCountry: freezed == originCountry
          ? _value._originCountry
          : originCountry // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      originalLanguage: freezed == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      originalName: freezed == originalName
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
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
      seasons: freezed == seasons
          ? _value._seasons
          : seasons // ignore: cast_nullable_to_non_nullable
              as List<Season>?,
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
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      voteAverage: freezed == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      voteCount: freezed == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int?,
      tvCredits: freezed == tvCredits
          ? _value.tvCredits
          : tvCredits // ignore: cast_nullable_to_non_nullable
              as TvCredits?,
      tvImages: freezed == tvImages
          ? _value.tvImages
          : tvImages // ignore: cast_nullable_to_non_nullable
              as TvImages?,
      tvVideos: freezed == tvVideos
          ? _value.tvVideos
          : tvVideos // ignore: cast_nullable_to_non_nullable
              as TvVideos?,
      tvSimilar: freezed == tvSimilar
          ? _value.tvSimilar
          : tvSimilar // ignore: cast_nullable_to_non_nullable
              as TvSimilar?,
      tvReviews: freezed == tvReviews
          ? _value.tvReviews
          : tvReviews // ignore: cast_nullable_to_non_nullable
              as TvReviews?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TvResultImpl implements _TvResult {
  _$TvResultImpl(
      {this.adult,
      @JsonKey(name: 'backdrop_path') this.backdropPath,
      @JsonKey(name: 'created_by') final List<CreatedBy>? createdBy,
      @JsonKey(name: 'episode_run_time') final List<dynamic>? episodeRunTime,
      @JsonKey(name: 'first_air_date') this.firstAirDate,
      final List<Genre>? genres,
      this.homepage,
      this.id,
      @JsonKey(name: 'in_production') this.inProduction,
      final List<String>? languages,
      @JsonKey(name: 'last_air_date') this.lastAirDate,
      @JsonKey(name: 'last_episode_to_air') this.lastEpisodeToAir,
      this.name,
      @JsonKey(name: 'next_episode_to_air') this.nextEpisodeToAir,
      final List<Network>? networks,
      @JsonKey(name: 'number_of_episodes') this.numberOfEpisodes,
      @JsonKey(name: 'number_of_seasons') this.numberOfSeasons,
      @JsonKey(name: 'origin_country') final List<String>? originCountry,
      @JsonKey(name: 'original_language') this.originalLanguage,
      @JsonKey(name: 'original_name') this.originalName,
      this.overview,
      this.popularity,
      @JsonKey(name: 'poster_path') this.posterPath,
      @JsonKey(name: 'production_companies')
      final List<ProductionCompany>? productionCompanies,
      @JsonKey(name: 'production_countries')
      final List<ProductionCountry>? productionCountries,
      final List<Season>? seasons,
      @JsonKey(name: 'spoken_languages')
      final List<SpokenLanguage>? spokenLanguages,
      this.status,
      this.tagline,
      this.type,
      @JsonKey(name: 'vote_average') this.voteAverage,
      @JsonKey(name: 'vote_count') this.voteCount,
      @JsonKey(name: 'credits') this.tvCredits,
      @JsonKey(name: 'images') this.tvImages,
      @JsonKey(name: 'videos') this.tvVideos,
      @JsonKey(name: 'similar') this.tvSimilar,
      @JsonKey(name: 'reviews') this.tvReviews})
      : _createdBy = createdBy,
        _episodeRunTime = episodeRunTime,
        _genres = genres,
        _languages = languages,
        _networks = networks,
        _originCountry = originCountry,
        _productionCompanies = productionCompanies,
        _productionCountries = productionCountries,
        _seasons = seasons,
        _spokenLanguages = spokenLanguages;

  factory _$TvResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$TvResultImplFromJson(json);

  @override
  final bool? adult;
  @override
  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;
  final List<CreatedBy>? _createdBy;
  @override
  @JsonKey(name: 'created_by')
  List<CreatedBy>? get createdBy {
    final value = _createdBy;
    if (value == null) return null;
    if (_createdBy is EqualUnmodifiableListView) return _createdBy;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _episodeRunTime;
  @override
  @JsonKey(name: 'episode_run_time')
  List<dynamic>? get episodeRunTime {
    final value = _episodeRunTime;
    if (value == null) return null;
    if (_episodeRunTime is EqualUnmodifiableListView) return _episodeRunTime;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'first_air_date')
  final String? firstAirDate;
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
  @JsonKey(name: 'in_production')
  final bool? inProduction;
  final List<String>? _languages;
  @override
  List<String>? get languages {
    final value = _languages;
    if (value == null) return null;
    if (_languages is EqualUnmodifiableListView) return _languages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'last_air_date')
  final String? lastAirDate;
  @override
  @JsonKey(name: 'last_episode_to_air')
  final LastEpisodeToAir? lastEpisodeToAir;
  @override
  final String? name;
  @override
  @JsonKey(name: 'next_episode_to_air')
  final dynamic nextEpisodeToAir;
  final List<Network>? _networks;
  @override
  List<Network>? get networks {
    final value = _networks;
    if (value == null) return null;
    if (_networks is EqualUnmodifiableListView) return _networks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'number_of_episodes')
  final int? numberOfEpisodes;
  @override
  @JsonKey(name: 'number_of_seasons')
  final int? numberOfSeasons;
  final List<String>? _originCountry;
  @override
  @JsonKey(name: 'origin_country')
  List<String>? get originCountry {
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
  @JsonKey(name: 'original_name')
  final String? originalName;
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

  final List<Season>? _seasons;
  @override
  List<Season>? get seasons {
    final value = _seasons;
    if (value == null) return null;
    if (_seasons is EqualUnmodifiableListView) return _seasons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

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
  final String? type;
  @override
  @JsonKey(name: 'vote_average')
  final double? voteAverage;
  @override
  @JsonKey(name: 'vote_count')
  final int? voteCount;
  @override
  @JsonKey(name: 'credits')
  final TvCredits? tvCredits;
  @override
  @JsonKey(name: 'images')
  final TvImages? tvImages;
  @override
  @JsonKey(name: 'videos')
  final TvVideos? tvVideos;
  @override
  @JsonKey(name: 'similar')
  final TvSimilar? tvSimilar;
  @override
  @JsonKey(name: 'reviews')
  final TvReviews? tvReviews;

  @override
  String toString() {
    return 'TvResult(adult: $adult, backdropPath: $backdropPath, createdBy: $createdBy, episodeRunTime: $episodeRunTime, firstAirDate: $firstAirDate, genres: $genres, homepage: $homepage, id: $id, inProduction: $inProduction, languages: $languages, lastAirDate: $lastAirDate, lastEpisodeToAir: $lastEpisodeToAir, name: $name, nextEpisodeToAir: $nextEpisodeToAir, networks: $networks, numberOfEpisodes: $numberOfEpisodes, numberOfSeasons: $numberOfSeasons, originCountry: $originCountry, originalLanguage: $originalLanguage, originalName: $originalName, overview: $overview, popularity: $popularity, posterPath: $posterPath, productionCompanies: $productionCompanies, productionCountries: $productionCountries, seasons: $seasons, spokenLanguages: $spokenLanguages, status: $status, tagline: $tagline, type: $type, voteAverage: $voteAverage, voteCount: $voteCount, tvCredits: $tvCredits, tvImages: $tvImages, tvVideos: $tvVideos, tvSimilar: $tvSimilar, tvReviews: $tvReviews)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TvResultImpl &&
            (identical(other.adult, adult) || other.adult == adult) &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath) &&
            const DeepCollectionEquality()
                .equals(other._createdBy, _createdBy) &&
            const DeepCollectionEquality()
                .equals(other._episodeRunTime, _episodeRunTime) &&
            (identical(other.firstAirDate, firstAirDate) ||
                other.firstAirDate == firstAirDate) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            (identical(other.homepage, homepage) ||
                other.homepage == homepage) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.inProduction, inProduction) ||
                other.inProduction == inProduction) &&
            const DeepCollectionEquality()
                .equals(other._languages, _languages) &&
            (identical(other.lastAirDate, lastAirDate) ||
                other.lastAirDate == lastAirDate) &&
            (identical(other.lastEpisodeToAir, lastEpisodeToAir) ||
                other.lastEpisodeToAir == lastEpisodeToAir) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other.nextEpisodeToAir, nextEpisodeToAir) &&
            const DeepCollectionEquality().equals(other._networks, _networks) &&
            (identical(other.numberOfEpisodes, numberOfEpisodes) ||
                other.numberOfEpisodes == numberOfEpisodes) &&
            (identical(other.numberOfSeasons, numberOfSeasons) ||
                other.numberOfSeasons == numberOfSeasons) &&
            const DeepCollectionEquality()
                .equals(other._originCountry, _originCountry) &&
            (identical(other.originalLanguage, originalLanguage) ||
                other.originalLanguage == originalLanguage) &&
            (identical(other.originalName, originalName) ||
                other.originalName == originalName) &&
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
            const DeepCollectionEquality().equals(other._seasons, _seasons) &&
            const DeepCollectionEquality()
                .equals(other._spokenLanguages, _spokenLanguages) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.tagline, tagline) || other.tagline == tagline) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            (identical(other.voteCount, voteCount) ||
                other.voteCount == voteCount) &&
            (identical(other.tvCredits, tvCredits) ||
                other.tvCredits == tvCredits) &&
            (identical(other.tvImages, tvImages) ||
                other.tvImages == tvImages) &&
            (identical(other.tvVideos, tvVideos) ||
                other.tvVideos == tvVideos) &&
            (identical(other.tvSimilar, tvSimilar) ||
                other.tvSimilar == tvSimilar) &&
            (identical(other.tvReviews, tvReviews) ||
                other.tvReviews == tvReviews));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        adult,
        backdropPath,
        const DeepCollectionEquality().hash(_createdBy),
        const DeepCollectionEquality().hash(_episodeRunTime),
        firstAirDate,
        const DeepCollectionEquality().hash(_genres),
        homepage,
        id,
        inProduction,
        const DeepCollectionEquality().hash(_languages),
        lastAirDate,
        lastEpisodeToAir,
        name,
        const DeepCollectionEquality().hash(nextEpisodeToAir),
        const DeepCollectionEquality().hash(_networks),
        numberOfEpisodes,
        numberOfSeasons,
        const DeepCollectionEquality().hash(_originCountry),
        originalLanguage,
        originalName,
        overview,
        popularity,
        posterPath,
        const DeepCollectionEquality().hash(_productionCompanies),
        const DeepCollectionEquality().hash(_productionCountries),
        const DeepCollectionEquality().hash(_seasons),
        const DeepCollectionEquality().hash(_spokenLanguages),
        status,
        tagline,
        type,
        voteAverage,
        voteCount,
        tvCredits,
        tvImages,
        tvVideos,
        tvSimilar,
        tvReviews
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TvResultImplCopyWith<_$TvResultImpl> get copyWith =>
      __$$TvResultImplCopyWithImpl<_$TvResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TvResultImplToJson(
      this,
    );
  }
}

abstract class _TvResult implements TvResult {
  factory _TvResult(
      {final bool? adult,
      @JsonKey(name: 'backdrop_path') final String? backdropPath,
      @JsonKey(name: 'created_by') final List<CreatedBy>? createdBy,
      @JsonKey(name: 'episode_run_time') final List<dynamic>? episodeRunTime,
      @JsonKey(name: 'first_air_date') final String? firstAirDate,
      final List<Genre>? genres,
      final String? homepage,
      final int? id,
      @JsonKey(name: 'in_production') final bool? inProduction,
      final List<String>? languages,
      @JsonKey(name: 'last_air_date') final String? lastAirDate,
      @JsonKey(name: 'last_episode_to_air')
      final LastEpisodeToAir? lastEpisodeToAir,
      final String? name,
      @JsonKey(name: 'next_episode_to_air') final dynamic nextEpisodeToAir,
      final List<Network>? networks,
      @JsonKey(name: 'number_of_episodes') final int? numberOfEpisodes,
      @JsonKey(name: 'number_of_seasons') final int? numberOfSeasons,
      @JsonKey(name: 'origin_country') final List<String>? originCountry,
      @JsonKey(name: 'original_language') final String? originalLanguage,
      @JsonKey(name: 'original_name') final String? originalName,
      final String? overview,
      final double? popularity,
      @JsonKey(name: 'poster_path') final String? posterPath,
      @JsonKey(name: 'production_companies')
      final List<ProductionCompany>? productionCompanies,
      @JsonKey(name: 'production_countries')
      final List<ProductionCountry>? productionCountries,
      final List<Season>? seasons,
      @JsonKey(name: 'spoken_languages')
      final List<SpokenLanguage>? spokenLanguages,
      final String? status,
      final String? tagline,
      final String? type,
      @JsonKey(name: 'vote_average') final double? voteAverage,
      @JsonKey(name: 'vote_count') final int? voteCount,
      @JsonKey(name: 'credits') final TvCredits? tvCredits,
      @JsonKey(name: 'images') final TvImages? tvImages,
      @JsonKey(name: 'videos') final TvVideos? tvVideos,
      @JsonKey(name: 'similar') final TvSimilar? tvSimilar,
      @JsonKey(name: 'reviews') final TvReviews? tvReviews}) = _$TvResultImpl;

  factory _TvResult.fromJson(Map<String, dynamic> json) =
      _$TvResultImpl.fromJson;

  @override
  bool? get adult;
  @override
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath;
  @override
  @JsonKey(name: 'created_by')
  List<CreatedBy>? get createdBy;
  @override
  @JsonKey(name: 'episode_run_time')
  List<dynamic>? get episodeRunTime;
  @override
  @JsonKey(name: 'first_air_date')
  String? get firstAirDate;
  @override
  List<Genre>? get genres;
  @override
  String? get homepage;
  @override
  int? get id;
  @override
  @JsonKey(name: 'in_production')
  bool? get inProduction;
  @override
  List<String>? get languages;
  @override
  @JsonKey(name: 'last_air_date')
  String? get lastAirDate;
  @override
  @JsonKey(name: 'last_episode_to_air')
  LastEpisodeToAir? get lastEpisodeToAir;
  @override
  String? get name;
  @override
  @JsonKey(name: 'next_episode_to_air')
  dynamic get nextEpisodeToAir;
  @override
  List<Network>? get networks;
  @override
  @JsonKey(name: 'number_of_episodes')
  int? get numberOfEpisodes;
  @override
  @JsonKey(name: 'number_of_seasons')
  int? get numberOfSeasons;
  @override
  @JsonKey(name: 'origin_country')
  List<String>? get originCountry;
  @override
  @JsonKey(name: 'original_language')
  String? get originalLanguage;
  @override
  @JsonKey(name: 'original_name')
  String? get originalName;
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
  List<Season>? get seasons;
  @override
  @JsonKey(name: 'spoken_languages')
  List<SpokenLanguage>? get spokenLanguages;
  @override
  String? get status;
  @override
  String? get tagline;
  @override
  String? get type;
  @override
  @JsonKey(name: 'vote_average')
  double? get voteAverage;
  @override
  @JsonKey(name: 'vote_count')
  int? get voteCount;
  @override
  @JsonKey(name: 'credits')
  TvCredits? get tvCredits;
  @override
  @JsonKey(name: 'images')
  TvImages? get tvImages;
  @override
  @JsonKey(name: 'videos')
  TvVideos? get tvVideos;
  @override
  @JsonKey(name: 'similar')
  TvSimilar? get tvSimilar;
  @override
  @JsonKey(name: 'reviews')
  TvReviews? get tvReviews;
  @override
  @JsonKey(ignore: true)
  _$$TvResultImplCopyWith<_$TvResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
