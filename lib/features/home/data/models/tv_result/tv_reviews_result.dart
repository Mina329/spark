import 'package:freezed_annotation/freezed_annotation.dart';

import 'author_details.dart';

part 'tv_reviews_result.freezed.dart';
part 'tv_reviews_result.g.dart';

@freezed
class TvReviewsResult with _$TvReviewsResult {
	factory TvReviewsResult({
		String? author,
		@JsonKey(name: 'author_details') AuthorDetails? authorDetails,
		String? content,
		@JsonKey(name: 'created_at') DateTime? createdAt,
		String? id,
		@JsonKey(name: 'updated_at') DateTime? updatedAt,
		String? url,
	}) = _TvReviewsResult;

	factory TvReviewsResult.fromJson(Map<String, dynamic> json) => _$TvReviewsResultFromJson(json);
}