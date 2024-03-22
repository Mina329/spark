import 'package:spark/features/home/domain/entities/image_entity.dart';
import 'package:spark/features/home/domain/entities/movie_mini_result_entity.dart';
import 'package:spark/features/home/domain/entities/tv_show_mini_result_entity.dart';

class PersonResultEntity {
  final int id;
  final String? name;
  final String? profileUrl;
  final String? role;
  final String? biography;
  final String? birthLocation;
  final DateTime? birthDate;
  final DateTime? deathDate;
  final List<ImageEntity>? images;
  final List<MovieMiniResultEntity>? relatedMovies;
  final List<TvShowMiniResultEntity>? relatedTvShows;

  PersonResultEntity({
    required this.id,
    this.name,
    this.profileUrl,
    this.role,
    this.biography,
    this.birthLocation,
    this.birthDate,
    this.deathDate,
    this.images,
    this.relatedMovies,
    this.relatedTvShows,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'profileUrl': profileUrl,
      'role': role,
      'biography': biography,
      'birthLocation': birthLocation,
      'birthDate': birthDate?.toIso8601String(),
      'deathDate': deathDate?.toIso8601String(),
      'images': images?.map((image) => image.toJson()).toList(),
      'relatedMovies': relatedMovies?.map((movie) => movie.toJson()).toList(),
      'relatedTvShows':
          relatedTvShows?.map((tvShow) => tvShow.toJson()).toList(),
    };
  }

  factory PersonResultEntity.fromJson(Map<String, dynamic> json) {
    return PersonResultEntity(
      id: json['id'],
      name: json['name'],
      profileUrl: json['profileUrl'],
      role: json['role'],
      biography: json['biography'],
      birthLocation: json['birthLocation'],
      birthDate:
          json['birthDate'] == null ? null : DateTime.parse(json['birthDate']),
      deathDate:
          json['deathDate'] == null ? null : DateTime.parse(json['deathDate']),
      images: json['images'] != null
          ? (json['images'] as List)
              .map((imageJson) => ImageEntity.fromJson(imageJson))
              .toList()
          : null,
      relatedMovies: json['relatedMovies'] != null
          ? (json['relatedMovies'] as List)
              .map((movieJson) => MovieMiniResultEntity.fromJson(movieJson))
              .toList()
          : null,
      relatedTvShows: json['relatedTvShows'] != null
          ? (json['relatedTvShows'] as List)
              .map((tvShowJson) => TvShowMiniResultEntity.fromJson(tvShowJson))
              .toList()
          : null,
    );
  }
}
