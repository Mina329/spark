import 'package:spark/features/home/domain/entities/image_entity.dart';
import 'package:spark/features/home/domain/entities/person_mini_result_entity.dart';
import 'package:spark/features/home/domain/entities/review_entity.dart';
import 'package:spark/features/home/domain/entities/season_entity.dart';

class ShowResultEntity {
  final int id;
  final String? name;
  final String? posterUrl;
  final double? voteAverage;
  final double? popularity;
  final List<int>? genreIds;
  final DateTime? releaseDate;
  final String? overview;
  final String? duration;
  final List<PersonMiniResultEntity>? castAndCrew;
  final List<ImageEntity>? imagesBackdrop;
  final List<ImageEntity>? imagesPosters;
  final List<SeasonEntity>? seasons;
  final List<String>? youtubeKeys;
  final List<ReviewEntity>? review;
  final List<dynamic>? similarShows;

  ShowResultEntity({
    required this.id,
    required this.name,
    required this.posterUrl,
    required this.voteAverage,
    required this.popularity,
    required this.genreIds,
    required this.overview,
    required this.castAndCrew,
    required this.seasons,
    required this.youtubeKeys,
    required this.review,
    required this.similarShows,
    required this.imagesBackdrop,
    required this.imagesPosters,
    required this.releaseDate,
    required this.duration,
  });
}
