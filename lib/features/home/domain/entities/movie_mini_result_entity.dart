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
    required this.voteAverage,
    required this.releaseDate,
    required this.posterPath,
    required this.genres,
    required this.showType,
    required this.name,
    required this.voteCount,
  });
}
