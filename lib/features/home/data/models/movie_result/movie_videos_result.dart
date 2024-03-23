import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_videos_result.freezed.dart';
part 'movie_videos_result.g.dart';

@freezed
class MovieVideosResult with _$MovieVideosResult {
	factory MovieVideosResult({
		@JsonKey(name: 'iso_639_1') String? iso6391,
		@JsonKey(name: 'iso_3166_1') String? iso31661,
		String? name,
		String? key,
		String? site,
		int? size,
		String? type,
		bool? official,
		@JsonKey(name: 'published_at') DateTime? publishedAt,
		String? id,
	}) = _MovieVideosResult;

	factory MovieVideosResult.fromJson(Map<String, dynamic> json) => _$MovieVideosResultFromJson(json);
}