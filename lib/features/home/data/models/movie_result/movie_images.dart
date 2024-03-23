import 'package:freezed_annotation/freezed_annotation.dart';

import 'movie_backdrop.dart';
import 'movie_logo.dart';
import 'movie_poster.dart';

part 'movie_images.freezed.dart';
part 'movie_images.g.dart';

@freezed
class MovieImages with _$MovieImages {
	factory MovieImages({
		@JsonKey(name: 'backdrops') List<MovieBackdrop>? movieBackdrops,
		@JsonKey(name: 'logos') List<MovieLogo>? movieLogos,
		@JsonKey(name: 'posters') List<MoviePoster>? moviePosters,
	}) = _MovieImages;

	factory MovieImages.fromJson(Map<String, dynamic> json) => _$MovieImagesFromJson(json);
}