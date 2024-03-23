import 'package:freezed_annotation/freezed_annotation.dart';

part 'created_by.freezed.dart';
part 'created_by.g.dart';

@freezed
class CreatedBy with _$CreatedBy {
	factory CreatedBy({
		int? id,
		@JsonKey(name: 'credit_id') String? creditId,
		String? name,
		int? gender,
		@JsonKey(name: 'profile_path') String? profilePath,
	}) = _CreatedBy;

	factory CreatedBy.fromJson(Map<String, dynamic> json) => _$CreatedByFromJson(json);
}