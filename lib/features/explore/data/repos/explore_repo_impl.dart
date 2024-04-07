import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:spark/core/errors/failure.dart';
import 'package:spark/core/errors/server_failure.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/features/explore/data/data_source/explore_remote_data_source/explore_remote_data_source.dart';
import 'package:spark/features/explore/domain/entities/search_result_entity.dart';
import 'package:spark/features/explore/domain/repos/explore_repo.dart';

class ExploreRepoImpl extends ExploreRepo {
  final ExploreRemoteDataSource exploreRemoteDataSource;

  ExploreRepoImpl({required this.exploreRemoteDataSource});
  @override
  Future<Either<Failure, List<SearchResultEntity>>> getSearchResult(
      int page, String query) async {
    try {
      var results = await exploreRemoteDataSource.getSearchResult(page, query);
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
}
