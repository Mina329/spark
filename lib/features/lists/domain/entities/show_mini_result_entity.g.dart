// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'show_mini_result_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShowMiniResultEntity _$ShowMiniResultEntityFromJson(
        Map<String, dynamic> json) =>
    ShowMiniResultEntity(
      id: json['id'] as int,
      name: json['name'] as String?,
      posterPath: json['posterPath'] as String?,
      releaseDate: json['releaseDate'] == null
          ? null
          : DateTime.parse(json['releaseDate'] as String),
      genres: (json['genres'] as List<dynamic>?)?.map((e) => e as int).toList(),
      voteAverage: (json['voteAverage'] as num?)?.toDouble(),
      voteCount: json['voteCount'] as int?,
      showType: $enumDecodeNullable(_$ShowTypeEnumMap, json['showType']),
    );

Map<String, dynamic> _$ShowMiniResultEntityToJson(
        ShowMiniResultEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'posterPath': instance.posterPath,
      'releaseDate': instance.releaseDate?.toIso8601String(),
      'genres': instance.genres,
      'voteAverage': instance.voteAverage,
      'voteCount': instance.voteCount,
      'showType': _$ShowTypeEnumMap[instance.showType],
    };

const _$ShowTypeEnumMap = {
  ShowType.Movie: 'Movie',
  ShowType.TV: 'TV',
  ShowType.Person: 'Person',
  ShowType.Movies_TV: 'Movies_TV',
};
