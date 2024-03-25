import 'package:dartz/dartz.dart';
import 'package:spark/core/errors/failure.dart';
import 'package:spark/core/usecase/usecase.dart';
import 'package:spark/core/widgets/enums.dart';
import 'package:spark/features/home/domain/entities/review_entity.dart';
import 'package:spark/features/home/domain/repos/home_repo.dart';

class GetReviewsUsecase
    extends UseCase<List<ReviewEntity>, (int, int, ShowType)> {
  final HomeRepo homeRepo;

  GetReviewsUsecase({required this.homeRepo});

  @override
  Future<Either<Failure, List<ReviewEntity>>> execute(
      [(int, int, ShowType)? inputs]) async {
    return await homeRepo.getReviews(inputs!.$1, inputs.$2, inputs.$3);
  }
}
