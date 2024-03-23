// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_credits.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MovieCredits _$MovieCreditsFromJson(Map<String, dynamic> json) {
  return _MovieCredits.fromJson(json);
}

/// @nodoc
mixin _$MovieCredits {
  @JsonKey(name: 'cast')
  List<MovieCast>? get movieCast => throw _privateConstructorUsedError;
  @JsonKey(name: 'crew')
  List<MovieCrew>? get movieCrew => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieCreditsCopyWith<MovieCredits> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieCreditsCopyWith<$Res> {
  factory $MovieCreditsCopyWith(
          MovieCredits value, $Res Function(MovieCredits) then) =
      _$MovieCreditsCopyWithImpl<$Res, MovieCredits>;
  @useResult
  $Res call(
      {@JsonKey(name: 'cast') List<MovieCast>? movieCast,
      @JsonKey(name: 'crew') List<MovieCrew>? movieCrew});
}

/// @nodoc
class _$MovieCreditsCopyWithImpl<$Res, $Val extends MovieCredits>
    implements $MovieCreditsCopyWith<$Res> {
  _$MovieCreditsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieCast = freezed,
    Object? movieCrew = freezed,
  }) {
    return _then(_value.copyWith(
      movieCast: freezed == movieCast
          ? _value.movieCast
          : movieCast // ignore: cast_nullable_to_non_nullable
              as List<MovieCast>?,
      movieCrew: freezed == movieCrew
          ? _value.movieCrew
          : movieCrew // ignore: cast_nullable_to_non_nullable
              as List<MovieCrew>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieCreditsImplCopyWith<$Res>
    implements $MovieCreditsCopyWith<$Res> {
  factory _$$MovieCreditsImplCopyWith(
          _$MovieCreditsImpl value, $Res Function(_$MovieCreditsImpl) then) =
      __$$MovieCreditsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'cast') List<MovieCast>? movieCast,
      @JsonKey(name: 'crew') List<MovieCrew>? movieCrew});
}

/// @nodoc
class __$$MovieCreditsImplCopyWithImpl<$Res>
    extends _$MovieCreditsCopyWithImpl<$Res, _$MovieCreditsImpl>
    implements _$$MovieCreditsImplCopyWith<$Res> {
  __$$MovieCreditsImplCopyWithImpl(
      _$MovieCreditsImpl _value, $Res Function(_$MovieCreditsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieCast = freezed,
    Object? movieCrew = freezed,
  }) {
    return _then(_$MovieCreditsImpl(
      movieCast: freezed == movieCast
          ? _value._movieCast
          : movieCast // ignore: cast_nullable_to_non_nullable
              as List<MovieCast>?,
      movieCrew: freezed == movieCrew
          ? _value._movieCrew
          : movieCrew // ignore: cast_nullable_to_non_nullable
              as List<MovieCrew>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieCreditsImpl implements _MovieCredits {
  _$MovieCreditsImpl(
      {@JsonKey(name: 'cast') final List<MovieCast>? movieCast,
      @JsonKey(name: 'crew') final List<MovieCrew>? movieCrew})
      : _movieCast = movieCast,
        _movieCrew = movieCrew;

  factory _$MovieCreditsImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieCreditsImplFromJson(json);

  final List<MovieCast>? _movieCast;
  @override
  @JsonKey(name: 'cast')
  List<MovieCast>? get movieCast {
    final value = _movieCast;
    if (value == null) return null;
    if (_movieCast is EqualUnmodifiableListView) return _movieCast;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<MovieCrew>? _movieCrew;
  @override
  @JsonKey(name: 'crew')
  List<MovieCrew>? get movieCrew {
    final value = _movieCrew;
    if (value == null) return null;
    if (_movieCrew is EqualUnmodifiableListView) return _movieCrew;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MovieCredits(movieCast: $movieCast, movieCrew: $movieCrew)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieCreditsImpl &&
            const DeepCollectionEquality()
                .equals(other._movieCast, _movieCast) &&
            const DeepCollectionEquality()
                .equals(other._movieCrew, _movieCrew));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_movieCast),
      const DeepCollectionEquality().hash(_movieCrew));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieCreditsImplCopyWith<_$MovieCreditsImpl> get copyWith =>
      __$$MovieCreditsImplCopyWithImpl<_$MovieCreditsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieCreditsImplToJson(
      this,
    );
  }
}

abstract class _MovieCredits implements MovieCredits {
  factory _MovieCredits(
          {@JsonKey(name: 'cast') final List<MovieCast>? movieCast,
          @JsonKey(name: 'crew') final List<MovieCrew>? movieCrew}) =
      _$MovieCreditsImpl;

  factory _MovieCredits.fromJson(Map<String, dynamic> json) =
      _$MovieCreditsImpl.fromJson;

  @override
  @JsonKey(name: 'cast')
  List<MovieCast>? get movieCast;
  @override
  @JsonKey(name: 'crew')
  List<MovieCrew>? get movieCrew;
  @override
  @JsonKey(ignore: true)
  _$$MovieCreditsImplCopyWith<_$MovieCreditsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
