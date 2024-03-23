import 'package:freezed_annotation/freezed_annotation.dart';

part 'spoken_language.freezed.dart';
part 'spoken_language.g.dart';

@freezed
class SpokenLanguage with _$SpokenLanguage {
	factory SpokenLanguage({
		@JsonKey(name: 'english_name') String? englishName,
		@JsonKey(name: 'iso_639_1') String? iso6391,
		String? name,
	}) = _SpokenLanguage;

	factory SpokenLanguage.fromJson(Map<String, dynamic> json) => _$SpokenLanguageFromJson(json);
}