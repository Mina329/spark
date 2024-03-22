import 'package:spark/core/widgets/enums.dart';
import 'package:spark/features/home/data/models/person_result/movie_cast.dart';
import 'package:spark/features/home/data/models/person_result/movie_crew.dart';
import 'package:spark/features/home/domain/entities/movie_mini_result_entity.dart';

List<MovieMiniResultEntity>? parseMovieCastAndCrewToMovieMiniResult(
    List<MovieCast>? cast, List<MovieCrew>? crew) {
  List<MovieMiniResultEntity> movies = [];
  for (var movie in cast!) {
    movies.add(
      MovieMiniResultEntity(
        id: movie.id!,
        voteAverage: movie.voteAverage,
        releaseDate: movie.releaseDate == null || movie.releaseDate!.isEmpty
            ? null
            : DateTime.parse(
                movie.releaseDate!,
              ),
        posterPath: movie.posterPath,
        genres: movie.genreIds,
        showType: ShowType.Movie,
        name: movie.title,
        voteCount: movie.voteCount,
      ),
    );
  }
  for (var movie in crew!) {
    movies.add(
      MovieMiniResultEntity(
        id: movie.id!,
        voteAverage: movie.voteAverage,
        releaseDate: movie.releaseDate == null || movie.releaseDate!.isEmpty
            ? null
            : DateTime.parse(
                movie.releaseDate!,
              ),
        posterPath: movie.posterPath,
        genres: movie.genreIds,
        showType: ShowType.Movie,
        name: movie.title,
        voteCount: movie.voteCount,
      ),
    );
  }
  return movies;
}
