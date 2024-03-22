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

  Map<String, dynamic> toJson() => {
        'id': id,
        'voteAverage': voteAverage,
        'name': name,
        'voteCount': voteCount,
        'releaseDate': releaseDate?.toIso8601String(),
        'posterPath': posterPath,
        'genres': genres,
        'showType': showType?.toString().split('.').last,
      };

  factory MovieMiniResultEntity.fromJson(Map<String, dynamic> json) =>
      MovieMiniResultEntity(
        id: json['id'],
        voteAverage: json['voteAverage']?.toDouble(),
        name: json['name'],
        voteCount: json['voteCount'],
        releaseDate: json['releaseDate'] != null
            ? DateTime.parse(json['releaseDate'])
            : null,
        posterPath: json['posterPath'],
        genres: List<int>.from(json['genres'] ?? []),
        showType: ShowType.values.firstWhere(
          (e) => e.toString() == 'ShowType.${json['showType']}',
        ),
      );
}
