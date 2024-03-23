import 'package:freezed_annotation/freezed_annotation.dart';

import 'tv_backdrop.dart';
import 'tv_logo.dart';
import 'tv_poster.dart';

part 'tv_images.freezed.dart';
part 'tv_images.g.dart';

@freezed
class TvImages with _$TvImages {
	factory TvImages({
		@JsonKey(name: 'backdrops') List<TvBackdrop>? tvBackdrops,
		@JsonKey(name: 'logos') List<TvLogo>? tvLogos,
		@JsonKey(name: 'posters') List<TvPoster>? tvPosters,
	}) = _TvImages;

	factory TvImages.fromJson(Map<String, dynamic> json) => _$TvImagesFromJson(json);
}