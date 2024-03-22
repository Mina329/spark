import 'package:dartz/dartz.dart';
import 'package:spark/core/errors/failure.dart';
import 'package:spark/core/usecase/usecase.dart';
import 'package:spark/features/home/domain/entities/person_result_entity.dart';
import 'package:spark/features/home/domain/repos/home_repo.dart';

class GetPersonDetailsUsecase extends UseCase<PersonResultEntity, int> {
  final HomeRepo homeRepo;

  GetPersonDetailsUsecase({required this.homeRepo});

  @override
  Future<Either<Failure, PersonResultEntity>> execute([int? inputs]) async {
    return await homeRepo.getPersonDetails(inputs!);
  }
}
