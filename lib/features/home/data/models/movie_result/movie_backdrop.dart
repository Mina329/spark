import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_backdrop.freezed.dart';
part 'movie_backdrop.g.dart';

@freezed
class MovieBackdrop with _$MovieBackdrop {
	factory MovieBackdrop({
		@JsonKey(name: 'aspect_ratio') double? aspectRatio,
		int? height,
		@JsonKey(name: 'iso_639_1') String? iso6391,
		@JsonKey(name: 'file_path') String? filePath,
		@JsonKey(name: 'vote_average') double? voteAverage,
		@JsonKey(name: 'vote_count') int? voteCount,
		int? width,
	}) = _MovieBackdrop;

	factory MovieBackdrop.fromJson(Map<String, dynamic> json) => _$MovieBackdropFromJson(json);
}