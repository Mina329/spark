import 'package:dartz/dartz.dart';
import 'package:spark/core/errors/failure.dart';
import 'package:spark/core/usecase/usecase.dart';
import 'package:spark/features/auth/domain/entities/user_data.dart';
import 'package:spark/features/auth/domain/repos/auth_repo.dart';

class LogInWithEmailAndPasswordUsecase extends UseCase<void, UserData> {
  final AuthRepo authRepo;

  LogInWithEmailAndPasswordUsecase({required this.authRepo});

  @override
  Future<Either<Failure, void>> execute([UserData? inputs]) async {
    return await authRepo.logInUserWithEmailAndPassword(inputs!);
  }
}
