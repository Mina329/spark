import 'package:dartz/dartz.dart';
import 'package:spark/core/errors/failure.dart';
import 'package:spark/core/usecase/usecase.dart';
import 'package:spark/core/widgets/enums.dart';
import 'package:spark/features/home/domain/repos/home_repo.dart';

class CheckFavouriteUsecase extends UseCase<bool, (int, ShowType)> {
  final HomeRepo homeRepo;

  CheckFavouriteUsecase({required this.homeRepo});

  @override
  Future<Either<Failure, bool>> execute([(int, ShowType)? inputs]) async {
    return await homeRepo.checkFavourite(inputs!.$1, inputs.$2);
  }
}
