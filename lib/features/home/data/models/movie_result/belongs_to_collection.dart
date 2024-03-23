import 'package:freezed_annotation/freezed_annotation.dart';

part 'belongs_to_collection.freezed.dart';
part 'belongs_to_collection.g.dart';

@freezed
class BelongsToCollection with _$BelongsToCollection {
	factory BelongsToCollection({
		int? id,
		String? name,
		@JsonKey(name: 'poster_path') String? posterPath,
		@JsonKey(name: 'backdrop_path') String? backdropPath,
	}) = _BelongsToCollection;

	factory BelongsToCollection.fromJson(Map<String, dynamic> json) => _$BelongsToCollectionFromJson(json);
}