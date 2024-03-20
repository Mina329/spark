import 'package:freezed_annotation/freezed_annotation.dart';

part 'trending_tv_show.freezed.dart';
part 'trending_tv_show.g.dart';

@freezed
class TrendingTvShow with _$TrendingTvShow {
	factory TrendingTvShow({
		bool? adult,
		@JsonKey(name: 'backdrop_path') String? backdropPath,
		int? id,
		String? name,
		@JsonKey(name: 'original_language') String? originalLanguage,
		@JsonKey(name: 'original_name') String? originalName,
		String? overview,
		@JsonKey(name: 'poster_path') String? posterPath,
		@JsonKey(name: 'media_type') String? mediaType,
		@JsonKey(name: 'genre_ids') List<int>? genreIds,
		double? popularity,
		@JsonKey(name: 'first_air_date') String? firstAirDate,
		@JsonKey(name: 'vote_average') double? voteAverage,
		@JsonKey(name: 'vote_count') int? voteCount,
		@JsonKey(name: 'origin_country') List<String>? originCountry,
	}) = _TrendingTvShow;

	factory TrendingTvShow.fromJson(Map<String, dynamic> json) => _$TrendingTvShowFromJson(json);
}