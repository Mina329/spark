import 'package:dartz/dartz.dart';
import 'package:spark/core/errors/failure.dart';
import 'package:spark/core/usecase/usecase.dart';
import 'package:spark/features/profile/domain/entities/user_info_entity.dart';
import 'package:spark/features/profile/domain/repos/profile_repo.dart';

class GetUserInfoUsecase extends UseCase<UserInfoEntity, void> {
  final ProfileRepo profileRepo;

  GetUserInfoUsecase({required this.profileRepo});

  @override
  Future<Either<Failure, UserInfoEntity>> execute([void inputs]) async {
    return await profileRepo.getUserInfo();
  }
}
