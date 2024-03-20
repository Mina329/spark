import 'package:dartz/dartz.dart';
import 'package:spark/core/errors/failure.dart';
import 'package:spark/features/home/domain/entities/trending_movie_entity.dart';
import 'package:spark/features/home/domain/entities/trending_tv_show_entity.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<TrendingMovieEntity>>> getTrendingMovies(
      int page);
  Future<Either<Failure, List<TrendingTvShowEntity>>> getTrendingTvShows(
      int page);
}
