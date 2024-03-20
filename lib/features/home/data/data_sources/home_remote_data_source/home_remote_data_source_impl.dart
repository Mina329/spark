import 'package:spark/core/utils/api_service.dart';
import 'package:spark/core/widgets/functions/extensions.dart';
import 'package:spark/features/home/data/data_sources/home_remote_data_source/home_remote_data_source.dart';
import 'package:spark/features/home/data/models/movie_mini_result/movie_mini_result.dart';
import 'package:spark/features/home/data/models/tv_show_mini_result/tv_show_mini_result.dart';
import 'package:spark/features/home/domain/entities/movie_mini_result_entity.dart';
import 'package:spark/features/home/domain/entities/tv_show_mini_result_entity.dart';

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  final ApiService apiService;

  HomeRemoteDataSourceImpl({required this.apiService});
  @override
  Future<List<MovieMiniResultEntity>> getTredingMovies(int page) async {
    var data =
        await apiService.get(endPoint: '/trending/movie/week?page=$page');
    List<MovieMiniResultEntity> items = [];
    for (var item in data['results']) {
      items.add(MovieMiniResult.fromJson(item).toEntity());
    }
    return items;
  }

  @override
  Future<List<TvShowMiniResultEntity>> getTredingTvShows(int page) async {
    var data =
        await apiService.get(endPoint: '/trending/tv/week?page=$page');
    List<TvShowMiniResultEntity> items = [];
    for (var item in data['results']) {
      items.add(TvShowMiniResult.fromJson(item).toEntity());
    }
    return items;
  }
  
  @override
  Future<List<MovieMiniResultEntity>> getNowPlayingMovies(int page) async{
     var data =
        await apiService.get(endPoint: '/movie/now_playing?page=$page');
    List<MovieMiniResultEntity> items = [];
    for (var item in data['results']) {
      items.add(MovieMiniResult.fromJson(item).toEntity());
    }
    return items;
  }
}
