import 'package:freezed_annotation/freezed_annotation.dart';

part 'tv_poster.freezed.dart';
part 'tv_poster.g.dart';

@freezed
class TvPoster with _$TvPoster {
	factory TvPoster({
		@JsonKey(name: 'aspect_ratio') double? aspectRatio,
		int? height,
		@JsonKey(name: 'iso_639_1') String? iso6391,
		@JsonKey(name: 'file_path') String? filePath,
		@JsonKey(name: 'vote_average') double? voteAverage,
		@JsonKey(name: 'vote_count') int? voteCount,
		int? width,
	}) = _TvPoster;

	factory TvPoster.fromJson(Map<String, dynamic> json) => _$TvPosterFromJson(json);
}