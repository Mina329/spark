import 'package:freezed_annotation/freezed_annotation.dart';

part 'tv_videos_result.freezed.dart';
part 'tv_videos_result.g.dart';

@freezed
class TvVideosResult with _$TvVideosResult {
	factory TvVideosResult({
		@JsonKey(name: 'iso_639_1') String? iso6391,
		@JsonKey(name: 'iso_3166_1') String? iso31661,
		String? name,
		String? key,
		@JsonKey(name: 'published_at') DateTime? publishedAt,
		String? site,
		int? size,
		String? type,
		bool? official,
		String? id,
	}) = _TvVideosResult;

	factory TvVideosResult.fromJson(Map<String, dynamic> json) => _$TvVideosResultFromJson(json);
}