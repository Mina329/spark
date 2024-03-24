import 'package:freezed_annotation/freezed_annotation.dart';

import 'episode.dart';

part 'season_result.freezed.dart';
part 'season_result.g.dart';

@freezed
class SeasonResult with _$SeasonResult {
	factory SeasonResult({
		@JsonKey(name: 'air_date') String? airDate,
		List<Episode>? episodes,
		String? name,
		String? overview,
		int? id,
		@JsonKey(name: 'poster_path') String? posterPath,
		@JsonKey(name: 'season_number') int? seasonNumber,
		@JsonKey(name: 'vote_average') double? voteAverage,
	}) = _SeasonResult;

	factory SeasonResult.fromJson(Map<String, dynamic> json) => _$SeasonResultFromJson(json);
}