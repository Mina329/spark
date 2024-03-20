import 'package:spark/core/utils/api_service.dart';
import 'package:spark/core/widgets/functions/extensions.dart';
import 'package:spark/features/home/data/data_sources/home_remote_data_source/home_remote_data_source.dart';
import 'package:spark/features/home/data/models/trending_movie/trending_movie.dart';
import 'package:spark/features/home/data/models/trending_tv_show/trending_tv_show.dart';
import 'package:spark/features/home/domain/entities/trending_movie_entity.dart';
import 'package:spark/features/home/domain/entities/trending_tv_show_entity.dart';

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  final ApiService apiService;

  HomeRemoteDataSourceImpl({required this.apiService});
  @override
  Future<List<TrendingMovieEntity>> getTredingMovies(int page) async {
    var data =
        await apiService.get(endPoint: '/trending/movie/week?page=$page');
    List<TrendingMovieEntity> items = [];
    for (var item in data['results']) {
      items.add(TrendingMovie.fromJson(item).toEntity());
    }
    return items;
  }

  @override
  Future<List<TrendingTvShowEntity>> getTredingTvShows(int page) async {
    var data =
        await apiService.get(endPoint: '/trending/tv/week?page=$page');
    List<TrendingTvShowEntity> items = [];
    for (var item in data['results']) {
      items.add(TrendingTvShow.fromJson(item).toEntity());
    }
    return items;
  }
}