import 'package:dartz/dartz.dart';
import 'package:spark/core/errors/failure.dart';
import 'package:spark/core/usecase/usecase.dart';
import 'package:spark/features/explore/domain/entities/search_result_entity.dart';
import 'package:spark/features/explore/domain/repos/explore_repo.dart';

class GetSearchResultUsecase
    extends UseCase<List<SearchResultEntity>, (int, String)> {
  final ExploreRepo exploreRepo;

  GetSearchResultUsecase({required this.exploreRepo});

  @override
  Future<Either<Failure, List<SearchResultEntity>>> execute(
      [(int, String)? inputs]) async {
    return await exploreRepo.getSearchResult(inputs!.$1, inputs.$2);
  }
}
