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
    required this.name,
    required this.role,
    required this.biography,
    required this.birthLocation,
    required this.birthDate,
    required this.deathDate,
    required this.images,
    required this.relatedMovies,
    required this.relatedTvShows,
    required this.profileUrl,
  });
}
