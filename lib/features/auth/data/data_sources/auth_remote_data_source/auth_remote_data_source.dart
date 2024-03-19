import 'package:spark/features/auth/data/models/genre_model.dart';

abstract class AuthRemoteDataSource {
  Future<List<GenreModel>> getUserGenres();
}
