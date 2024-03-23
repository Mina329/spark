import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_logo.freezed.dart';
part 'movie_logo.g.dart';

@freezed
class MovieLogo with _$MovieLogo {
	factory MovieLogo({
		@JsonKey(name: 'aspect_ratio') double? aspectRatio,
		int? height,
		@JsonKey(name: 'iso_639_1') String? iso6391,
		@JsonKey(name: 'file_path') String? filePath,
		@JsonKey(name: 'vote_average') double? voteAverage,
		@JsonKey(name: 'vote_count') int? voteCount,
		int? width,
	}) = _MovieLogo;

	factory MovieLogo.fromJson(Map<String, dynamic> json) => _$MovieLogoFromJson(json);
}