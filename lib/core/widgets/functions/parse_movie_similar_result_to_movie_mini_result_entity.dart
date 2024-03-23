import 'package:spark/core/widgets/enums.dart';
import 'package:spark/features/home/data/models/movie_result/movie_similar_result.dart';
import 'package:spark/features/home/domain/entities/movie_mini_result_entity.dart';
import 'package:spark/features/home/domain/entities/tv_show_mini_result_entity.dart';

import '../../../features/home/data/models/tv_result/tv_similar_result.dart';

List<MovieMiniResultEntity> parseMovieSimilarResultToMovieMiniResultEntity(
    List<MovieSimilarResult>? moviesSimilar) {
  List<MovieMiniResultEntity> movies = [];
  for (MovieSimilarResult moviesimilar in moviesSimilar ?? []) {
    movies.add(
      MovieMiniResultEntity(
        id: moviesimilar.id!,
        voteAverage: moviesimilar.voteAverage,
        releaseDate: DateTime.tryParse(moviesimilar.releaseDate ?? ''),
        posterPath: moviesimilar.posterPath,
        genres: moviesimilar.genreIds,
        showType: ShowType.Movie,
        name: moviesimilar.title,
        voteCount: moviesimilar.voteCount,
      ),
    );
  }
  return movies;
}

List<TvShowMiniResultEntity> parseTvimilarResultToTvMiniResultEntity(
    List<TvSimilarResult>? showsSimilar) {
  List<TvShowMiniResultEntity> shows = [];
  for (TvSimilarResult showsimilar in showsSimilar ?? []) {
    shows.add(
      TvShowMiniResultEntity(
        id: showsimilar.id!,
        voteAverage: showsimilar.voteAverage?.toDouble(),
        releaseDate: DateTime.tryParse(showsimilar.firstAirDate ?? ''),
        posterPath: showsimilar.posterPath,
        genres: showsimilar.genreIds,
        showType: ShowType.TV,
        name: showsimilar.name,
        voteCount: showsimilar.voteCount,
      ),
    );
  }
  return shows;
}
