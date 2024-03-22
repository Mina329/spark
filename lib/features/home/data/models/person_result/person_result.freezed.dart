// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'person_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PersonResult _$PersonResultFromJson(Map<String, dynamic> json) {
  return _PersonResult.fromJson(json);
}

/// @nodoc
mixin _$PersonResult {
  bool? get adult => throw _privateConstructorUsedError;
  @JsonKey(name: 'also_known_as')
  List<String>? get alsoKnownAs => throw _privateConstructorUsedError;
  String? get biography => throw _privateConstructorUsedError;
  String? get birthday => throw _privateConstructorUsedError;
  String? get deathday => throw _privateConstructorUsedError;
  int? get gender => throw _privateConstructorUsedError;
  String? get homepage => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'imdb_id')
  String? get imdbId => throw _privateConstructorUsedError;
  @JsonKey(name: 'known_for_department')
  String? get knownForDepartment => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'place_of_birth')
  String? get placeOfBirth => throw _privateConstructorUsedError;
  double? get popularity => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_path')
  String? get profilePath => throw _privateConstructorUsedError;
  @JsonKey(name: 'movie_credits')
  MovieCredits? get movieCredits => throw _privateConstructorUsedError;
  @JsonKey(name: 'tv_credits')
  TvCredits? get tvCredits => throw _privateConstructorUsedError;
  Images? get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonResultCopyWith<PersonResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonResultCopyWith<$Res> {
  factory $PersonResultCopyWith(
          PersonResult value, $Res Function(PersonResult) then) =
      _$PersonResultCopyWithImpl<$Res, PersonResult>;
  @useResult
  $Res call(
      {bool? adult,
      @JsonKey(name: 'also_known_as') List<String>? alsoKnownAs,
      String? biography,
      String? birthday,
      String? deathday,
      int? gender,
      String? homepage,
      int? id,
      @JsonKey(name: 'imdb_id') String? imdbId,
      @JsonKey(name: 'known_for_department') String? knownForDepartment,
      String? name,
      @JsonKey(name: 'place_of_birth') String? placeOfBirth,
      double? popularity,
      @JsonKey(name: 'profile_path') String? profilePath,
      @JsonKey(name: 'movie_credits') MovieCredits? movieCredits,
      @JsonKey(name: 'tv_credits') TvCredits? tvCredits,
      Images? images});

  $MovieCreditsCopyWith<$Res>? get movieCredits;
  $TvCreditsCopyWith<$Res>? get tvCredits;
  $ImagesCopyWith<$Res>? get images;
}

/// @nodoc
class _$PersonResultCopyWithImpl<$Res, $Val extends PersonResult>
    implements $PersonResultCopyWith<$Res> {
  _$PersonResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = freezed,
    Object? alsoKnownAs = freezed,
    Object? biography = freezed,
    Object? birthday = freezed,
    Object? deathday = freezed,
    Object? gender = freezed,
    Object? homepage = freezed,
    Object? id = freezed,
    Object? imdbId = freezed,
    Object? knownForDepartment = freezed,
    Object? name = freezed,
    Object? placeOfBirth = freezed,
    Object? popularity = freezed,
    Object? profilePath = freezed,
    Object? movieCredits = freezed,
    Object? tvCredits = freezed,
    Object? images = freezed,
  }) {
    return _then(_value.copyWith(
      adult: freezed == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool?,
      alsoKnownAs: freezed == alsoKnownAs
          ? _value.alsoKnownAs
          : alsoKnownAs // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      biography: freezed == biography
          ? _value.biography
          : biography // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
      deathday: freezed == deathday
          ? _value.deathday
          : deathday // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int?,
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
      knownForDepartment: freezed == knownForDepartment
          ? _value.knownForDepartment
          : knownForDepartment // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      placeOfBirth: freezed == placeOfBirth
          ? _value.placeOfBirth
          : placeOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: freezed == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double?,
      profilePath: freezed == profilePath
          ? _value.profilePath
          : profilePath // ignore: cast_nullable_to_non_nullable
              as String?,
      movieCredits: freezed == movieCredits
          ? _value.movieCredits
          : movieCredits // ignore: cast_nullable_to_non_nullable
              as MovieCredits?,
      tvCredits: freezed == tvCredits
          ? _value.tvCredits
          : tvCredits // ignore: cast_nullable_to_non_nullable
              as TvCredits?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as Images?,
    ) as $Val);
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
  $ImagesCopyWith<$Res>? get images {
    if (_value.images == null) {
      return null;
    }

    return $ImagesCopyWith<$Res>(_value.images!, (value) {
      return _then(_value.copyWith(images: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PersonResultImplCopyWith<$Res>
    implements $PersonResultCopyWith<$Res> {
  factory _$$PersonResultImplCopyWith(
          _$PersonResultImpl value, $Res Function(_$PersonResultImpl) then) =
      __$$PersonResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? adult,
      @JsonKey(name: 'also_known_as') List<String>? alsoKnownAs,
      String? biography,
      String? birthday,
      String? deathday,
      int? gender,
      String? homepage,
      int? id,
      @JsonKey(name: 'imdb_id') String? imdbId,
      @JsonKey(name: 'known_for_department') String? knownForDepartment,
      String? name,
      @JsonKey(name: 'place_of_birth') String? placeOfBirth,
      double? popularity,
      @JsonKey(name: 'profile_path') String? profilePath,
      @JsonKey(name: 'movie_credits') MovieCredits? movieCredits,
      @JsonKey(name: 'tv_credits') TvCredits? tvCredits,
      Images? images});

  @override
  $MovieCreditsCopyWith<$Res>? get movieCredits;
  @override
  $TvCreditsCopyWith<$Res>? get tvCredits;
  @override
  $ImagesCopyWith<$Res>? get images;
}

/// @nodoc
class __$$PersonResultImplCopyWithImpl<$Res>
    extends _$PersonResultCopyWithImpl<$Res, _$PersonResultImpl>
    implements _$$PersonResultImplCopyWith<$Res> {
  __$$PersonResultImplCopyWithImpl(
      _$PersonResultImpl _value, $Res Function(_$PersonResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = freezed,
    Object? alsoKnownAs = freezed,
    Object? biography = freezed,
    Object? birthday = freezed,
    Object? deathday = freezed,
    Object? gender = freezed,
    Object? homepage = freezed,
    Object? id = freezed,
    Object? imdbId = freezed,
    Object? knownForDepartment = freezed,
    Object? name = freezed,
    Object? placeOfBirth = freezed,
    Object? popularity = freezed,
    Object? profilePath = freezed,
    Object? movieCredits = freezed,
    Object? tvCredits = freezed,
    Object? images = freezed,
  }) {
    return _then(_$PersonResultImpl(
      adult: freezed == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool?,
      alsoKnownAs: freezed == alsoKnownAs
          ? _value._alsoKnownAs
          : alsoKnownAs // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      biography: freezed == biography
          ? _value.biography
          : biography // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
      deathday: freezed == deathday
          ? _value.deathday
          : deathday // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int?,
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
      knownForDepartment: freezed == knownForDepartment
          ? _value.knownForDepartment
          : knownForDepartment // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      placeOfBirth: freezed == placeOfBirth
          ? _value.placeOfBirth
          : placeOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: freezed == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double?,
      profilePath: freezed == profilePath
          ? _value.profilePath
          : profilePath // ignore: cast_nullable_to_non_nullable
              as String?,
      movieCredits: freezed == movieCredits
          ? _value.movieCredits
          : movieCredits // ignore: cast_nullable_to_non_nullable
              as MovieCredits?,
      tvCredits: freezed == tvCredits
          ? _value.tvCredits
          : tvCredits // ignore: cast_nullable_to_non_nullable
              as TvCredits?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as Images?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PersonResultImpl implements _PersonResult {
  _$PersonResultImpl(
      {this.adult,
      @JsonKey(name: 'also_known_as') final List<String>? alsoKnownAs,
      this.biography,
      this.birthday,
      this.deathday,
      this.gender,
      this.homepage,
      this.id,
      @JsonKey(name: 'imdb_id') this.imdbId,
      @JsonKey(name: 'known_for_department') this.knownForDepartment,
      this.name,
      @JsonKey(name: 'place_of_birth') this.placeOfBirth,
      this.popularity,
      @JsonKey(name: 'profile_path') this.profilePath,
      @JsonKey(name: 'movie_credits') this.movieCredits,
      @JsonKey(name: 'tv_credits') this.tvCredits,
      this.images})
      : _alsoKnownAs = alsoKnownAs;

  factory _$PersonResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$PersonResultImplFromJson(json);

  @override
  final bool? adult;
  final List<String>? _alsoKnownAs;
  @override
  @JsonKey(name: 'also_known_as')
  List<String>? get alsoKnownAs {
    final value = _alsoKnownAs;
    if (value == null) return null;
    if (_alsoKnownAs is EqualUnmodifiableListView) return _alsoKnownAs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? biography;
  @override
  final String? birthday;
  @override
  final String? deathday;
  @override
  final int? gender;
  @override
  final String? homepage;
  @override
  final int? id;
  @override
  @JsonKey(name: 'imdb_id')
  final String? imdbId;
  @override
  @JsonKey(name: 'known_for_department')
  final String? knownForDepartment;
  @override
  final String? name;
  @override
  @JsonKey(name: 'place_of_birth')
  final String? placeOfBirth;
  @override
  final double? popularity;
  @override
  @JsonKey(name: 'profile_path')
  final String? profilePath;
  @override
  @JsonKey(name: 'movie_credits')
  final MovieCredits? movieCredits;
  @override
  @JsonKey(name: 'tv_credits')
  final TvCredits? tvCredits;
  @override
  final Images? images;

  @override
  String toString() {
    return 'PersonResult(adult: $adult, alsoKnownAs: $alsoKnownAs, biography: $biography, birthday: $birthday, deathday: $deathday, gender: $gender, homepage: $homepage, id: $id, imdbId: $imdbId, knownForDepartment: $knownForDepartment, name: $name, placeOfBirth: $placeOfBirth, popularity: $popularity, profilePath: $profilePath, movieCredits: $movieCredits, tvCredits: $tvCredits, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonResultImpl &&
            (identical(other.adult, adult) || other.adult == adult) &&
            const DeepCollectionEquality()
                .equals(other._alsoKnownAs, _alsoKnownAs) &&
            (identical(other.biography, biography) ||
                other.biography == biography) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.deathday, deathday) ||
                other.deathday == deathday) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.homepage, homepage) ||
                other.homepage == homepage) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imdbId, imdbId) || other.imdbId == imdbId) &&
            (identical(other.knownForDepartment, knownForDepartment) ||
                other.knownForDepartment == knownForDepartment) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.placeOfBirth, placeOfBirth) ||
                other.placeOfBirth == placeOfBirth) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.profilePath, profilePath) ||
                other.profilePath == profilePath) &&
            (identical(other.movieCredits, movieCredits) ||
                other.movieCredits == movieCredits) &&
            (identical(other.tvCredits, tvCredits) ||
                other.tvCredits == tvCredits) &&
            (identical(other.images, images) || other.images == images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      adult,
      const DeepCollectionEquality().hash(_alsoKnownAs),
      biography,
      birthday,
      deathday,
      gender,
      homepage,
      id,
      imdbId,
      knownForDepartment,
      name,
      placeOfBirth,
      popularity,
      profilePath,
      movieCredits,
      tvCredits,
      images);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PersonResultImplCopyWith<_$PersonResultImpl> get copyWith =>
      __$$PersonResultImplCopyWithImpl<_$PersonResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PersonResultImplToJson(
      this,
    );
  }
}

abstract class _PersonResult implements PersonResult {
  factory _PersonResult(
      {final bool? adult,
      @JsonKey(name: 'also_known_as') final List<String>? alsoKnownAs,
      final String? biography,
      final String? birthday,
      final String? deathday,
      final int? gender,
      final String? homepage,
      final int? id,
      @JsonKey(name: 'imdb_id') final String? imdbId,
      @JsonKey(name: 'known_for_department') final String? knownForDepartment,
      final String? name,
      @JsonKey(name: 'place_of_birth') final String? placeOfBirth,
      final double? popularity,
      @JsonKey(name: 'profile_path') final String? profilePath,
      @JsonKey(name: 'movie_credits') final MovieCredits? movieCredits,
      @JsonKey(name: 'tv_credits') final TvCredits? tvCredits,
      final Images? images}) = _$PersonResultImpl;

  factory _PersonResult.fromJson(Map<String, dynamic> json) =
      _$PersonResultImpl.fromJson;

  @override
  bool? get adult;
  @override
  @JsonKey(name: 'also_known_as')
  List<String>? get alsoKnownAs;
  @override
  String? get biography;
  @override
  String? get birthday;
  @override
  String? get deathday;
  @override
  int? get gender;
  @override
  String? get homepage;
  @override
  int? get id;
  @override
  @JsonKey(name: 'imdb_id')
  String? get imdbId;
  @override
  @JsonKey(name: 'known_for_department')
  String? get knownForDepartment;
  @override
  String? get name;
  @override
  @JsonKey(name: 'place_of_birth')
  String? get placeOfBirth;
  @override
  double? get popularity;
  @override
  @JsonKey(name: 'profile_path')
  String? get profilePath;
  @override
  @JsonKey(name: 'movie_credits')
  MovieCredits? get movieCredits;
  @override
  @JsonKey(name: 'tv_credits')
  TvCredits? get tvCredits;
  @override
  Images? get images;
  @override
  @JsonKey(ignore: true)
  _$$PersonResultImplCopyWith<_$PersonResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
