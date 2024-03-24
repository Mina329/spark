// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'season_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SeasonResultImpl _$$SeasonResultImplFromJson(Map<String, dynamic> json) =>
    _$SeasonResultImpl(
      airDate: json['air_date'] as String?,
      episodes: (json['episodes'] as List<dynamic>?)
          ?.map((e) => Episode.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String?,
      overview: json['overview'] as String?,
      id: json['id'] as int?,
      posterPath: json['poster_path'] as String?,
      seasonNumber: json['season_number'] as int?,
      voteAverage: (json['vote_average'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$SeasonResultImplToJson(_$SeasonResultImpl instance) =>
    <String, dynamic>{
      'air_date': instance.airDate,
      'episodes': instance.episodes,
      'name': instance.name,
      'overview': instance.overview,
      'id': instance.id,
      'poster_path': instance.posterPath,
      'season_number': instance.seasonNumber,
      'vote_average': instance.voteAverage,
    };
