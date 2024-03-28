import 'package:dartz/dartz.dart';
import 'package:spark/core/errors/failure.dart';
import 'package:spark/features/lists/domain/entities/list_entity.dart';

abstract class ListsRepo {
  Future<Either<Failure, List<ListEntity>>> getUserLists();
  Future<Either<Failure, void>> createNewList(ListEntity list);
}
