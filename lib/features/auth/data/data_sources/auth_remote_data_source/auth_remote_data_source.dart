import 'package:spark/features/auth/data/models/genre_model.dart';

abstract class AuthRemoteDataSource {
  Future<bool> getUserGenresFlag();
  Future<void> setUserGenres(List<GenreModel> genres);
  Future<void> setUserGenresFlag();
}
