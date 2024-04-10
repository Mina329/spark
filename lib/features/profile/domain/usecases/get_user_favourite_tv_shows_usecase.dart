import 'package:dartz/dartz.dart';
import 'package:spark/core/errors/failure.dart';
import 'package:spark/core/usecase/usecase.dart';
import 'package:spark/features/lists/domain/entities/show_mini_result_entity.dart';
import 'package:spark/features/profile/domain/repos/profile_repo.dart';

class GetUserFavouriteTvShowsUsecase
    extends UseCase<List<ShowMiniResultEntity>, void> {
  final ProfileRepo profileRepo;

  GetUserFavouriteTvShowsUsecase({required this.profileRepo});

  @override
  Future<Either<Failure, List<ShowMiniResultEntity>>> execute(
      [void inputs]) async {
    return await profileRepo.getUserFavouriteTvShows();
  }
}
