// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_videos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TvVideosImpl _$$TvVideosImplFromJson(Map<String, dynamic> json) =>
    _$TvVideosImpl(
      tvVideosResults: (json['results'] as List<dynamic>?)
          ?.map((e) => TvVideosResult.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TvVideosImplToJson(_$TvVideosImpl instance) =>
    <String, dynamic>{
      'results': instance.tvVideosResults,
    };
