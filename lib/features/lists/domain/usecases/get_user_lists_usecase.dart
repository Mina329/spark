import 'package:dartz/dartz.dart';
import 'package:spark/core/errors/failure.dart';
import 'package:spark/core/usecase/usecase.dart';
import 'package:spark/features/lists/domain/entities/list_entity.dart';
import 'package:spark/features/lists/domain/repos/lists_repo.dart';

class GetUserListsUsecase extends UseCase<List<ListEntity>, void> {
  final ListsRepo listsRepo;

  GetUserListsUsecase({required this.listsRepo});

  @override
  Future<Either<Failure, List<ListEntity>>> execute([void inputs]) async {
    return await listsRepo.getUserLists();
  }
}
