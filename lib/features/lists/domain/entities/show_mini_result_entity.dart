import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spark/core/widgets/enums.dart';
part 'show_mini_result_entity.g.dart';

@JsonSerializable()
class ShowMiniResultEntity {
  final int id;
  final String? name;
  final String? posterPath;
  final DateTime? releaseDate;
  final List<int>? genres;
  final double? voteAverage;
  final int? voteCount;
  final ShowType? showType;

  ShowMiniResultEntity(
      {required this.id,
      required this.name,
      required this.posterPath,
      required this.releaseDate,
      required this.genres,
      required this.voteAverage,
      required this.voteCount,
      required this.showType});
  factory ShowMiniResultEntity.fromJson(Map<String, dynamic> json) =>
      _$ShowMiniResultEntityFromJson(json);

  // Method for serialization to JSON
  Map<String, dynamic> toJson() => _$ShowMiniResultEntityToJson(this);
}
