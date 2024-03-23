// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_images.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TvImagesImpl _$$TvImagesImplFromJson(Map<String, dynamic> json) =>
    _$TvImagesImpl(
      tvBackdrops: (json['backdrops'] as List<dynamic>?)
          ?.map((e) => TvBackdrop.fromJson(e as Map<String, dynamic>))
          .toList(),
      tvLogos: (json['logos'] as List<dynamic>?)
          ?.map((e) => TvLogo.fromJson(e as Map<String, dynamic>))
          .toList(),
      tvPosters: (json['posters'] as List<dynamic>?)
          ?.map((e) => TvPoster.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TvImagesImplToJson(_$TvImagesImpl instance) =>
    <String, dynamic>{
      'backdrops': instance.tvBackdrops,
      'logos': instance.tvLogos,
      'posters': instance.tvPosters,
    };
