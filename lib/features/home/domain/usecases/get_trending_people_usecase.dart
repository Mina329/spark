import 'package:dartz/dartz.dart';
import 'package:spark/core/errors/failure.dart';
import 'package:spark/core/usecase/usecase.dart';
import 'package:spark/features/home/domain/entities/person_mini_result_entity.dart';
import 'package:spark/features/home/domain/repos/home_repo.dart';

class GetTrendingPeopleUsecase
    extends UseCase<List<PersonMiniResultEntity>, int> {
  final HomeRepo homeRepo;

  GetTrendingPeopleUsecase({required this.homeRepo});

  @override
  Future<Either<Failure, List<PersonMiniResultEntity>>> execute(
      [int? inputs]) async {
    return await homeRepo.getTrendingPeople(inputs!);
  }
}
