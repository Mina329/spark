import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:spark/core/errors/failure.dart';
import 'package:spark/core/errors/server_failure.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/features/lists/data/data_sources/lists_remote_data_sources/lists_remote_data_source.dart';
import 'package:spark/features/lists/domain/entities/list_entity.dart';
import 'package:spark/features/lists/domain/repos/lists_repo.dart';

class ListsRepoImpl extends ListsRepo {
  final ListsRemoteDataSource listsRemoteDataSource;

  ListsRepoImpl({required this.listsRemoteDataSource});
  @override
  Future<Either<Failure, List<ListEntity>>> getUserLists() async {
    try {
      var results = await listsRemoteDataSource.getUserLists();
      return right(results);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(e));
    } catch (e) {
      return left(
        Failure(
          message: StringsManager.somethingWentWrong,
        ),
      );
    }
  }

  @override
  Future<Either<Failure, void>> createNewList(ListEntity list) async {
    try {
      await listsRemoteDataSource.createNewList(list);
      return right(null);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(e));
    } catch (e) {
      return left(
        Failure(
          message: StringsManager.somethingWentWrong,
        ),
      );
    }
  }

  @override
  Future<Either<Failure, void>> deleteList(String listId) async {
    try {
      await listsRemoteDataSource.deleteList(listId);
      return right(null);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(e));
    } catch (e) {
      return left(
        Failure(
          message: StringsManager.somethingWentWrong,
        ),
      );
    }
  }
}
