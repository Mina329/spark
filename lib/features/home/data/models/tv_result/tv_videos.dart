import 'package:freezed_annotation/freezed_annotation.dart';

import 'tv_videos_result.dart';

part 'tv_videos.freezed.dart';
part 'tv_videos.g.dart';

@freezed
class TvVideos with _$TvVideos {
	factory TvVideos({
		@JsonKey(name: 'results') List<TvVideosResult>? tvVideosResults,
	}) = _TvVideos;

	factory TvVideos.fromJson(Map<String, dynamic> json) => _$TvVideosFromJson(json);
}