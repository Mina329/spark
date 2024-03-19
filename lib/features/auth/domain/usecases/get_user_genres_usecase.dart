import 'package:dartz/dartz.dart';
import 'package:spark/core/errors/failure.dart';
import 'package:spark/core/usecase/usecase.dart';
import 'package:spark/features/auth/data/models/genre_model.dart';
import 'package:spark/features/auth/domain/repos/auth_repo.dart';

class GetUserGenreUsecase extends UseCase<List<GenreModel>, void> {
  final AuthRepo authRepo;

  GetUserGenreUsecase({required this.authRepo});

  @override
  Future<Either<Failure, List<GenreModel>>> execute([void inputs]) async {
    return await authRepo.getUserGenres();
  }
}
