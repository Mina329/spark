import 'package:spark/features/home/data/models/movie_mini_result/movie_mini_result.dart';
import 'package:spark/features/home/data/models/tv_show_mini_result/tv_show_mini_result.dart';
import 'package:spark/features/home/domain/entities/movie_mini_result_entity.dart';
import 'package:spark/features/home/domain/entities/tv_show_mini_result_entity.dart';

extension TrendingMovieX on MovieMiniResult {
  MovieMiniResultEntity toEntity() {
    return MovieMiniResultEntity(
        id: id!,
        voteAverage: voteAverage,
        releaseDate: DateTime.parse(releaseDate ?? '0000-00-00'),
        posterPath: posterPath,
        genres: genreIds);
  }
}

extension TrendingTvShowX on TvShowMiniResult {
  TvShowMiniResultEntity toEntity() {
    return TvShowMiniResultEntity(
        id: id!,
        voteAverage: voteAverage,
        releaseDate: DateTime.parse(firstAirDate ?? '0000-00-00'),
        posterPath: posterPath,
        genres: genreIds);
  }
}
