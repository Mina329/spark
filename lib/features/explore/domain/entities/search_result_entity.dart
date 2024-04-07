import 'package:spark/core/widgets/enums.dart';

class SearchResultEntity {
  final int id;
  final String? posterPath;
  final DateTime? releaseDate;
  final List<int>? genreIds;
  final double? averageRating;
  final int? voteCount;
  final String? name;
  final ShowType showType;
  final String? personKnownFor;
  final String? personMostKnownForName;
  final DateTime? personMostKnownForDate;

  SearchResultEntity(
      {required this.id,
      required this.posterPath,
      required this.releaseDate,
      required this.genreIds,
      required this.averageRating,
      required this.voteCount,
      required this.name,
      required this.showType,
      required this.personKnownFor,
      required this.personMostKnownForName,
      required this.personMostKnownForDate});
}
