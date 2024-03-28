import 'package:dartz/dartz.dart';
import 'package:spark/core/errors/failure.dart';
import 'package:spark/core/widgets/enums.dart';
import 'package:spark/features/home/domain/entities/movie_mini_result_entity.dart';
import 'package:spark/features/home/domain/entities/person_mini_result_entity.dart';
import 'package:spark/features/home/domain/entities/person_result_entity.dart';
import 'package:spark/features/home/domain/entities/review_entity.dart';
import 'package:spark/features/home/domain/entities/season_result_entity.dart';
import 'package:spark/features/home/domain/entities/show_result_entity.dart';
import 'package:spark/features/home/domain/entities/tv_show_mini_result_entity.dart';
import 'package:spark/features/lists/domain/entities/show_mini_result_entity.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<MovieMiniResultEntity>>> getTrendingMovies(
      int page);
  Future<Either<Failure, List<TvShowMiniResultEntity>>> getTrendingTvShows(
      int page);
  Future<Either<Failure, List<MovieMiniResultEntity>>> getNowPlayingMovies(
      int page);
  Future<Either<Failure, List<String>>> getNowPlayingMoviesTrailer(
      List<MovieMiniResultEntity> movies);
  Future<Either<Failure, List<PersonMiniResultEntity>>> getTrendingPeople(
      int page);
  Future<Either<Failure, List<dynamic>>> getPicksForYou(int page);
  Future<Either<Failure, PersonResultEntity>> getPersonDetails(int id);
  Future<Either<Failure, void>> addFavourite(dynamic show, ShowType showType);
  Future<Either<Failure, void>> deleteFavourite(int id, ShowType showType);
  Future<Either<Failure, bool>> checkFavourite(int id, ShowType showType);
  Future<Either<Failure, ShowResultEntity>> getShowDetails(
      int id, ShowType showType);
  Future<Either<Failure, SeasonResultEntity>> getSeasonDetails(
      int showId, int seasonNumber);
  Future<Either<Failure, List<ReviewEntity>>> getReviews(
      int page, int showId, ShowType showType);
  Future<Either<Failure, void>> addShowToList(
      String listId, ShowMiniResultEntity show);
  Future<Either<Failure, void>> removeShowFromList(
      String listId, int showId);
}
