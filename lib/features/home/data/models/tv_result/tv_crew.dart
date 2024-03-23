import 'package:freezed_annotation/freezed_annotation.dart';

part 'tv_crew.freezed.dart';
part 'tv_crew.g.dart';

@freezed
class TvCrew with _$TvCrew {
	factory TvCrew({
		bool? adult,
		int? gender,
		int? id,
		@JsonKey(name: 'known_for_department') String? knownForDepartment,
		String? name,
		@JsonKey(name: 'original_name') String? originalName,
		double? popularity,
		@JsonKey(name: 'profile_path') String? profilePath,
		@JsonKey(name: 'credit_id') String? creditId,
		String? department,
		String? job,
	}) = _TvCrew;

	factory TvCrew.fromJson(Map<String, dynamic> json) => _$TvCrewFromJson(json);
}