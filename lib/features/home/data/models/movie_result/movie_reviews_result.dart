import 'package:freezed_annotation/freezed_annotation.dart';

import 'author_details.dart';

part 'movie_reviews_result.freezed.dart';
part 'movie_reviews_result.g.dart';

@freezed
class MovieReviewsResult with _$MovieReviewsResult {
	factory MovieReviewsResult({
		String? author,
		@JsonKey(name: 'author_details') AuthorDetails? authorDetails,
		String? content,
		@JsonKey(name: 'created_at') DateTime? createdAt,
		String? id,
		@JsonKey(name: 'updated_at') DateTime? updatedAt,
		String? url,
	}) = _MovieReviewsResult;

	factory MovieReviewsResult.fromJson(Map<String, dynamic> json) => _$MovieReviewsResultFromJson(json);
}