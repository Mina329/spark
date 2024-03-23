// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tv_credits.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TvCredits _$TvCreditsFromJson(Map<String, dynamic> json) {
  return _TvCredits.fromJson(json);
}

/// @nodoc
mixin _$TvCredits {
  @JsonKey(name: 'cast')
  List<TvCast>? get tvCast => throw _privateConstructorUsedError;
  @JsonKey(name: 'crew')
  List<TvCrew>? get tvCrew => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TvCreditsCopyWith<TvCredits> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TvCreditsCopyWith<$Res> {
  factory $TvCreditsCopyWith(TvCredits value, $Res Function(TvCredits) then) =
      _$TvCreditsCopyWithImpl<$Res, TvCredits>;
  @useResult
  $Res call(
      {@JsonKey(name: 'cast') List<TvCast>? tvCast,
      @JsonKey(name: 'crew') List<TvCrew>? tvCrew});
}

/// @nodoc
class _$TvCreditsCopyWithImpl<$Res, $Val extends TvCredits>
    implements $TvCreditsCopyWith<$Res> {
  _$TvCreditsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tvCast = freezed,
    Object? tvCrew = freezed,
  }) {
    return _then(_value.copyWith(
      tvCast: freezed == tvCast
          ? _value.tvCast
          : tvCast // ignore: cast_nullable_to_non_nullable
              as List<TvCast>?,
      tvCrew: freezed == tvCrew
          ? _value.tvCrew
          : tvCrew // ignore: cast_nullable_to_non_nullable
              as List<TvCrew>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TvCreditsImplCopyWith<$Res>
    implements $TvCreditsCopyWith<$Res> {
  factory _$$TvCreditsImplCopyWith(
          _$TvCreditsImpl value, $Res Function(_$TvCreditsImpl) then) =
      __$$TvCreditsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'cast') List<TvCast>? tvCast,
      @JsonKey(name: 'crew') List<TvCrew>? tvCrew});
}

/// @nodoc
class __$$TvCreditsImplCopyWithImpl<$Res>
    extends _$TvCreditsCopyWithImpl<$Res, _$TvCreditsImpl>
    implements _$$TvCreditsImplCopyWith<$Res> {
  __$$TvCreditsImplCopyWithImpl(
      _$TvCreditsImpl _value, $Res Function(_$TvCreditsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tvCast = freezed,
    Object? tvCrew = freezed,
  }) {
    return _then(_$TvCreditsImpl(
      tvCast: freezed == tvCast
          ? _value._tvCast
          : tvCast // ignore: cast_nullable_to_non_nullable
              as List<TvCast>?,
      tvCrew: freezed == tvCrew
          ? _value._tvCrew
          : tvCrew // ignore: cast_nullable_to_non_nullable
              as List<TvCrew>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TvCreditsImpl implements _TvCredits {
  _$TvCreditsImpl(
      {@JsonKey(name: 'cast') final List<TvCast>? tvCast,
      @JsonKey(name: 'crew') final List<TvCrew>? tvCrew})
      : _tvCast = tvCast,
        _tvCrew = tvCrew;

  factory _$TvCreditsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TvCreditsImplFromJson(json);

  final List<TvCast>? _tvCast;
  @override
  @JsonKey(name: 'cast')
  List<TvCast>? get tvCast {
    final value = _tvCast;
    if (value == null) return null;
    if (_tvCast is EqualUnmodifiableListView) return _tvCast;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<TvCrew>? _tvCrew;
  @override
  @JsonKey(name: 'crew')
  List<TvCrew>? get tvCrew {
    final value = _tvCrew;
    if (value == null) return null;
    if (_tvCrew is EqualUnmodifiableListView) return _tvCrew;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TvCredits(tvCast: $tvCast, tvCrew: $tvCrew)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TvCreditsImpl &&
            const DeepCollectionEquality().equals(other._tvCast, _tvCast) &&
            const DeepCollectionEquality().equals(other._tvCrew, _tvCrew));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_tvCast),
      const DeepCollectionEquality().hash(_tvCrew));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TvCreditsImplCopyWith<_$TvCreditsImpl> get copyWith =>
      __$$TvCreditsImplCopyWithImpl<_$TvCreditsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TvCreditsImplToJson(
      this,
    );
  }
}

abstract class _TvCredits implements TvCredits {
  factory _TvCredits(
      {@JsonKey(name: 'cast') final List<TvCast>? tvCast,
      @JsonKey(name: 'crew') final List<TvCrew>? tvCrew}) = _$TvCreditsImpl;

  factory _TvCredits.fromJson(Map<String, dynamic> json) =
      _$TvCreditsImpl.fromJson;

  @override
  @JsonKey(name: 'cast')
  List<TvCast>? get tvCast;
  @override
  @JsonKey(name: 'crew')
  List<TvCrew>? get tvCrew;
  @override
  @JsonKey(ignore: true)
  _$$TvCreditsImplCopyWith<_$TvCreditsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
