import 'package:freezed_annotation/freezed_annotation.dart';

part 'author_details.freezed.dart';
part 'author_details.g.dart';

@freezed
class AuthorDetails with _$AuthorDetails {
	factory AuthorDetails({
		String? name,
		String? username,
		@JsonKey(name: 'avatar_path') dynamic avatarPath,
		double? rating,
	}) = _AuthorDetails;

	factory AuthorDetails.fromJson(Map<String, dynamic> json) => _$AuthorDetailsFromJson(json);
}