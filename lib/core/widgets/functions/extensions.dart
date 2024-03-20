import 'package:spark/features/home/data/models/trending_movie/trending_movie.dart';
import 'package:spark/features/home/domain/entities/trending_movie_entity.dart';

extension TrendingMovieX on TrendingMovie {
  TrendingMovieEntity toEntity() {
    return TrendingMovieEntity(
      id: id!,
      voteAverage: voteAverage,
      releaseDate: DateTime.parse(releaseDate ?? '0000-00-00'),
      posterPath: posterPath,
    );
  }
}
