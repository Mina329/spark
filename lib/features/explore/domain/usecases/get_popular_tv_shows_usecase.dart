import 'package:dartz/dartz.dart';
import 'package:spark/core/errors/failure.dart';
import 'package:spark/core/usecase/usecase.dart';
import 'package:spark/features/explore/domain/repos/explore_repo.dart';
import 'package:spark/features/home/domain/entities/tv_show_mini_result_entity.dart';

class GetPopularTvShowsUsecase
    extends UseCase<List<TvShowMiniResultEntity>, int> {
  final ExploreRepo exploreRepo;

  GetPopularTvShowsUsecase({required this.exploreRepo});

  @override
  Future<Either<Failure, List<TvShowMiniResultEntity>>> execute(
      [int? inputs]) async {
    return await exploreRepo.getPopularTvShows(inputs!);
  }
}
