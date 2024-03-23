import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_crew.freezed.dart';
part 'movie_crew.g.dart';

@freezed
class MovieCrew with _$MovieCrew {
	factory MovieCrew({
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
	}) = _MovieCrew;

	factory MovieCrew.fromJson(Map<String, dynamic> json) => _$MovieCrewFromJson(json);
}