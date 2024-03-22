import 'package:dartz/dartz.dart';
import 'package:spark/core/errors/failure.dart';
import 'package:spark/core/usecase/usecase.dart';
import 'package:spark/features/home/domain/repos/home_repo.dart';

class DeleteFavourritePersonUsecase extends UseCase<void, int> {
  final HomeRepo homeRepo;

  DeleteFavourritePersonUsecase({required this.homeRepo});

  @override
  Future<Either<Failure, void>> execute([int? inputs]) async {
    return await homeRepo.deleteFavouritePerson(inputs!);
  }
}
