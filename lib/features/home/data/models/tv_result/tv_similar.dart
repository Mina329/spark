import 'package:freezed_annotation/freezed_annotation.dart';

import 'tv_similar_result.dart';

part 'tv_similar.freezed.dart';
part 'tv_similar.g.dart';

@freezed
class TvSimilar with _$TvSimilar {
	factory TvSimilar({
		int? page,
		@JsonKey(name: 'results') List<TvSimilarResult>? tvSimilarResults,
		@JsonKey(name: 'total_pages') int? totalPages,
		@JsonKey(name: 'total_results') int? totalResults,
	}) = _TvSimilar;

	factory TvSimilar.fromJson(Map<String, dynamic> json) => _$TvSimilarFromJson(json);
}