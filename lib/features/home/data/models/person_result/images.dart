import 'package:freezed_annotation/freezed_annotation.dart';

import 'profile.dart';

part 'images.freezed.dart';
part 'images.g.dart';

@freezed
class Images with _$Images {
	factory Images({
		List<Profile>? profiles,
	}) = _Images;

	factory Images.fromJson(Map<String, dynamic> json) => _$ImagesFromJson(json);
}