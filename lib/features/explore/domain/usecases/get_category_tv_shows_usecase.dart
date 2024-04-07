import 'package:dartz/dartz.dart';
import 'package:spark/core/errors/failure.dart';
import 'package:spark/core/usecase/usecase.dart';
import 'package:spark/features/explore/domain/repos/explore_repo.dart';
import 'package:spark/features/home/domain/entities/tv_show_mini_result_entity.dart';

class GetCategoryTvShowsUsecase
    extends UseCase<List<TvShowMiniResultEntity>, (int, String)> {
  final ExploreRepo exploreRepo;

  GetCategoryTvShowsUsecase({required this.exploreRepo});

  @override
  Future<Either<Failure, List<TvShowMiniResultEntity>>> execute(
      [(int, String)? inputs]) async {
    return await exploreRepo.getCategoryTvShows(inputs!.$1, inputs.$2);
  }
}
