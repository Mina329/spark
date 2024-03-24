import 'package:dartz/dartz.dart';
import 'package:spark/core/errors/failure.dart';
import 'package:spark/core/usecase/usecase.dart';
import 'package:spark/core/widgets/enums.dart';
import 'package:spark/features/home/domain/repos/home_repo.dart';

class DeleteFavourriteUsecase extends UseCase<void, (int, ShowType)> {
  final HomeRepo homeRepo;

  DeleteFavourriteUsecase({required this.homeRepo});

  @override
  Future<Either<Failure, void>> execute([(int, ShowType)? inputs]) async {
    return await homeRepo.deleteFavourite(inputs!.$1, inputs.$2);
  }
}
