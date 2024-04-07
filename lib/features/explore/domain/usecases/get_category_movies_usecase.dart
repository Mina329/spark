import 'package:dartz/dartz.dart';
import 'package:spark/core/errors/failure.dart';
import 'package:spark/core/usecase/usecase.dart';
import 'package:spark/features/explore/domain/repos/explore_repo.dart';
import 'package:spark/features/home/domain/entities/movie_mini_result_entity.dart';

class GetCategoryMoviesUsecase
    extends UseCase<List<MovieMiniResultEntity>, (int, String)> {
  final ExploreRepo exploreRepo;

  GetCategoryMoviesUsecase({required this.exploreRepo});

  @override
  Future<Either<Failure, List<MovieMiniResultEntity>>> execute(
      [(int, String)? inputs]) async {
    return await exploreRepo.getCategoryMovies(inputs!.$1, inputs.$2);
  }
}
