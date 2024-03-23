// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_credits.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TvCreditsImpl _$$TvCreditsImplFromJson(Map<String, dynamic> json) =>
    _$TvCreditsImpl(
      tvCast: (json['cast'] as List<dynamic>?)
          ?.map((e) => TvCast.fromJson(e as Map<String, dynamic>))
          .toList(),
      tvCrew: (json['crew'] as List<dynamic>?)
          ?.map((e) => TvCrew.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TvCreditsImplToJson(_$TvCreditsImpl instance) =>
    <String, dynamic>{
      'cast': instance.tvCast,
      'crew': instance.tvCrew,
    };
