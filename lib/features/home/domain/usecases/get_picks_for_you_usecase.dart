import 'package:dartz/dartz.dart';
import 'package:spark/core/errors/failure.dart';
import 'package:spark/core/usecase/usecase.dart';
import 'package:spark/features/home/domain/repos/home_repo.dart';

class GetPicksForYouUsecase extends UseCase<List<dynamic>, int> {
  final HomeRepo homeRepo;

  GetPicksForYouUsecase({required this.homeRepo});

  @override
  Future<Either<Failure, List>> execute([int? inputs]) async {
    return await homeRepo.getPicksForYou(inputs!);
  }
}
