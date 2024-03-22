import 'package:freezed_annotation/freezed_annotation.dart';

part 'tv_cast.freezed.dart';
part 'tv_cast.g.dart';

@freezed
class TvCast with _$TvCast {
	factory TvCast({
		bool? adult,
		@JsonKey(name: 'backdrop_path') String? backdropPath,
		@JsonKey(name: 'genre_ids') List<int>? genreIds,
		int? id,
		@JsonKey(name: 'origin_country') List<String>? originCountry,
		@JsonKey(name: 'original_language') String? originalLanguage,
		@JsonKey(name: 'original_name') String? originalName,
		String? overview,
		double? popularity,
		@JsonKey(name: 'poster_path') String? posterPath,
		@JsonKey(name: 'first_air_date') String? firstAirDate,
		String? name,
		@JsonKey(name: 'vote_average') double? voteAverage,
		@JsonKey(name: 'vote_count') int? voteCount,
		String? character,
		@JsonKey(name: 'credit_id') String? creditId,
		@JsonKey(name: 'episode_count') int? episodeCount,
	}) = _TvCast;

	factory TvCast.fromJson(Map<String, dynamic> json) => _$TvCastFromJson(json);
}