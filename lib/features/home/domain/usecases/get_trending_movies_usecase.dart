import 'package:dartz/dartz.dart';
import 'package:spark/core/errors/failure.dart';
import 'package:spark/core/usecase/usecase.dart';
import 'package:spark/features/home/domain/entities/trending_movie_entity.dart';
import 'package:spark/features/home/domain/repos/home_repo.dart';

class GetTrendingMoviesUsecase extends UseCase<List<TrendingMovieEntity>, int> {
  final HomeRepo homeRepo;

  GetTrendingMoviesUsecase({required this.homeRepo});

  @override
  Future<Either<Failure, List<TrendingMovieEntity>>> execute(
      [int? inputs]) async {
    return await homeRepo.getTrendingMovies(inputs!);
  }
}
