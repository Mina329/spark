import 'package:freezed_annotation/freezed_annotation.dart';

part 'tv_logo.freezed.dart';
part 'tv_logo.g.dart';

@freezed
class TvLogo with _$TvLogo {
	factory TvLogo({
		@JsonKey(name: 'aspect_ratio') double? aspectRatio,
		int? height,
		@JsonKey(name: 'iso_639_1') String? iso6391,
		@JsonKey(name: 'file_path') String? filePath,
		@JsonKey(name: 'vote_average') double? voteAverage,
		@JsonKey(name: 'vote_count') int? voteCount,
		int? width,
	}) = _TvLogo;

	factory TvLogo.fromJson(Map<String, dynamic> json) => _$TvLogoFromJson(json);
}