// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tv_reviews.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TvReviews _$TvReviewsFromJson(Map<String, dynamic> json) {
  return _TvReviews.fromJson(json);
}

/// @nodoc
mixin _$TvReviews {
  int? get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'results')
  List<TvReviewsResult>? get tvReviewsResults =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'total_pages')
  int? get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_results')
  int? get totalResults => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TvReviewsCopyWith<TvReviews> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TvReviewsCopyWith<$Res> {
  factory $TvReviewsCopyWith(TvReviews value, $Res Function(TvReviews) then) =
      _$TvReviewsCopyWithImpl<$Res, TvReviews>;
  @useResult
  $Res call(
      {int? page,
      @JsonKey(name: 'results') List<TvReviewsResult>? tvReviewsResults,
      @JsonKey(name: 'total_pages') int? totalPages,
      @JsonKey(name: 'total_results') int? totalResults});
}

/// @nodoc
class _$TvReviewsCopyWithImpl<$Res, $Val extends TvReviews>
    implements $TvReviewsCopyWith<$Res> {
  _$TvReviewsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? tvReviewsResults = freezed,
    Object? totalPages = freezed,
    Object? totalResults = freezed,
  }) {
    return _then(_value.copyWith(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      tvReviewsResults: freezed == tvReviewsResults
          ? _value.tvReviewsResults
          : tvReviewsResults // ignore: cast_nullable_to_non_nullable
              as List<TvReviewsResult>?,
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
abstract class _$$TvReviewsImplCopyWith<$Res>
    implements $TvReviewsCopyWith<$Res> {
  factory _$$TvReviewsImplCopyWith(
          _$TvReviewsImpl value, $Res Function(_$TvReviewsImpl) then) =
      __$$TvReviewsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? page,
      @JsonKey(name: 'results') List<TvReviewsResult>? tvReviewsResults,
      @JsonKey(name: 'total_pages') int? totalPages,
      @JsonKey(name: 'total_results') int? totalResults});
}

/// @nodoc
class __$$TvReviewsImplCopyWithImpl<$Res>
    extends _$TvReviewsCopyWithImpl<$Res, _$TvReviewsImpl>
    implements _$$TvReviewsImplCopyWith<$Res> {
  __$$TvReviewsImplCopyWithImpl(
      _$TvReviewsImpl _value, $Res Function(_$TvReviewsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? tvReviewsResults = freezed,
    Object? totalPages = freezed,
    Object? totalResults = freezed,
  }) {
    return _then(_$TvReviewsImpl(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      tvReviewsResults: freezed == tvReviewsResults
          ? _value._tvReviewsResults
          : tvReviewsResults // ignore: cast_nullable_to_non_nullable
              as List<TvReviewsResult>?,
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
class _$TvReviewsImpl implements _TvReviews {
  _$TvReviewsImpl(
      {this.page,
      @JsonKey(name: 'results') final List<TvReviewsResult>? tvReviewsResults,
      @JsonKey(name: 'total_pages') this.totalPages,
      @JsonKey(name: 'total_results') this.totalResults})
      : _tvReviewsResults = tvReviewsResults;

  factory _$TvReviewsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TvReviewsImplFromJson(json);

  @override
  final int? page;
  final List<TvReviewsResult>? _tvReviewsResults;
  @override
  @JsonKey(name: 'results')
  List<TvReviewsResult>? get tvReviewsResults {
    final value = _tvReviewsResults;
    if (value == null) return null;
    if (_tvReviewsResults is EqualUnmodifiableListView)
      return _tvReviewsResults;
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
    return 'TvReviews(page: $page, tvReviewsResults: $tvReviewsResults, totalPages: $totalPages, totalResults: $totalResults)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TvReviewsImpl &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality()
                .equals(other._tvReviewsResults, _tvReviewsResults) &&
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
      const DeepCollectionEquality().hash(_tvReviewsResults),
      totalPages,
      totalResults);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TvReviewsImplCopyWith<_$TvReviewsImpl> get copyWith =>
      __$$TvReviewsImplCopyWithImpl<_$TvReviewsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TvReviewsImplToJson(
      this,
    );
  }
}

abstract class _TvReviews implements TvReviews {
  factory _TvReviews(
      {final int? page,
      @JsonKey(name: 'results') final List<TvReviewsResult>? tvReviewsResults,
      @JsonKey(name: 'total_pages') final int? totalPages,
      @JsonKey(name: 'total_results')
      final int? totalResults}) = _$TvReviewsImpl;

  factory _TvReviews.fromJson(Map<String, dynamic> json) =
      _$TvReviewsImpl.fromJson;

  @override
  int? get page;
  @override
  @JsonKey(name: 'results')
  List<TvReviewsResult>? get tvReviewsResults;
  @override
  @JsonKey(name: 'total_pages')
  int? get totalPages;
  @override
  @JsonKey(name: 'total_results')
  int? get totalResults;
  @override
  @JsonKey(ignore: true)
  _$$TvReviewsImplCopyWith<_$TvReviewsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
