import 'package:dartz/dartz.dart';
import 'package:spark/core/errors/failure.dart';
import 'package:spark/core/usecase/usecase.dart';
import 'package:spark/features/profile/domain/repos/profile_repo.dart';

class SignOutUsecase extends UseCase<void, void> {
  final ProfileRepo profileRepo;

  SignOutUsecase({required this.profileRepo});

  @override
  Future<Either<Failure, void>> execute([void inputs]) async {
    return await profileRepo.signOut();
  }
}
