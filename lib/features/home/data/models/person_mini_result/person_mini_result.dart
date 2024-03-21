import 'package:freezed_annotation/freezed_annotation.dart';

import 'known_for.dart';

part 'person_mini_result.freezed.dart';
part 'person_mini_result.g.dart';

@freezed
class PersonMiniResult with _$PersonMiniResult {
	factory PersonMiniResult({
		bool? adult,
		int? id,
		String? name,
		@JsonKey(name: 'original_name') String? originalName,
		@JsonKey(name: 'media_type') String? mediaType,
		double? popularity,
		int? gender,
		@JsonKey(name: 'known_for_department') String? knownForDepartment,
		@JsonKey(name: 'profile_path') String? profilePath,
		@JsonKey(name: 'known_for') List<KnownFor>? knownFor,
	}) = _PersonMiniResult;

	factory PersonMiniResult.fromJson(Map<String, dynamic> json) => _$PersonMiniResultFromJson(json);
}