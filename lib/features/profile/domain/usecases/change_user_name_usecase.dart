import 'package:dartz/dartz.dart';
import 'package:spark/core/errors/failure.dart';
import 'package:spark/core/usecase/usecase.dart';
import 'package:spark/features/profile/domain/repos/profile_repo.dart';

class ChangeUserNameUsecase extends UseCase<void, String> {
  final ProfileRepo profileRepo;

  ChangeUserNameUsecase({required this.profileRepo});

  @override
  Future<Either<Failure, void>> execute([String? inputs]) async {
    return await profileRepo.changeUserName(inputs!);
  }
}
