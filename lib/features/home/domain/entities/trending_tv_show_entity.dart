class TrendingTvShowEntity {
  final int id;
  final double? voteAverage;
  final DateTime? releaseDate;
  final String? posterPath;

  TrendingTvShowEntity(
      {required this.id, this.voteAverage, this.releaseDate, this.posterPath});
}
