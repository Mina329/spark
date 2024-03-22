import 'package:spark/core/widgets/enums.dart';

class TvShowMiniResultEntity {
  final int id;
  final double? voteAverage;
  final DateTime? releaseDate;
  final String? posterPath;
  final List<int>? genres;
  final ShowType? showType;
  final String? name;
  final int? voteCount;
  TvShowMiniResultEntity({
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
