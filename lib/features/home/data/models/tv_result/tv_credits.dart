import 'package:freezed_annotation/freezed_annotation.dart';

import 'tv_cast.dart';
import 'tv_crew.dart';

part 'tv_credits.freezed.dart';
part 'tv_credits.g.dart';

@freezed
class TvCredits with _$TvCredits {
	factory TvCredits({
		@JsonKey(name: 'cast') List<TvCast>? tvCast,
		@JsonKey(name: 'crew') List<TvCrew>? tvCrew,
	}) = _TvCredits;

	factory TvCredits.fromJson(Map<String, dynamic> json) => _$TvCreditsFromJson(json);
}