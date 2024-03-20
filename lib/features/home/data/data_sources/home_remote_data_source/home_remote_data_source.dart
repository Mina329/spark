import 'package:spark/features/home/domain/entities/trending_movie_entity.dart';

abstract class HomeRemoteDataSource {
  Future<List<TrendingMovieEntity>> getTredingMovies(int page);
}
