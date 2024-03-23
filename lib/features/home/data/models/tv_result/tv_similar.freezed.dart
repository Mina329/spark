// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tv_similar.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TvSimilar _$TvSimilarFromJson(Map<String, dynamic> json) {
  return _TvSimilar.fromJson(json);
}

/// @nodoc
mixin _$TvSimilar {
  int? get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'results')
  List<TvSimilarResult>? get tvSimilarResults =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'total_pages')
  int? get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_results')
  int? get totalResults => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TvSimilarCopyWith<TvSimilar> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TvSimilarCopyWith<$Res> {
  factory $TvSimilarCopyWith(TvSimilar value, $Res Function(TvSimilar) then) =
      _$TvSimilarCopyWithImpl<$Res, TvSimilar>;
  @useResult
  $Res call(
      {int? page,
      @JsonKey(name: 'results') List<TvSimilarResult>? tvSimilarResults,
      @JsonKey(name: 'total_pages') int? totalPages,
      @JsonKey(name: 'total_results') int? totalResults});
}

/// @nodoc
class _$TvSimilarCopyWithImpl<$Res, $Val extends TvSimilar>
    implements $TvSimilarCopyWith<$Res> {
  _$TvSimilarCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? tvSimilarResults = freezed,
    Object? totalPages = freezed,
    Object? totalResults = freezed,
  }) {
    return _then(_value.copyWith(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      tvSimilarResults: freezed == tvSimilarResults
          ? _value.tvSimilarResults
          : tvSimilarResults // ignore: cast_nullable_to_non_nullable
              as List<TvSimilarResult>?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TvSimilarImplCopyWith<$Res>
    implements $TvSimilarCopyWith<$Res> {
  factory _$$TvSimilarImplCopyWith(
          _$TvSimilarImpl value, $Res Function(_$TvSimilarImpl) then) =
      __$$TvSimilarImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? page,
      @JsonKey(name: 'results') List<TvSimilarResult>? tvSimilarResults,
      @JsonKey(name: 'total_pages') int? totalPages,
      @JsonKey(name: 'total_results') int? totalResults});
}

/// @nodoc
class __$$TvSimilarImplCopyWithImpl<$Res>
    extends _$TvSimilarCopyWithImpl<$Res, _$TvSimilarImpl>
    implements _$$TvSimilarImplCopyWith<$Res> {
  __$$TvSimilarImplCopyWithImpl(
      _$TvSimilarImpl _value, $Res Function(_$TvSimilarImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? tvSimilarResults = freezed,
    Object? totalPages = freezed,
    Object? totalResults = freezed,
  }) {
    return _then(_$TvSimilarImpl(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      tvSimilarResults: freezed == tvSimilarResults
          ? _value._tvSimilarResults
          : tvSimilarResults // ignore: cast_nullable_to_non_nullable
              as List<TvSimilarResult>?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TvSimilarImpl implements _TvSimilar {
  _$TvSimilarImpl(
      {this.page,
      @JsonKey(name: 'results') final List<TvSimilarResult>? tvSimilarResults,
      @JsonKey(name: 'total_pages') this.totalPages,
      @JsonKey(name: 'total_results') this.totalResults})
      : _tvSimilarResults = tvSimilarResults;

  factory _$TvSimilarImpl.fromJson(Map<String, dynamic> json) =>
      _$$TvSimilarImplFromJson(json);

  @override
  final int? page;
  final List<TvSimilarResult>? _tvSimilarResults;
  @override
  @JsonKey(name: 'results')
  List<TvSimilarResult>? get tvSimilarResults {
    final value = _tvSimilarResults;
    if (value == null) return null;
    if (_tvSimilarResults is EqualUnmodifiableListView)
      return _tvSimilarResults;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'total_pages')
  final int? totalPages;
  @override
  @JsonKey(name: 'total_results')
  final int? totalResults;

  @override
  String toString() {
    return 'TvSimilar(page: $page, tvSimilarResults: $tvSimilarResults, totalPages: $totalPages, totalResults: $totalResults)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TvSimilarImpl &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality()
                .equals(other._tvSimilarResults, _tvSimilarResults) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      page,
      const DeepCollectionEquality().hash(_tvSimilarResults),
      totalPages,
      totalResults);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TvSimilarImplCopyWith<_$TvSimilarImpl> get copyWith =>
      __$$TvSimilarImplCopyWithImpl<_$TvSimilarImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TvSimilarImplToJson(
      this,
    );
  }
}

abstract class _TvSimilar implements TvSimilar {
  factory _TvSimilar(
      {final int? page,
      @JsonKey(name: 'results') final List<TvSimilarResult>? tvSimilarResults,
      @JsonKey(name: 'total_pages') final int? totalPages,
      @JsonKey(name: 'total_results')
      final int? totalResults}) = _$TvSimilarImpl;

  factory _TvSimilar.fromJson(Map<String, dynamic> json) =
      _$TvSimilarImpl.fromJson;

  @override
  int? get page;
  @override
  @JsonKey(name: 'results')
  List<TvSimilarResult>? get tvSimilarResults;
  @override
  @JsonKey(name: 'total_pages')
  int? get totalPages;
  @override
  @JsonKey(name: 'total_results')
  int? get totalResults;
  @override
  @JsonKey(ignore: true)
  _$$TvSimilarImplCopyWith<_$TvSimilarImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
