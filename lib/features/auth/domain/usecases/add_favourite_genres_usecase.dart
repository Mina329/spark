import 'package:dartz/dartz.dart';
import 'package:spark/core/errors/failure.dart';
import 'package:spark/core/usecase/usecase.dart';
import 'package:spark/features/auth/domain/repos/auth_repo.dart';

class AddFavouriteGenresUsecase extends UseCase<void, void> {
  final AuthRepo authRepo;

  AddFavouriteGenresUsecase({required this.authRepo});

  @override
  Future<Either<Failure, void>> execute([void inputs]) async {
    return await authRepo.addFavouriteGenres();
  }
}
