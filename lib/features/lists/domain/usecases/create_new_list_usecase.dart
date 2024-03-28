import 'package:dartz/dartz.dart';
import 'package:spark/core/errors/failure.dart';
import 'package:spark/core/usecase/usecase.dart';
import 'package:spark/features/lists/domain/entities/list_entity.dart';
import 'package:spark/features/lists/domain/repos/lists_repo.dart';

class CreateNewListUsecase extends UseCase<void, ListEntity> {
  final ListsRepo listsRepo;

  CreateNewListUsecase({required this.listsRepo});

  @override
  Future<Either<Failure, void>> execute([ListEntity? inputs]) async {
    return await listsRepo.createNewList(inputs!);
  }
}
