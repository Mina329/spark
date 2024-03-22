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

  Map<String, dynamic> toJson() => {
        'id': id,
        'voteAverage': voteAverage,
        'releaseDate': releaseDate?.toIso8601String(),
        'posterPath': posterPath,
        'genres': genres,
        'showType': showType?.toString().split('.').last,
        'name': name,
        'voteCount': voteCount,
      };

  factory TvShowMiniResultEntity.fromJson(Map<String, dynamic> json) =>
      TvShowMiniResultEntity(
        id: json['id'],
        voteAverage: json['voteAverage']?.toDouble(),
        releaseDate: json['releaseDate'] == null
            ? null
            : DateTime.parse(json['releaseDate']),
        posterPath: json['posterPath'],
        genres: List<int>.from(json['genres']),
        showType: ShowType.values.firstWhere(
          (e) => e.toString().split('.').last == json['showType'],
        ),
        name: json['name'],
        voteCount: json['voteCount'],
      );
}
