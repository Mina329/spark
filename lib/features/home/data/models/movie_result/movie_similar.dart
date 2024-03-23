import 'package:freezed_annotation/freezed_annotation.dart';

import 'movie_similar_result.dart';

part 'movie_similar.freezed.dart';
part 'movie_similar.g.dart';

@freezed
class MovieSimilar with _$MovieSimilar {
	factory MovieSimilar({
		int? page,
		@JsonKey(name: 'results') List<MovieSimilarResult>? movieSimilarResults,
		@JsonKey(name: 'total_pages') int? totalPages,
		@JsonKey(name: 'total_results') int? totalResults,
	}) = _MovieSimilar;

	factory MovieSimilar.fromJson(Map<String, dynamic> json) => _$MovieSimilarFromJson(json);
}