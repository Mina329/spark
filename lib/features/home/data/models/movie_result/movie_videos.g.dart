// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_videos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieVideosImpl _$$MovieVideosImplFromJson(Map<String, dynamic> json) =>
    _$MovieVideosImpl(
      movieVideosResults: (json['results'] as List<dynamic>?)
          ?.map((e) => MovieVideosResult.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MovieVideosImplToJson(_$MovieVideosImpl instance) =>
    <String, dynamic>{
      'results': instance.movieVideosResults,
    };
