class TrendingMovieEntity {
  final int id;
  final double? voteAverage;
  final DateTime? releaseDate;
  final String? posterPath;

  TrendingMovieEntity(
      {required this.id, this.voteAverage, this.releaseDate, this.posterPath});
}
