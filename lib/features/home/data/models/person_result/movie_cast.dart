import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_cast.freezed.dart';
part 'movie_cast.g.dart';

@freezed
class MovieCast with _$MovieCast {
	factory MovieCast({
		bool? adult,
		@JsonKey(name: 'backdrop_path') String? backdropPath,
		@JsonKey(name: 'genre_ids') List<int>? genreIds,
		int? id,
		@JsonKey(name: 'original_language') String? originalLanguage,
		@JsonKey(name: 'original_title') String? originalTitle,
		String? overview,
		double? popularity,
		@JsonKey(name: 'poster_path') String? posterPath,
		@JsonKey(name: 'release_date') String? releaseDate,
		String? title,
		bool? video,
		@JsonKey(name: 'vote_average') double? voteAverage,
		@JsonKey(name: 'vote_count') int? voteCount,
		String? character,
		@JsonKey(name: 'credit_id') String? creditId,
		int? order,
	}) = _MovieCast;

	factory MovieCast.fromJson(Map<String, dynamic> json) => _$MovieCastFromJson(json);
}
  