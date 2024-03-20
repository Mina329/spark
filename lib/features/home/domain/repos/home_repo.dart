import 'package:dartz/dartz.dart';
import 'package:spark/core/errors/failure.dart';
import 'package:spark/features/home/domain/entities/movie_mini_result_entity.dart';
import 'package:spark/features/home/domain/entities/tv_show_mini_result_entity.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<MovieMiniResultEntity>>> getTrendingMovies(
      int page);
  Future<Either<Failure, List<TvShowMiniResultEntity>>> getTrendingTvShows(
      int page);
  Future<Either<Failure, List<MovieMiniResultEntity>>> getNowPlayingMovies(
      int page);
}
