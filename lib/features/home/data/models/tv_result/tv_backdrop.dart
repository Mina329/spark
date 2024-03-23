import 'package:freezed_annotation/freezed_annotation.dart';

part 'tv_backdrop.freezed.dart';
part 'tv_backdrop.g.dart';

@freezed
class TvBackdrop with _$TvBackdrop {
	factory TvBackdrop({
		@JsonKey(name: 'aspect_ratio') double? aspectRatio,
		int? height,
		@JsonKey(name: 'iso_639_1') dynamic iso6391,
		@JsonKey(name: 'file_path') String? filePath,
		@JsonKey(name: 'vote_average') double? voteAverage,
		@JsonKey(name: 'vote_count') int? voteCount,
		int? width,
	}) = _TvBackdrop;

	factory TvBackdrop.fromJson(Map<String, dynamic> json) => _$TvBackdropFromJson(json);
}