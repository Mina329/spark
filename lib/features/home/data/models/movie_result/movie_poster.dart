import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_poster.freezed.dart';
part 'movie_poster.g.dart';

@freezed
class MoviePoster with _$MoviePoster {
	factory MoviePoster({
		@JsonKey(name: 'aspect_ratio') double? aspectRatio,
		int? height,
		@JsonKey(name: 'iso_639_1') String? iso6391,
		@JsonKey(name: 'file_path') String? filePath,
		@JsonKey(name: 'vote_average') double? voteAverage,
		@JsonKey(name: 'vote_count') int? voteCount,
		int? width,
	}) = _MoviePoster;

	factory MoviePoster.fromJson(Map<String, dynamic> json) => _$MoviePosterFromJson(json);
}