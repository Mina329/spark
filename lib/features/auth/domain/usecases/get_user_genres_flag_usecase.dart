import 'package:dartz/dartz.dart';
import 'package:spark/core/errors/failure.dart';
import 'package:spark/core/usecase/usecase.dart';
import 'package:spark/features/auth/domain/repos/auth_repo.dart';

class GetUserGenreFlagUsecase extends UseCase<bool, void> {
  final AuthRepo authRepo;

  GetUserGenreFlagUsecase({required this.authRepo});

  @override
  Future<Either<Failure, bool>> execute([void inputs]) async {
    return await authRepo.getUserGenresFlag();
  }
}
