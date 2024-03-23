import 'package:freezed_annotation/freezed_annotation.dart';

import 'movie_videos_result.dart';

part 'movie_videos.freezed.dart';
part 'movie_videos.g.dart';

@freezed
class MovieVideos with _$MovieVideos {
	factory MovieVideos({
		@JsonKey(name: 'results') List<MovieVideosResult>? movieVideosResults,
	}) = _MovieVideos;

	factory MovieVideos.fromJson(Map<String, dynamic> json) => _$MovieVideosFromJson(json);
}