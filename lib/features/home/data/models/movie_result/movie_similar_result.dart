import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_similar_result.freezed.dart';
part 'movie_similar_result.g.dart';

@freezed
class MovieSimilarResult with _$MovieSimilarResult {
	factory MovieSimilarResult({
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
	}) = _MovieSimilarResult;

	factory MovieSimilarResult.fromJson(Map<String, dynamic> json) => _$MovieSimilarResultFromJson(json);
}