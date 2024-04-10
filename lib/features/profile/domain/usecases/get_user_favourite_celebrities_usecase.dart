import 'package:dartz/dartz.dart';
import 'package:spark/core/errors/failure.dart';
import 'package:spark/core/usecase/usecase.dart';
import 'package:spark/features/home/domain/entities/person_mini_result_entity.dart';
import 'package:spark/features/profile/domain/repos/profile_repo.dart';

class GetUserFavouriteCelebritiesUsecase
    extends UseCase<List<PersonMiniResultEntity>, void> {
  final ProfileRepo profileRepo;

  GetUserFavouriteCelebritiesUsecase({required this.profileRepo});

  @override
  Future<Either<Failure, List<PersonMiniResultEntity>>> execute(
      [void inputs]) async {
    return await profileRepo.getUserFavouriteCelebrities();
  }
}
