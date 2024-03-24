class EpisodeEntity {
  final String? episodePosterUrl;
  final String? episodeTitle;
  final DateTime? episodeReleaseDate;
  final double? episodeVoteAverage;
  final int? episodeVoteCount;

  EpisodeEntity(
      {required this.episodePosterUrl,
      required this.episodeTitle,
      required this.episodeReleaseDate,
      required this.episodeVoteAverage,
      required this.episodeVoteCount});
}
