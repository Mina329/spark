// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_mini_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PersonMiniResultImpl _$$PersonMiniResultImplFromJson(
        Map<String, dynamic> json) =>
    _$PersonMiniResultImpl(
      adult: json['adult'] as bool?,
      id: json['id'] as int?,
      name: json['name'] as String?,
      originalName: json['original_name'] as String?,
      mediaType: json['media_type'] as String?,
      popularity: (json['popularity'] as num?)?.toDouble(),
      gender: json['gender'] as int?,
      knownForDepartment: json['known_for_department'] as String?,
      profilePath: json['profile_path'] as String?,
      knownFor: (json['known_for'] as List<dynamic>?)
          ?.map((e) => KnownFor.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PersonMiniResultImplToJson(
        _$PersonMiniResultImpl instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'id': instance.id,
      'name': instance.name,
      'original_name': instance.originalName,
      'media_type': instance.mediaType,
      'popularity': instance.popularity,
      'gender': instance.gender,
      'known_for_department': instance.knownForDepartment,
      'profile_path': instance.profilePath,
      'known_for': instance.knownFor,
    };
