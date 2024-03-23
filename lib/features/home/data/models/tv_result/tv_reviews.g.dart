// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_reviews.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TvReviewsImpl _$$TvReviewsImplFromJson(Map<String, dynamic> json) =>
    _$TvReviewsImpl(
      page: json['page'] as int?,
      tvReviewsResults: (json['results'] as List<dynamic>?)
          ?.map((e) => TvReviewsResult.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: json['total_pages'] as int?,
      totalResults: json['total_results'] as int?,
    );

Map<String, dynamic> _$$TvReviewsImplToJson(_$TvReviewsImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.tvReviewsResults,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };
