// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_reviews.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieReviewsImpl _$$MovieReviewsImplFromJson(Map<String, dynamic> json) =>
    _$MovieReviewsImpl(
      page: json['page'] as int?,
      movieReviewsResults: (json['results'] as List<dynamic>?)
          ?.map((e) => MovieReviewsResult.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: json['total_pages'] as int?,
      totalResults: json['total_results'] as int?,
    );

Map<String, dynamic> _$$MovieReviewsImplToJson(_$MovieReviewsImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.movieReviewsResults,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };
