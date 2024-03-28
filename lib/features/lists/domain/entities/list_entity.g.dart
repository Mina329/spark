// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListEntity _$ListEntityFromJson(Map<String, dynamic> json) => ListEntity(
      id: json['id'] as String,
      title: json['title'] as String?,
      shows: (json['shows'] as List<dynamic>?)
          ?.map((e) => ShowMiniResultEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ListEntityToJson(ListEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'shows': instance.shows,
    };
