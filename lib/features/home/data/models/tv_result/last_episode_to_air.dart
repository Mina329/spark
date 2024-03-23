import 'package:freezed_annotation/freezed_annotation.dart';

part 'last_episode_to_air.freezed.dart';
part 'last_episode_to_air.g.dart';

@freezed
class LastEpisodeToAir with _$LastEpisodeToAir {
	factory LastEpisodeToAir({
		int? id,
		String? name,
		String? overview,
		@JsonKey(name: 'vote_average') double? voteAverage,
		@JsonKey(name: 'vote_count') int? voteCount,
		@JsonKey(name: 'air_date') String? airDate,
		@JsonKey(name: 'episode_number') int? episodeNumber,
		@JsonKey(name: 'episode_type') String? episodeType,
		@JsonKey(name: 'production_code') String? productionCode,
		int? runtime,
		@JsonKey(name: 'season_number') int? seasonNumber,
		@JsonKey(name: 'show_id') int? showId,
		@JsonKey(name: 'still_path') String? stillPath,
	}) = _LastEpisodeToAir;

	factory LastEpisodeToAir.fromJson(Map<String, dynamic> json) => _$LastEpisodeToAirFromJson(json);
}