class TvShowMiniResultEntity {
  final int id;
  final double? voteAverage;
  final DateTime? releaseDate;
  final String? posterPath;
  final List<int>? genres;

  TvShowMiniResultEntity({
    required this.id,
    this.voteAverage,
    this.releaseDate,
    this.posterPath,
    this.genres,
  });
}
