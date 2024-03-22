import 'package:dartz/dartz.dart';
import 'package:spark/core/errors/failure.dart';
import 'package:spark/core/usecase/usecase.dart';
import 'package:spark/features/home/domain/entities/person_result_entity.dart';
import 'package:spark/features/home/domain/repos/home_repo.dart';

class AddFavouritePersonUsecase extends UseCase<void, PersonResultEntity> {
  final HomeRepo homeRepo;

  AddFavouritePersonUsecase({required this.homeRepo});

  @override
  Future<Either<Failure, void>> execute([PersonResultEntity? inputs]) async {
    return await homeRepo.addFavouritePerson(inputs!);
  }
}
