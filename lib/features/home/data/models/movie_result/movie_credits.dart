import 'package:freezed_annotation/freezed_annotation.dart';

import 'movie_cast.dart';
import 'movie_crew.dart';

part 'movie_credits.freezed.dart';
part 'movie_credits.g.dart';

@freezed
class MovieCredits with _$MovieCredits {
	factory MovieCredits({
		@JsonKey(name: 'cast') List<MovieCast>? movieCast,
		@JsonKey(name: 'crew') List<MovieCrew>? movieCrew,
	}) = _MovieCredits;

	factory MovieCredits.fromJson(Map<String, dynamic> json) => _$MovieCreditsFromJson(json);
}