// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_similar.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TvSimilarImpl _$$TvSimilarImplFromJson(Map<String, dynamic> json) =>
    _$TvSimilarImpl(
      page: json['page'] as int?,
      tvSimilarResults: (json['results'] as List<dynamic>?)
          ?.map((e) => TvSimilarResult.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: json['total_pages'] as int?,
      totalResults: json['total_results'] as int?,
    );

Map<String, dynamic> _$$TvSimilarImplToJson(_$TvSimilarImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.tvSimilarResults,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };
