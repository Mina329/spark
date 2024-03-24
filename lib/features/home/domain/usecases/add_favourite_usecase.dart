import 'package:dartz/dartz.dart';
import 'package:spark/core/errors/failure.dart';
import 'package:spark/core/usecase/usecase.dart';
import 'package:spark/core/widgets/enums.dart';
import 'package:spark/features/home/domain/repos/home_repo.dart';

class AddFavouriteUsecase extends UseCase<void, (dynamic, ShowType)> {
  final HomeRepo homeRepo;

  AddFavouriteUsecase({required this.homeRepo});

  @override
  Future<Either<Failure, void>> execute([(dynamic, ShowType)? inputs]) async {
    return await homeRepo.addFavourite(inputs!.$1, inputs.$2);
  }
}
