// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tv_videos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TvVideos _$TvVideosFromJson(Map<String, dynamic> json) {
  return _TvVideos.fromJson(json);
}

/// @nodoc
mixin _$TvVideos {
  @JsonKey(name: 'results')
  List<TvVideosResult>? get tvVideosResults =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TvVideosCopyWith<TvVideos> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TvVideosCopyWith<$Res> {
  factory $TvVideosCopyWith(TvVideos value, $Res Function(TvVideos) then) =
      _$TvVideosCopyWithImpl<$Res, TvVideos>;
  @useResult
  $Res call({@JsonKey(name: 'results') List<TvVideosResult>? tvVideosResults});
}

/// @nodoc
class _$TvVideosCopyWithImpl<$Res, $Val extends TvVideos>
    implements $TvVideosCopyWith<$Res> {
  _$TvVideosCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tvVideosResults = freezed,
  }) {
    return _then(_value.copyWith(
      tvVideosResults: freezed == tvVideosResults
          ? _value.tvVideosResults
          : tvVideosResults // ignore: cast_nullable_to_non_nullable
              as List<TvVideosResult>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TvVideosImplCopyWith<$Res>
    implements $TvVideosCopyWith<$Res> {
  factory _$$TvVideosImplCopyWith(
          _$TvVideosImpl value, $Res Function(_$TvVideosImpl) then) =
      __$$TvVideosImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'results') List<TvVideosResult>? tvVideosResults});
}

/// @nodoc
class __$$TvVideosImplCopyWithImpl<$Res>
    extends _$TvVideosCopyWithImpl<$Res, _$TvVideosImpl>
    implements _$$TvVideosImplCopyWith<$Res> {
  __$$TvVideosImplCopyWithImpl(
      _$TvVideosImpl _value, $Res Function(_$TvVideosImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tvVideosResults = freezed,
  }) {
    return _then(_$TvVideosImpl(
      tvVideosResults: freezed == tvVideosResults
          ? _value._tvVideosResults
          : tvVideosResults // ignore: cast_nullable_to_non_nullable
              as List<TvVideosResult>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TvVideosImpl implements _TvVideos {
  _$TvVideosImpl(
      {@JsonKey(name: 'results') final List<TvVideosResult>? tvVideosResults})
      : _tvVideosResults = tvVideosResults;

  factory _$TvVideosImpl.fromJson(Map<String, dynamic> json) =>
      _$$TvVideosImplFromJson(json);

  final List<TvVideosResult>? _tvVideosResults;
  @override
  @JsonKey(name: 'results')
  List<TvVideosResult>? get tvVideosResults {
    final value = _tvVideosResults;
    if (value == null) return null;
    if (_tvVideosResults is EqualUnmodifiableListView) return _tvVideosResults;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TvVideos(tvVideosResults: $tvVideosResults)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TvVideosImpl &&
            const DeepCollectionEquality()
                .equals(other._tvVideosResults, _tvVideosResults));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_tvVideosResults));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TvVideosImplCopyWith<_$TvVideosImpl> get copyWith =>
      __$$TvVideosImplCopyWithImpl<_$TvVideosImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TvVideosImplToJson(
      this,
    );
  }
}

abstract class _TvVideos implements TvVideos {
  factory _TvVideos(
      {@JsonKey(name: 'results')
      final List<TvVideosResult>? tvVideosResults}) = _$TvVideosImpl;

  factory _TvVideos.fromJson(Map<String, dynamic> json) =
      _$TvVideosImpl.fromJson;

  @override
  @JsonKey(name: 'results')
  List<TvVideosResult>? get tvVideosResults;
  @override
  @JsonKey(ignore: true)
  _$$TvVideosImplCopyWith<_$TvVideosImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
