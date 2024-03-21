import 'package:dartz/dartz.dart';
import 'package:spark/core/errors/failure.dart';
import 'package:spark/core/usecase/usecase.dart';
import 'package:spark/features/home/domain/repos/home_repo.dart';

class GetPicksForYouUsecase extends UseCase<List<dynamic>, void> {
  final HomeRepo homeRepo;

  GetPicksForYouUsecase({required this.homeRepo});

  @override
  Future<Either<Failure, List>> execute([void inputs]) async {
    return await homeRepo.getPicksForYou();
  }
}
