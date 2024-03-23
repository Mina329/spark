// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_backdrop.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TvBackdropImpl _$$TvBackdropImplFromJson(Map<String, dynamic> json) =>
    _$TvBackdropImpl(
      aspectRatio: (json['aspect_ratio'] as num?)?.toDouble(),
      height: json['height'] as int?,
      iso6391: json['iso_639_1'],
      filePath: json['file_path'] as String?,
      voteAverage: (json['vote_average'] as num?)?.toDouble(),
      voteCount: json['vote_count'] as int?,
      width: json['width'] as int?,
    );

Map<String, dynamic> _$$TvBackdropImplToJson(_$TvBackdropImpl instance) =>
    <String, dynamic>{
      'aspect_ratio': instance.aspectRatio,
      'height': instance.height,
      'iso_639_1': instance.iso6391,
      'file_path': instance.filePath,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
      'width': instance.width,
    };
