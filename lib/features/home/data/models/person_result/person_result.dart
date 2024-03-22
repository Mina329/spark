import 'package:freezed_annotation/freezed_annotation.dart';

import 'images.dart';
import 'movie_credits.dart';
import 'tv_credits.dart';

part 'person_result.freezed.dart';
part 'person_result.g.dart';

@freezed
class PersonResult with _$PersonResult {
	factory PersonResult({
		bool? adult,
		@JsonKey(name: 'also_known_as') List<String>? alsoKnownAs,
		String? biography,
		String? birthday,
		String? deathday,
		int? gender,
		String? homepage,
		int? id,
		@JsonKey(name: 'imdb_id') String? imdbId,
		@JsonKey(name: 'known_for_department') String? knownForDepartment,
		String? name,
		@JsonKey(name: 'place_of_birth') String? placeOfBirth,
		double? popularity,
		@JsonKey(name: 'profile_path') String? profilePath,
		@JsonKey(name: 'movie_credits') MovieCredits? movieCredits,
		@JsonKey(name: 'tv_credits') TvCredits? tvCredits,
		Images? images,
	}) = _PersonResult;

	factory PersonResult.fromJson(Map<String, dynamic> json) => _$PersonResultFromJson(json);
}