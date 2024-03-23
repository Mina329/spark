import 'package:freezed_annotation/freezed_annotation.dart';

import 'tv_reviews_result.dart';

part 'tv_reviews.freezed.dart';
part 'tv_reviews.g.dart';

@freezed
class TvReviews with _$TvReviews {
	factory TvReviews({
		int? page,
		@JsonKey(name: 'results') List<TvReviewsResult>? tvReviewsResults,
		@JsonKey(name: 'total_pages') int? totalPages,
		@JsonKey(name: 'total_results') int? totalResults,
	}) = _TvReviews;

	factory TvReviews.fromJson(Map<String, dynamic> json) => _$TvReviewsFromJson(json);
}