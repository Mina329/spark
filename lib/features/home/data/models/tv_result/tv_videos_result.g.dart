// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_videos_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TvVideosResultImpl _$$TvVideosResultImplFromJson(Map<String, dynamic> json) =>
    _$TvVideosResultImpl(
      iso6391: json['iso_639_1'] as String?,
      iso31661: json['iso_3166_1'] as String?,
      name: json['name'] as String?,
      key: json['key'] as String?,
      publishedAt: json['published_at'] == null
          ? null
          : DateTime.parse(json['published_at'] as String),
      site: json['site'] as String?,
      size: json['size'] as int?,
      type: json['type'] as String?,
      official: json['official'] as bool?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$TvVideosResultImplToJson(
        _$TvVideosResultImpl instance) =>
    <String, dynamic>{
      'iso_639_1': instance.iso6391,
      'iso_3166_1': instance.iso31661,
      'name': instance.name,
      'key': instance.key,
      'published_at': instance.publishedAt?.toIso8601String(),
      'site': instance.site,
      'size': instance.size,
      'type': instance.type,
      'official': instance.official,
      'id': instance.id,
    };
