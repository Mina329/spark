import 'package:dartz/dartz.dart';
import 'package:spark/core/errors/failure.dart';
import 'package:spark/core/usecase/usecase.dart';
import 'package:spark/features/home/domain/entities/trending_tv_show_entity.dart';
import 'package:spark/features/home/domain/repos/home_repo.dart';

class GetTrendingTvShowsUsecase
    extends UseCase<List<TrendingTvShowEntity>, int> {
  final HomeRepo homeRepo;

  GetTrendingTvShowsUsecase({required this.homeRepo});

  @override
  Future<Either<Failure, List<TrendingTvShowEntity>>> execute(
      [int? inputs]) async {
    return await homeRepo.getTrendingTvShows(inputs!);
  }
}
