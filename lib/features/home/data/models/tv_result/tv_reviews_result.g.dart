// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_reviews_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TvReviewsResultImpl _$$TvReviewsResultImplFromJson(
        Map<String, dynamic> json) =>
    _$TvReviewsResultImpl(
      author: json['author'] as String?,
      authorDetails: json['author_details'] == null
          ? null
          : AuthorDetails.fromJson(
              json['author_details'] as Map<String, dynamic>),
      content: json['content'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      id: json['id'] as String?,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$TvReviewsResultImplToJson(
        _$TvReviewsResultImpl instance) =>
    <String, dynamic>{
      'author': instance.author,
      'author_details': instance.authorDetails,
      'content': instance.content,
      'created_at': instance.createdAt?.toIso8601String(),
      'id': instance.id,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'url': instance.url,
    };
