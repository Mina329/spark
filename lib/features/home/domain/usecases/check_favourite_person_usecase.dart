import 'package:dartz/dartz.dart';
import 'package:spark/core/errors/failure.dart';
import 'package:spark/core/usecase/usecase.dart';
import 'package:spark/features/home/domain/repos/home_repo.dart';

class CheckFavouritePersonUsecase extends UseCase<bool, int> {
  final HomeRepo homeRepo;

  CheckFavouritePersonUsecase({required this.homeRepo});

  @override
  Future<Either<Failure, bool>> execute([int? inputs]) async {
    return await homeRepo.checkFavouritePerson(inputs!);
  }
}
