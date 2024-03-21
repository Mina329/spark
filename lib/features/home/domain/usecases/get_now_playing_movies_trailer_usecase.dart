import 'package:dartz/dartz.dart';
import 'package:spark/core/errors/failure.dart';
import 'package:spark/core/usecase/usecase.dart';
import 'package:spark/features/home/domain/entities/movie_mini_result_entity.dart';
import 'package:spark/features/home/domain/repos/home_repo.dart';

class GetNowPlayingMoviesTrailersUsecase
    extends UseCase<List<String>, List<MovieMiniResultEntity>> {
  final HomeRepo homeRepo;

  GetNowPlayingMoviesTrailersUsecase({required this.homeRepo});

  @override
  Future<Either<Failure, List<String>>> execute(
      [List<MovieMiniResultEntity>? inputs]) async {
    return await homeRepo.getNowPlayingMoviesTrailer(inputs!);
  }
}
