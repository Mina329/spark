// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_images.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MovieImages _$MovieImagesFromJson(Map<String, dynamic> json) {
  return _MovieImages.fromJson(json);
}

/// @nodoc
mixin _$MovieImages {
  @JsonKey(name: 'backdrops')
  List<MovieBackdrop>? get movieBackdrops => throw _privateConstructorUsedError;
  @JsonKey(name: 'logos')
  List<MovieLogo>? get movieLogos => throw _privateConstructorUsedError;
  @JsonKey(name: 'posters')
  List<MoviePoster>? get moviePosters => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieImagesCopyWith<MovieImages> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieImagesCopyWith<$Res> {
  factory $MovieImagesCopyWith(
          MovieImages value, $Res Function(MovieImages) then) =
      _$MovieImagesCopyWithImpl<$Res, MovieImages>;
  @useResult
  $Res call(
      {@JsonKey(name: 'backdrops') List<MovieBackdrop>? movieBackdrops,
      @JsonKey(name: 'logos') List<MovieLogo>? movieLogos,
      @JsonKey(name: 'posters') List<MoviePoster>? moviePosters});
}

/// @nodoc
class _$MovieImagesCopyWithImpl<$Res, $Val extends MovieImages>
    implements $MovieImagesCopyWith<$Res> {
  _$MovieImagesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieBackdrops = freezed,
    Object? movieLogos = freezed,
    Object? moviePosters = freezed,
  }) {
    return _then(_value.copyWith(
      movieBackdrops: freezed == movieBackdrops
          ? _value.movieBackdrops
          : movieBackdrops // ignore: cast_nullable_to_non_nullable
              as List<MovieBackdrop>?,
      movieLogos: freezed == movieLogos
          ? _value.movieLogos
          : movieLogos // ignore: cast_nullable_to_non_nullable
              as List<MovieLogo>?,
      moviePosters: freezed == moviePosters
          ? _value.moviePosters
          : moviePosters // ignore: cast_nullable_to_non_nullable
              as List<MoviePoster>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieImagesImplCopyWith<$Res>
    implements $MovieImagesCopyWith<$Res> {
  factory _$$MovieImagesImplCopyWith(
          _$MovieImagesImpl value, $Res Function(_$MovieImagesImpl) then) =
      __$$MovieImagesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'backdrops') List<MovieBackdrop>? movieBackdrops,
      @JsonKey(name: 'logos') List<MovieLogo>? movieLogos,
      @JsonKey(name: 'posters') List<MoviePoster>? moviePosters});
}

/// @nodoc
class __$$MovieImagesImplCopyWithImpl<$Res>
    extends _$MovieImagesCopyWithImpl<$Res, _$MovieImagesImpl>
    implements _$$MovieImagesImplCopyWith<$Res> {
  __$$MovieImagesImplCopyWithImpl(
      _$MovieImagesImpl _value, $Res Function(_$MovieImagesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieBackdrops = freezed,
    Object? movieLogos = freezed,
    Object? moviePosters = freezed,
  }) {
    return _then(_$MovieImagesImpl(
      movieBackdrops: freezed == movieBackdrops
          ? _value._movieBackdrops
          : movieBackdrops // ignore: cast_nullable_to_non_nullable
              as List<MovieBackdrop>?,
      movieLogos: freezed == movieLogos
          ? _value._movieLogos
          : movieLogos // ignore: cast_nullable_to_non_nullable
              as List<MovieLogo>?,
      moviePosters: freezed == moviePosters
          ? _value._moviePosters
          : moviePosters // ignore: cast_nullable_to_non_nullable
              as List<MoviePoster>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieImagesImpl implements _MovieImages {
  _$MovieImagesImpl(
      {@JsonKey(name: 'backdrops') final List<MovieBackdrop>? movieBackdrops,
      @JsonKey(name: 'logos') final List<MovieLogo>? movieLogos,
      @JsonKey(name: 'posters') final List<MoviePoster>? moviePosters})
      : _movieBackdrops = movieBackdrops,
        _movieLogos = movieLogos,
        _moviePosters = moviePosters;

  factory _$MovieImagesImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieImagesImplFromJson(json);

  final List<MovieBackdrop>? _movieBackdrops;
  @override
  @JsonKey(name: 'backdrops')
  List<MovieBackdrop>? get movieBackdrops {
    final value = _movieBackdrops;
    if (value == null) return null;
    if (_movieBackdrops is EqualUnmodifiableListView) return _movieBackdrops;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<MovieLogo>? _movieLogos;
  @override
  @JsonKey(name: 'logos')
  List<MovieLogo>? get movieLogos {
    final value = _movieLogos;
    if (value == null) return null;
    if (_movieLogos is EqualUnmodifiableListView) return _movieLogos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<MoviePoster>? _moviePosters;
  @override
  @JsonKey(name: 'posters')
  List<MoviePoster>? get moviePosters {
    final value = _moviePosters;
    if (value == null) return null;
    if (_moviePosters is EqualUnmodifiableListView) return _moviePosters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MovieImages(movieBackdrops: $movieBackdrops, movieLogos: $movieLogos, moviePosters: $moviePosters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieImagesImpl &&
            const DeepCollectionEquality()
                .equals(other._movieBackdrops, _movieBackdrops) &&
            const DeepCollectionEquality()
                .equals(other._movieLogos, _movieLogos) &&
            const DeepCollectionEquality()
                .equals(other._moviePosters, _moviePosters));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_movieBackdrops),
      const DeepCollectionEquality().hash(_movieLogos),
      const DeepCollectionEquality().hash(_moviePosters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieImagesImplCopyWith<_$MovieImagesImpl> get copyWith =>
      __$$MovieImagesImplCopyWithImpl<_$MovieImagesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieImagesImplToJson(
      this,
    );
  }
}

abstract class _MovieImages implements MovieImages {
  factory _MovieImages(
      {@JsonKey(name: 'backdrops') final List<MovieBackdrop>? movieBackdrops,
      @JsonKey(name: 'logos') final List<MovieLogo>? movieLogos,
      @JsonKey(name: 'posters')
      final List<MoviePoster>? moviePosters}) = _$MovieImagesImpl;

  factory _MovieImages.fromJson(Map<String, dynamic> json) =
      _$MovieImagesImpl.fromJson;

  @override
  @JsonKey(name: 'backdrops')
  List<MovieBackdrop>? get movieBackdrops;
  @override
  @JsonKey(name: 'logos')
  List<MovieLogo>? get movieLogos;
  @override
  @JsonKey(name: 'posters')
  List<MoviePoster>? get moviePosters;
  @override
  @JsonKey(ignore: true)
  _$$MovieImagesImplCopyWith<_$MovieImagesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
