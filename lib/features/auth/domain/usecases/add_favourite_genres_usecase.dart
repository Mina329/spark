import 'package:dartz/dartz.dart';
import 'package:spark/core/errors/failure.dart';
import 'package:spark/core/usecase/usecase.dart';
import 'package:spark/features/auth/data/models/genre_model.dart';
import 'package:spark/features/auth/domain/repos/auth_repo.dart';

class AddFavouriteGenresUsecase extends UseCase<void, List<GenreModel>> {
  final AuthRepo authRepo;

  AddFavouriteGenresUsecase({required this.authRepo});

  @override
  Future<Either<Failure, void>> execute([List<GenreModel>? inputs]) async {
    return await authRepo.addFavouriteGenres(inputs!);
  }
}
