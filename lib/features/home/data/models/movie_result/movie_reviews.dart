import 'package:freezed_annotation/freezed_annotation.dart';

import 'movie_reviews_result.dart';

part 'movie_reviews.freezed.dart';
part 'movie_reviews.g.dart';

@freezed
class MovieReviews with _$MovieReviews {
	factory MovieReviews({
		int? page,
		@JsonKey(name: 'results') List<MovieReviewsResult>? movieReviewsResults,
		@JsonKey(name: 'total_pages') int? totalPages,
		@JsonKey(name: 'total_results') int? totalResults,
	}) = _MovieReviews;

	factory MovieReviews.fromJson(Map<String, dynamic> json) => _$MovieReviewsFromJson(json);
}