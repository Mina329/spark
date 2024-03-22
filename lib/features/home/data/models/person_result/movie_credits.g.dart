// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_credits.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieCreditsImpl _$$MovieCreditsImplFromJson(Map<String, dynamic> json) =>
    _$MovieCreditsImpl(
      movieCast: (json['cast'] as List<dynamic>?)
          ?.map((e) => MovieCast.fromJson(e as Map<String, dynamic>))
          .toList(),
      movieCrew: (json['crew'] as List<dynamic>?)
          ?.map((e) => MovieCrew.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MovieCreditsImplToJson(_$MovieCreditsImpl instance) =>
    <String, dynamic>{
      'cast': instance.movieCast,
      'crew': instance.movieCrew,
    };
