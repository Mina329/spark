import 'package:dartz/dartz.dart';
import 'package:spark/core/errors/failure.dart';
import 'package:spark/core/usecase/usecase.dart';
import 'package:spark/features/home/domain/entities/season_result_entity.dart';
import 'package:spark/features/home/domain/repos/home_repo.dart';

class GetSeasonDetailsUsecase extends UseCase<SeasonResultEntity, (int, int)> {
  final HomeRepo homeRepo;

  GetSeasonDetailsUsecase({required this.homeRepo});

  @override
  Future<Either<Failure, SeasonResultEntity>> execute(
      [(int, int)? inputs]) async {
    return await homeRepo.getSeasonDetails(inputs!.$1, inputs.$2);
  }
}
