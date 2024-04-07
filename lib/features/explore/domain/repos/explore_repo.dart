import 'package:dartz/dartz.dart';
import 'package:spark/core/errors/failure.dart';
import 'package:spark/features/explore/domain/entities/search_result_entity.dart';

abstract class ExploreRepo {
  Future<Either<Failure, List<SearchResultEntity>>> getSearchResult(
      int page, String query);
}
