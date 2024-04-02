import 'package:dartz/dartz.dart';
import 'package:spark/core/errors/failure.dart';
import 'package:spark/core/usecase/usecase.dart';
import 'package:spark/features/lists/domain/repos/lists_repo.dart';

class DeleteListUsecase extends UseCase<void, String> {
  final ListsRepo listsRepo;

  DeleteListUsecase({required this.listsRepo});

  @override
  Future<Either<Failure, void>> execute([String? inputs]) async {
    return await listsRepo.deleteList(inputs!);
  }
}
