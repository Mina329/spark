import 'package:freezed_annotation/freezed_annotation.dart';

part 'production_company.freezed.dart';
part 'production_company.g.dart';

@freezed
class ProductionCompany with _$ProductionCompany {
	factory ProductionCompany({
		int? id,
		@JsonKey(name: 'logo_path') String? logoPath,
		String? name,
		@JsonKey(name: 'origin_country') String? originCountry,
	}) = _ProductionCompany;

	factory ProductionCompany.fromJson(Map<String, dynamic> json) => _$ProductionCompanyFromJson(json);
}