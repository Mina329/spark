import 'package:spark/core/widgets/enums.dart';

class MovieMiniResultEntity {
  final int id;
  final double? voteAverage;
  final String? name;
  final int? voteCount;
  final DateTime? releaseDate;
  final String? posterPath;
  final List<int>? genres;
  final ShowType? showType;
  MovieMiniResultEntity({
    required this.id,
    this.voteAverage,
    this.releaseDate,
    this.posterPath,
    this.genres,
    this.showType,
    this.name,
    this.voteCount,
  });
}
