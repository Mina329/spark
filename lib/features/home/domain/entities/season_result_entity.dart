import 'package:spark/features/home/domain/entities/episode_entity.dart';

class SeasonResultEntity {
  final int showId;
  final String? posterUrl;
  final String? seasonName;
  final DateTime? seasonDate;
  final String? seasonEpisodeNumber;
  final double? seasonVoteAverage;
  final String? seasonOverview;
  final List<EpisodeEntity>? episodes;

  SeasonResultEntity(
      {required this.showId,
      required this.posterUrl,
      required this.seasonName,
      required this.seasonDate,
      required this.seasonEpisodeNumber,
      required this.seasonVoteAverage,
      required this.seasonOverview,
      required this.episodes});
}
