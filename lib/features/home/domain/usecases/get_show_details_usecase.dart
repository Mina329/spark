import 'package:dartz/dartz.dart';
import 'package:spark/core/errors/failure.dart';
import 'package:spark/core/usecase/usecase.dart';
import 'package:spark/core/widgets/enums.dart';
import 'package:spark/features/home/domain/entities/show_result_entity.dart';
import 'package:spark/features/home/domain/repos/home_repo.dart';

class GetShowDetailsUsecase extends UseCase<ShowResultEntity, (int, ShowType)> {
  final HomeRepo homeRepo;

  GetShowDetailsUsecase({required this.homeRepo});

  @override
  Future<Either<Failure, ShowResultEntity>> execute(
      [(int, ShowType)? inputs]) async {
    return await homeRepo.getShowDetails(inputs!.$1, inputs.$2);
  }
}
