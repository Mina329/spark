// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tv_images.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TvImages _$TvImagesFromJson(Map<String, dynamic> json) {
  return _TvImages.fromJson(json);
}

/// @nodoc
mixin _$TvImages {
  @JsonKey(name: 'backdrops')
  List<TvBackdrop>? get tvBackdrops => throw _privateConstructorUsedError;
  @JsonKey(name: 'logos')
  List<TvLogo>? get tvLogos => throw _privateConstructorUsedError;
  @JsonKey(name: 'posters')
  List<TvPoster>? get tvPosters => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TvImagesCopyWith<TvImages> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TvImagesCopyWith<$Res> {
  factory $TvImagesCopyWith(TvImages value, $Res Function(TvImages) then) =
      _$TvImagesCopyWithImpl<$Res, TvImages>;
  @useResult
  $Res call(
      {@JsonKey(name: 'backdrops') List<TvBackdrop>? tvBackdrops,
      @JsonKey(name: 'logos') List<TvLogo>? tvLogos,
      @JsonKey(name: 'posters') List<TvPoster>? tvPosters});
}

/// @nodoc
class _$TvImagesCopyWithImpl<$Res, $Val extends TvImages>
    implements $TvImagesCopyWith<$Res> {
  _$TvImagesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tvBackdrops = freezed,
    Object? tvLogos = freezed,
    Object? tvPosters = freezed,
  }) {
    return _then(_value.copyWith(
      tvBackdrops: freezed == tvBackdrops
          ? _value.tvBackdrops
          : tvBackdrops // ignore: cast_nullable_to_non_nullable
              as List<TvBackdrop>?,
      tvLogos: freezed == tvLogos
          ? _value.tvLogos
          : tvLogos // ignore: cast_nullable_to_non_nullable
              as List<TvLogo>?,
      tvPosters: freezed == tvPosters
          ? _value.tvPosters
          : tvPosters // ignore: cast_nullable_to_non_nullable
              as List<TvPoster>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TvImagesImplCopyWith<$Res>
    implements $TvImagesCopyWith<$Res> {
  factory _$$TvImagesImplCopyWith(
          _$TvImagesImpl value, $Res Function(_$TvImagesImpl) then) =
      __$$TvImagesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'backdrops') List<TvBackdrop>? tvBackdrops,
      @JsonKey(name: 'logos') List<TvLogo>? tvLogos,
      @JsonKey(name: 'posters') List<TvPoster>? tvPosters});
}

/// @nodoc
class __$$TvImagesImplCopyWithImpl<$Res>
    extends _$TvImagesCopyWithImpl<$Res, _$TvImagesImpl>
    implements _$$TvImagesImplCopyWith<$Res> {
  __$$TvImagesImplCopyWithImpl(
      _$TvImagesImpl _value, $Res Function(_$TvImagesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tvBackdrops = freezed,
    Object? tvLogos = freezed,
    Object? tvPosters = freezed,
  }) {
    return _then(_$TvImagesImpl(
      tvBackdrops: freezed == tvBackdrops
          ? _value._tvBackdrops
          : tvBackdrops // ignore: cast_nullable_to_non_nullable
              as List<TvBackdrop>?,
      tvLogos: freezed == tvLogos
          ? _value._tvLogos
          : tvLogos // ignore: cast_nullable_to_non_nullable
              as List<TvLogo>?,
      tvPosters: freezed == tvPosters
          ? _value._tvPosters
          : tvPosters // ignore: cast_nullable_to_non_nullable
              as List<TvPoster>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TvImagesImpl implements _TvImages {
  _$TvImagesImpl(
      {@JsonKey(name: 'backdrops') final List<TvBackdrop>? tvBackdrops,
      @JsonKey(name: 'logos') final List<TvLogo>? tvLogos,
      @JsonKey(name: 'posters') final List<TvPoster>? tvPosters})
      : _tvBackdrops = tvBackdrops,
        _tvLogos = tvLogos,
        _tvPosters = tvPosters;

  factory _$TvImagesImpl.fromJson(Map<String, dynamic> json) =>
      _$$TvImagesImplFromJson(json);

  final List<TvBackdrop>? _tvBackdrops;
  @override
  @JsonKey(name: 'backdrops')
  List<TvBackdrop>? get tvBackdrops {
    final value = _tvBackdrops;
    if (value == null) return null;
    if (_tvBackdrops is EqualUnmodifiableListView) return _tvBackdrops;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<TvLogo>? _tvLogos;
  @override
  @JsonKey(name: 'logos')
  List<TvLogo>? get tvLogos {
    final value = _tvLogos;
    if (value == null) return null;
    if (_tvLogos is EqualUnmodifiableListView) return _tvLogos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<TvPoster>? _tvPosters;
  @override
  @JsonKey(name: 'posters')
  List<TvPoster>? get tvPosters {
    final value = _tvPosters;
    if (value == null) return null;
    if (_tvPosters is EqualUnmodifiableListView) return _tvPosters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TvImages(tvBackdrops: $tvBackdrops, tvLogos: $tvLogos, tvPosters: $tvPosters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TvImagesImpl &&
            const DeepCollectionEquality()
                .equals(other._tvBackdrops, _tvBackdrops) &&
            const DeepCollectionEquality().equals(other._tvLogos, _tvLogos) &&
            const DeepCollectionEquality()
                .equals(other._tvPosters, _tvPosters));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_tvBackdrops),
      const DeepCollectionEquality().hash(_tvLogos),
      const DeepCollectionEquality().hash(_tvPosters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TvImagesImplCopyWith<_$TvImagesImpl> get copyWith =>
      __$$TvImagesImplCopyWithImpl<_$TvImagesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TvImagesImplToJson(
      this,
    );
  }
}

abstract class _TvImages implements TvImages {
  factory _TvImages(
          {@JsonKey(name: 'backdrops') final List<TvBackdrop>? tvBackdrops,
          @JsonKey(name: 'logos') final List<TvLogo>? tvLogos,
          @JsonKey(name: 'posters') final List<TvPoster>? tvPosters}) =
      _$TvImagesImpl;

  factory _TvImages.fromJson(Map<String, dynamic> json) =
      _$TvImagesImpl.fromJson;

  @override
  @JsonKey(name: 'backdrops')
  List<TvBackdrop>? get tvBackdrops;
  @override
  @JsonKey(name: 'logos')
  List<TvLogo>? get tvLogos;
  @override
  @JsonKey(name: 'posters')
  List<TvPoster>? get tvPosters;
  @override
  @JsonKey(ignore: true)
  _$$TvImagesImplCopyWith<_$TvImagesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
