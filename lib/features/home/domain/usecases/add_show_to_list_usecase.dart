import 'package:dartz/dartz.dart';
import 'package:spark/core/errors/failure.dart';
import 'package:spark/core/usecase/usecase.dart';
import 'package:spark/features/home/domain/repos/home_repo.dart';
import 'package:spark/features/lists/domain/entities/show_mini_result_entity.dart';

class AddShowToListUsecase extends UseCase<void, (String, ShowMiniResultEntity)> {
  final HomeRepo homeRepo;

  AddShowToListUsecase({required this.homeRepo});

  @override
  Future<Either<Failure, void>> execute(
      [(String, ShowMiniResultEntity)? inputs]) async {
    return await homeRepo.addShowToList(inputs!.$1, inputs.$2);
  }
}
