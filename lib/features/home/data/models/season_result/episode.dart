import 'package:freezed_annotation/freezed_annotation.dart';

part 'episode.freezed.dart';
part 'episode.g.dart';

@freezed
class Episode with _$Episode {
	factory Episode({
		@JsonKey(name: 'air_date') String? airDate,
		@JsonKey(name: 'episode_number') int? episodeNumber,
		@JsonKey(name: 'episode_type') String? episodeType,
		int? id,
		String? name,
		String? overview,
		@JsonKey(name: 'production_code') String? productionCode,
		int? runtime,
		@JsonKey(name: 'season_number') int? seasonNumber,
		@JsonKey(name: 'show_id') int? showId,
		@JsonKey(name: 'still_path') String? stillPath,
		@JsonKey(name: 'vote_average') double? voteAverage,
		@JsonKey(name: 'vote_count') int? voteCount,
	}) = _Episode;

	factory Episode.fromJson(Map<String, dynamic> json) => _$EpisodeFromJson(json);
}