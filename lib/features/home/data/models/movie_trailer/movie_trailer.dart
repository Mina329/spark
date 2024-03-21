import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_trailer.freezed.dart';
part 'movie_trailer.g.dart';

@freezed
class MovieTrailer with _$MovieTrailer {
	factory MovieTrailer({
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
	}) = _MovieTrailer;

	factory MovieTrailer.fromJson(Map<String, dynamic> json) => _$MovieTrailerFromJson(json);
}