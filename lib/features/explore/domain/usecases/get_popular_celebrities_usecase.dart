import 'package:dartz/dartz.dart';
import 'package:spark/core/errors/failure.dart';
import 'package:spark/core/usecase/usecase.dart';
import 'package:spark/features/explore/domain/repos/explore_repo.dart';
import 'package:spark/features/home/domain/entities/person_mini_result_entity.dart';

class GetPopularCelebritiesUsecase
    extends UseCase<List<PersonMiniResultEntity>, int> {
  final ExploreRepo exploreRepo;

  GetPopularCelebritiesUsecase({required this.exploreRepo});

  @override
  Future<Either<Failure, List<PersonMiniResultEntity>>> execute(
      [int? inputs]) async {
    return await exploreRepo.getPopularCelebrities(inputs!);
  }
}
