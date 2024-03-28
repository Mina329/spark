import 'package:dartz/dartz.dart';
import 'package:spark/core/errors/failure.dart';
import 'package:spark/core/usecase/usecase.dart';
import 'package:spark/features/home/domain/repos/home_repo.dart';

class RemoveShowFromListUsecase extends UseCase<void, (String, int)> {
  final HomeRepo homeRepo;

  RemoveShowFromListUsecase({required this.homeRepo});

  @override
  Future<Either<Failure, void>> execute([(String, int)? inputs]) async {
    return await homeRepo.removeShowFromList(inputs!.$1, inputs.$2);
  }
}
