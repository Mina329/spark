import 'package:dartz/dartz.dart';
import 'package:spark/core/errors/failure.dart';
import 'package:spark/core/usecase/usecase.dart';
import 'package:spark/features/auth/domain/repos/auth_repo.dart';

class ForgetPasswordUsecase extends UseCase<void, String> {
  final AuthRepo authRepo;

  ForgetPasswordUsecase({required this.authRepo});

  @override
  Future<Either<Failure, void>> execute([String? inputs]) async {
    return await authRepo.forgetPassword(inputs!);
  }
}
