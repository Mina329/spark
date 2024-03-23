import 'package:freezed_annotation/freezed_annotation.dart';

part 'network.freezed.dart';
part 'network.g.dart';

@freezed
class Network with _$Network {
	factory Network({
		int? id,
		@JsonKey(name: 'logo_path') String? logoPath,
		String? name,
		@JsonKey(name: 'origin_country') String? originCountry,
	}) = _Network;

	factory Network.fromJson(Map<String, dynamic> json) => _$NetworkFromJson(json);
}