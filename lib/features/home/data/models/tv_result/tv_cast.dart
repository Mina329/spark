import 'package:freezed_annotation/freezed_annotation.dart';

part 'tv_cast.freezed.dart';
part 'tv_cast.g.dart';

@freezed
class TvCast with _$TvCast {
	factory TvCast({
		bool? adult,
		int? gender,
		int? id,
		@JsonKey(name: 'known_for_department') String? knownForDepartment,
		String? name,
		@JsonKey(name: 'original_name') String? originalName,
		double? popularity,
		@JsonKey(name: 'profile_path') String? profilePath,
		String? character,
		@JsonKey(name: 'credit_id') String? creditId,
		int? order,
	}) = _TvCast;

	factory TvCast.fromJson(Map<String, dynamic> json) => _$TvCastFromJson(json);
}