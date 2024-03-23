// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_reviews.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MovieReviews _$MovieReviewsFromJson(Map<String, dynamic> json) {
  return _MovieReviews.fromJson(json);
}

/// @nodoc
mixin _$MovieReviews {
  int? get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'results')
  List<MovieReviewsResult>? get movieReviewsResults =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'total_pages')
  int? get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_results')
  int? get totalResults => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieReviewsCopyWith<MovieReviews> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieReviewsCopyWith<$Res> {
  factory $MovieReviewsCopyWith(
          MovieReviews value, $Res Function(MovieReviews) then) =
      _$MovieReviewsCopyWithImpl<$Res, MovieReviews>;
  @useResult
  $Res call(
      {int? page,
      @JsonKey(name: 'results') List<MovieReviewsResult>? movieReviewsResults,
      @JsonKey(name: 'total_pages') int? totalPages,
      @JsonKey(name: 'total_results') int? totalResults});
}

/// @nodoc
class _$MovieReviewsCopyWithImpl<$Res, $Val extends MovieReviews>
    implements $MovieReviewsCopyWith<$Res> {
  _$MovieReviewsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? movieReviewsResults = freezed,
    Object? totalPages = freezed,
    Object? totalResults = freezed,
  }) {
    return _then(_value.copyWith(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      movieReviewsResults: freezed == movieReviewsResults
          ? _value.movieReviewsResults
          : movieReviewsResults // ignore: cast_nullable_to_non_nullable
              as List<MovieReviewsResult>?,
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
abstract class _$$MovieReviewsImplCopyWith<$Res>
    implements $MovieReviewsCopyWith<$Res> {
  factory _$$MovieReviewsImplCopyWith(
          _$MovieReviewsImpl value, $Res Function(_$MovieReviewsImpl) then) =
      __$$MovieReviewsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? page,
      @JsonKey(name: 'results') List<MovieReviewsResult>? movieReviewsResults,
      @JsonKey(name: 'total_pages') int? totalPages,
      @JsonKey(name: 'total_results') int? totalResults});
}

/// @nodoc
class __$$MovieReviewsImplCopyWithImpl<$Res>
    extends _$MovieReviewsCopyWithImpl<$Res, _$MovieReviewsImpl>
    implements _$$MovieReviewsImplCopyWith<$Res> {
  __$$MovieReviewsImplCopyWithImpl(
      _$MovieReviewsImpl _value, $Res Function(_$MovieReviewsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? movieReviewsResults = freezed,
    Object? totalPages = freezed,
    Object? totalResults = freezed,
  }) {
    return _then(_$MovieReviewsImpl(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      movieReviewsResults: freezed == movieReviewsResults
          ? _value._movieReviewsResults
          : movieReviewsResults // ignore: cast_nullable_to_non_nullable
              as List<MovieReviewsResult>?,
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
class _$MovieReviewsImpl implements _MovieReviews {
  _$MovieReviewsImpl(
      {this.page,
      @JsonKey(name: 'results')
      final List<MovieReviewsResult>? movieReviewsResults,
      @JsonKey(name: 'total_pages') this.totalPages,
      @JsonKey(name: 'total_results') this.totalResults})
      : _movieReviewsResults = movieReviewsResults;

  factory _$MovieReviewsImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieReviewsImplFromJson(json);

  @override
  final int? page;
  final List<MovieReviewsResult>? _movieReviewsResults;
  @override
  @JsonKey(name: 'results')
  List<MovieReviewsResult>? get movieReviewsResults {
    final value = _movieReviewsResults;
    if (value == null) return null;
    if (_movieReviewsResults is EqualUnmodifiableListView)
      return _movieReviewsResults;
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
    return 'MovieReviews(page: $page, movieReviewsResults: $movieReviewsResults, totalPages: $totalPages, totalResults: $totalResults)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieReviewsImpl &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality()
                .equals(other._movieReviewsResults, _movieReviewsResults) &&
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
      const DeepCollectionEquality().hash(_movieReviewsResults),
      totalPages,
      totalResults);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieReviewsImplCopyWith<_$MovieReviewsImpl> get copyWith =>
      __$$MovieReviewsImplCopyWithImpl<_$MovieReviewsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieReviewsImplToJson(
      this,
    );
  }
}

abstract class _MovieReviews implements MovieReviews {
  factory _MovieReviews(
          {final int? page,
          @JsonKey(name: 'results')
          final List<MovieReviewsResult>? movieReviewsResults,
          @JsonKey(name: 'total_pages') final int? totalPages,
          @JsonKey(name: 'total_results') final int? totalResults}) =
      _$MovieReviewsImpl;

  factory _MovieReviews.fromJson(Map<String, dynamic> json) =
      _$MovieReviewsImpl.fromJson;

  @override
  int? get page;
  @override
  @JsonKey(name: 'results')
  List<MovieReviewsResult>? get movieReviewsResults;
  @override
  @JsonKey(name: 'total_pages')
  int? get totalPages;
  @override
  @JsonKey(name: 'total_results')
  int? get totalResults;
  @override
  @JsonKey(ignore: true)
  _$$MovieReviewsImplCopyWith<_$MovieReviewsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
