import 'package:freezed_annotation/freezed_annotation.dart';

part 'season.freezed.dart';
part 'season.g.dart';

@freezed
class Season with _$Season {
	factory Season({
		@JsonKey(name: 'air_date') String? airDate,
		@JsonKey(name: 'episode_count') int? episodeCount,
		int? id,
		String? name,
		String? overview,
		@JsonKey(name: 'poster_path') String? posterPath,
		@JsonKey(name: 'season_number') int? seasonNumber,
		@JsonKey(name: 'vote_average') double? voteAverage,
	}) = _Season;

	factory Season.fromJson(Map<String, dynamic> json) => _$SeasonFromJson(json);
}