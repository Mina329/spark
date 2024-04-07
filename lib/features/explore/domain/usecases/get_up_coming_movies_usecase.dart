import 'package:dartz/dartz.dart';
import 'package:spark/core/errors/failure.dart';
import 'package:spark/core/usecase/usecase.dart';
import 'package:spark/features/explore/domain/repos/explore_repo.dart';
import 'package:spark/features/home/domain/entities/movie_mini_result_entity.dart';

class GetUpComingMoviesUsecase
    extends UseCase<List<MovieMiniResultEntity>, int> {
  final ExploreRepo exploreRepo;

  GetUpComingMoviesUsecase({required this.exploreRepo});

  @override
  Future<Either<Failure, List<MovieMiniResultEntity>>> execute(
      [int? inputs]) async {
    return await exploreRepo.getUpComingMovies(inputs!);
  }
}
