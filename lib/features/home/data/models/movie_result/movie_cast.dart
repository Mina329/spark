import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_cast.freezed.dart';
part 'movie_cast.g.dart';

@freezed
class MovieCast with _$MovieCast {
	factory MovieCast({
		bool? adult,
		int? gender,
		int? id,
		@JsonKey(name: 'known_for_department') String? knownForDepartment,
		String? name,
		@JsonKey(name: 'original_name') String? originalName,
		double? popularity,
		@JsonKey(name: 'profile_path') String? profilePath,
		@JsonKey(name: 'cast_id') int? castId,
		String? character,
		@JsonKey(name: 'credit_id') String? creditId,
		int? order,
	}) = _MovieCast;

	factory MovieCast.fromJson(Map<String, dynamic> json) => _$MovieCastFromJson(json);
}