import 'package:dartz/dartz.dart';
import 'package:spark/core/errors/failure.dart';
import 'package:spark/core/usecase/usecase.dart';
import 'package:spark/features/home/domain/entities/movie_mini_result_entity.dart';
import 'package:spark/features/home/domain/repos/home_repo.dart';

class GetNowPlayingMoviesUsecase extends UseCase<List<MovieMiniResultEntity>, int> {
  final HomeRepo homeRepo;

  GetNowPlayingMoviesUsecase({required this.homeRepo});

  @override
  Future<Either<Failure, List<MovieMiniResultEntity>>> execute(
      [int? inputs]) async {
    return await homeRepo.getNowPlayingMovies(inputs!);
  }
}
