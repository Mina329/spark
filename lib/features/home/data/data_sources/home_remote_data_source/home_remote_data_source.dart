import 'package:spark/features/home/domain/entities/trending_movie_entity.dart';
import 'package:spark/features/home/domain/entities/trending_tv_show_entity.dart';

abstract class HomeRemoteDataSource {
  Future<List<TrendingMovieEntity>> getTredingMovies(int page);
  Future<List<TrendingTvShowEntity>> getTredingTvShows(int page);
}
