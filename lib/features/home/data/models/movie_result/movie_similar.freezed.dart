// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_similar.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MovieSimilar _$MovieSimilarFromJson(Map<String, dynamic> json) {
  return _MovieSimilar.fromJson(json);
}

/// @nodoc
mixin _$MovieSimilar {
  int? get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'results')
  List<MovieSimilarResult>? get movieSimilarResults =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'total_pages')
  int? get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_results')
  int? get totalResults => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieSimilarCopyWith<MovieSimilar> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieSimilarCopyWith<$Res> {
  factory $MovieSimilarCopyWith(
          MovieSimilar value, $Res Function(MovieSimilar) then) =
      _$MovieSimilarCopyWithImpl<$Res, MovieSimilar>;
  @useResult
  $Res call(
      {int? page,
      @JsonKey(name: 'results') List<MovieSimilarResult>? movieSimilarResults,
      @JsonKey(name: 'total_pages') int? totalPages,
      @JsonKey(name: 'total_results') int? totalResults});
}

/// @nodoc
class _$MovieSimilarCopyWithImpl<$Res, $Val extends MovieSimilar>
    implements $MovieSimilarCopyWith<$Res> {
  _$MovieSimilarCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? movieSimilarResults = freezed,
    Object? totalPages = freezed,
    Object? totalResults = freezed,
  }) {
    return _then(_value.copyWith(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      movieSimilarResults: freezed == movieSimilarResults
          ? _value.movieSimilarResults
          : movieSimilarResults // ignore: cast_nullable_to_non_nullable
              as List<MovieSimilarResult>?,
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
abstract class _$$MovieSimilarImplCopyWith<$Res>
    implements $MovieSimilarCopyWith<$Res> {
  factory _$$MovieSimilarImplCopyWith(
          _$MovieSimilarImpl value, $Res Function(_$MovieSimilarImpl) then) =
      __$$MovieSimilarImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? page,
      @JsonKey(name: 'results') List<MovieSimilarResult>? movieSimilarResults,
      @JsonKey(name: 'total_pages') int? totalPages,
      @JsonKey(name: 'total_results') int? totalResults});
}

/// @nodoc
class __$$MovieSimilarImplCopyWithImpl<$Res>
    extends _$MovieSimilarCopyWithImpl<$Res, _$MovieSimilarImpl>
    implements _$$MovieSimilarImplCopyWith<$Res> {
  __$$MovieSimilarImplCopyWithImpl(
      _$MovieSimilarImpl _value, $Res Function(_$MovieSimilarImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? movieSimilarResults = freezed,
    Object? totalPages = freezed,
    Object? totalResults = freezed,
  }) {
    return _then(_$MovieSimilarImpl(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      movieSimilarResults: freezed == movieSimilarResults
          ? _value._movieSimilarResults
          : movieSimilarResults // ignore: cast_nullable_to_non_nullable
              as List<MovieSimilarResult>?,
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
class _$MovieSimilarImpl implements _MovieSimilar {
  _$MovieSimilarImpl(
      {this.page,
      @JsonKey(name: 'results')
      final List<MovieSimilarResult>? movieSimilarResults,
      @JsonKey(name: 'total_pages') this.totalPages,
      @JsonKey(name: 'total_results') this.totalResults})
      : _movieSimilarResults = movieSimilarResults;

  factory _$MovieSimilarImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieSimilarImplFromJson(json);

  @override
  final int? page;
  final List<MovieSimilarResult>? _movieSimilarResults;
  @override
  @JsonKey(name: 'results')
  List<MovieSimilarResult>? get movieSimilarResults {
    final value = _movieSimilarResults;
    if (value == null) return null;
    if (_movieSimilarResults is EqualUnmodifiableListView)
      return _movieSimilarResults;
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
    return 'MovieSimilar(page: $page, movieSimilarResults: $movieSimilarResults, totalPages: $totalPages, totalResults: $totalResults)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieSimilarImpl &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality()
                .equals(other._movieSimilarResults, _movieSimilarResults) &&
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
      const DeepCollectionEquality().hash(_movieSimilarResults),
      totalPages,
      totalResults);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieSimilarImplCopyWith<_$MovieSimilarImpl> get copyWith =>
      __$$MovieSimilarImplCopyWithImpl<_$MovieSimilarImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieSimilarImplToJson(
      this,
    );
  }
}

abstract class _MovieSimilar implements MovieSimilar {
  factory _MovieSimilar(
          {final int? page,
          @JsonKey(name: 'results')
          final List<MovieSimilarResult>? movieSimilarResults,
          @JsonKey(name: 'total_pages') final int? totalPages,
          @JsonKey(name: 'total_results') final int? totalResults}) =
      _$MovieSimilarImpl;

  factory _MovieSimilar.fromJson(Map<String, dynamic> json) =
      _$MovieSimilarImpl.fromJson;

  @override
  int? get page;
  @override
  @JsonKey(name: 'results')
  List<MovieSimilarResult>? get movieSimilarResults;
  @override
  @JsonKey(name: 'total_pages')
  int? get totalPages;
  @override
  @JsonKey(name: 'total_results')
  int? get totalResults;
  @override
  @JsonKey(ignore: true)
  _$$MovieSimilarImplCopyWith<_$MovieSimilarImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
