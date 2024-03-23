// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_similar.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieSimilarImpl _$$MovieSimilarImplFromJson(Map<String, dynamic> json) =>
    _$MovieSimilarImpl(
      page: json['page'] as int?,
      movieSimilarResults: (json['results'] as List<dynamic>?)
          ?.map((e) => MovieSimilarResult.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: json['total_pages'] as int?,
      totalResults: json['total_results'] as int?,
    );

Map<String, dynamic> _$$MovieSimilarImplToJson(_$MovieSimilarImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.movieSimilarResults,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };
