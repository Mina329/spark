import 'package:dartz/dartz.dart';
import 'package:spark/core/errors/failure.dart';
import 'package:spark/features/explore/domain/entities/search_result_entity.dart';
import 'package:spark/features/home/domain/entities/movie_mini_result_entity.dart';
import 'package:spark/features/home/domain/entities/person_mini_result_entity.dart';
import 'package:spark/features/home/domain/entities/tv_show_mini_result_entity.dart';

abstract class ExploreRepo {
  Future<Either<Failure, List<SearchResultEntity>>> getSearchResult(
      int page, String query);
  Future<Either<Failure, List<MovieMiniResultEntity>>> getPopularMovies(
      int page);
  Future<Either<Failure, List<MovieMiniResultEntity>>> getTopRatedMovies(
      int page);
  Future<Either<Failure, List<MovieMiniResultEntity>>> getUpComingMovies(
      int page);
  Future<Either<Failure, List<TvShowMiniResultEntity>>> getAiringTodayTvShows(
      int page);
  Future<Either<Failure, List<TvShowMiniResultEntity>>> getOnTheAirTvShows(
      int page);
  Future<Either<Failure, List<TvShowMiniResultEntity>>> getPopularTvShows(
      int page);
  Future<Either<Failure, List<TvShowMiniResultEntity>>> getTopRatedTvShows(
      int page);
  Future<Either<Failure, List<PersonMiniResultEntity>>> getPopularCelebrities(
      int page);
}
