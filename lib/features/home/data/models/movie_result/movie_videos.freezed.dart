// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_videos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MovieVideos _$MovieVideosFromJson(Map<String, dynamic> json) {
  return _MovieVideos.fromJson(json);
}

/// @nodoc
mixin _$MovieVideos {
  @JsonKey(name: 'results')
  List<MovieVideosResult>? get movieVideosResults =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieVideosCopyWith<MovieVideos> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieVideosCopyWith<$Res> {
  factory $MovieVideosCopyWith(
          MovieVideos value, $Res Function(MovieVideos) then) =
      _$MovieVideosCopyWithImpl<$Res, MovieVideos>;
  @useResult
  $Res call(
      {@JsonKey(name: 'results') List<MovieVideosResult>? movieVideosResults});
}

/// @nodoc
class _$MovieVideosCopyWithImpl<$Res, $Val extends MovieVideos>
    implements $MovieVideosCopyWith<$Res> {
  _$MovieVideosCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieVideosResults = freezed,
  }) {
    return _then(_value.copyWith(
      movieVideosResults: freezed == movieVideosResults
          ? _value.movieVideosResults
          : movieVideosResults // ignore: cast_nullable_to_non_nullable
              as List<MovieVideosResult>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieVideosImplCopyWith<$Res>
    implements $MovieVideosCopyWith<$Res> {
  factory _$$MovieVideosImplCopyWith(
          _$MovieVideosImpl value, $Res Function(_$MovieVideosImpl) then) =
      __$$MovieVideosImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'results') List<MovieVideosResult>? movieVideosResults});
}

/// @nodoc
class __$$MovieVideosImplCopyWithImpl<$Res>
    extends _$MovieVideosCopyWithImpl<$Res, _$MovieVideosImpl>
    implements _$$MovieVideosImplCopyWith<$Res> {
  __$$MovieVideosImplCopyWithImpl(
      _$MovieVideosImpl _value, $Res Function(_$MovieVideosImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieVideosResults = freezed,
  }) {
    return _then(_$MovieVideosImpl(
      movieVideosResults: freezed == movieVideosResults
          ? _value._movieVideosResults
          : movieVideosResults // ignore: cast_nullable_to_non_nullable
              as List<MovieVideosResult>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieVideosImpl implements _MovieVideos {
  _$MovieVideosImpl(
      {@JsonKey(name: 'results')
      final List<MovieVideosResult>? movieVideosResults})
      : _movieVideosResults = movieVideosResults;

  factory _$MovieVideosImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieVideosImplFromJson(json);

  final List<MovieVideosResult>? _movieVideosResults;
  @override
  @JsonKey(name: 'results')
  List<MovieVideosResult>? get movieVideosResults {
    final value = _movieVideosResults;
    if (value == null) return null;
    if (_movieVideosResults is EqualUnmodifiableListView)
      return _movieVideosResults;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MovieVideos(movieVideosResults: $movieVideosResults)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieVideosImpl &&
            const DeepCollectionEquality()
                .equals(other._movieVideosResults, _movieVideosResults));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_movieVideosResults));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieVideosImplCopyWith<_$MovieVideosImpl> get copyWith =>
      __$$MovieVideosImplCopyWithImpl<_$MovieVideosImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieVideosImplToJson(
      this,
    );
  }
}

abstract class _MovieVideos implements MovieVideos {
  factory _MovieVideos(
      {@JsonKey(name: 'results')
      final List<MovieVideosResult>? movieVideosResults}) = _$MovieVideosImpl;

  factory _MovieVideos.fromJson(Map<String, dynamic> json) =
      _$MovieVideosImpl.fromJson;

  @override
  @JsonKey(name: 'results')
  List<MovieVideosResult>? get movieVideosResults;
  @override
  @JsonKey(ignore: true)
  _$$MovieVideosImplCopyWith<_$MovieVideosImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
