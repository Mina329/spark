// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_reviews_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MovieReviewsResult _$MovieReviewsResultFromJson(Map<String, dynamic> json) {
  return _MovieReviewsResult.fromJson(json);
}

/// @nodoc
mixin _$MovieReviewsResult {
  String? get author => throw _privateConstructorUsedError;
  @JsonKey(name: 'author_details')
  AuthorDetails? get authorDetails => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieReviewsResultCopyWith<MovieReviewsResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieReviewsResultCopyWith<$Res> {
  factory $MovieReviewsResultCopyWith(
          MovieReviewsResult value, $Res Function(MovieReviewsResult) then) =
      _$MovieReviewsResultCopyWithImpl<$Res, MovieReviewsResult>;
  @useResult
  $Res call(
      {String? author,
      @JsonKey(name: 'author_details') AuthorDetails? authorDetails,
      String? content,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      String? id,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      String? url});

  $AuthorDetailsCopyWith<$Res>? get authorDetails;
}

/// @nodoc
class _$MovieReviewsResultCopyWithImpl<$Res, $Val extends MovieReviewsResult>
    implements $MovieReviewsResultCopyWith<$Res> {
  _$MovieReviewsResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? author = freezed,
    Object? authorDetails = freezed,
    Object? content = freezed,
    Object? createdAt = freezed,
    Object? id = freezed,
    Object? updatedAt = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      authorDetails: freezed == authorDetails
          ? _value.authorDetails
          : authorDetails // ignore: cast_nullable_to_non_nullable
              as AuthorDetails?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthorDetailsCopyWith<$Res>? get authorDetails {
    if (_value.authorDetails == null) {
      return null;
    }

    return $AuthorDetailsCopyWith<$Res>(_value.authorDetails!, (value) {
      return _then(_value.copyWith(authorDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MovieReviewsResultImplCopyWith<$Res>
    implements $MovieReviewsResultCopyWith<$Res> {
  factory _$$MovieReviewsResultImplCopyWith(_$MovieReviewsResultImpl value,
          $Res Function(_$MovieReviewsResultImpl) then) =
      __$$MovieReviewsResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? author,
      @JsonKey(name: 'author_details') AuthorDetails? authorDetails,
      String? content,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      String? id,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      String? url});

  @override
  $AuthorDetailsCopyWith<$Res>? get authorDetails;
}

/// @nodoc
class __$$MovieReviewsResultImplCopyWithImpl<$Res>
    extends _$MovieReviewsResultCopyWithImpl<$Res, _$MovieReviewsResultImpl>
    implements _$$MovieReviewsResultImplCopyWith<$Res> {
  __$$MovieReviewsResultImplCopyWithImpl(_$MovieReviewsResultImpl _value,
      $Res Function(_$MovieReviewsResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? author = freezed,
    Object? authorDetails = freezed,
    Object? content = freezed,
    Object? createdAt = freezed,
    Object? id = freezed,
    Object? updatedAt = freezed,
    Object? url = freezed,
  }) {
    return _then(_$MovieReviewsResultImpl(
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      authorDetails: freezed == authorDetails
          ? _value.authorDetails
          : authorDetails // ignore: cast_nullable_to_non_nullable
              as AuthorDetails?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieReviewsResultImpl implements _MovieReviewsResult {
  _$MovieReviewsResultImpl(
      {this.author,
      @JsonKey(name: 'author_details') this.authorDetails,
      this.content,
      @JsonKey(name: 'created_at') this.createdAt,
      this.id,
      @JsonKey(name: 'updated_at') this.updatedAt,
      this.url});

  factory _$MovieReviewsResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieReviewsResultImplFromJson(json);

  @override
  final String? author;
  @override
  @JsonKey(name: 'author_details')
  final AuthorDetails? authorDetails;
  @override
  final String? content;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  final String? id;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  final String? url;

  @override
  String toString() {
    return 'MovieReviewsResult(author: $author, authorDetails: $authorDetails, content: $content, createdAt: $createdAt, id: $id, updatedAt: $updatedAt, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieReviewsResultImpl &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.authorDetails, authorDetails) ||
                other.authorDetails == authorDetails) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, author, authorDetails, content,
      createdAt, id, updatedAt, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieReviewsResultImplCopyWith<_$MovieReviewsResultImpl> get copyWith =>
      __$$MovieReviewsResultImplCopyWithImpl<_$MovieReviewsResultImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieReviewsResultImplToJson(
      this,
    );
  }
}

abstract class _MovieReviewsResult implements MovieReviewsResult {
  factory _MovieReviewsResult(
      {final String? author,
      @JsonKey(name: 'author_details') final AuthorDetails? authorDetails,
      final String? content,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      final String? id,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      final String? url}) = _$MovieReviewsResultImpl;

  factory _MovieReviewsResult.fromJson(Map<String, dynamic> json) =
      _$MovieReviewsResultImpl.fromJson;

  @override
  String? get author;
  @override
  @JsonKey(name: 'author_details')
  AuthorDetails? get authorDetails;
  @override
  String? get content;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  String? get id;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$MovieReviewsResultImplCopyWith<_$MovieReviewsResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
