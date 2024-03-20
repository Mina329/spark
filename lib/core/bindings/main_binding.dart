import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/api_service.dart';
import 'package:spark/features/home/data/data_sources/home_remote_data_source/home_remote_data_source.dart';
import 'package:spark/features/home/data/data_sources/home_remote_data_source/home_remote_data_source_impl.dart';
import 'package:spark/features/home/data/repos/home_repo_impl.dart';
import 'package:spark/features/home/domain/repos/home_repo.dart';
import 'package:spark/features/home/domain/usecases/get_trending_movies_usecase.dart';
import 'package:spark/features/home/domain/usecases/get_trending_tv_shows_usecase.dart';
import 'package:spark/features/home/presentation/controllers/home_controllers/home_controller.dart';
import 'package:spark/features/home/presentation/controllers/home_controllers/trending_movies_controller.dart';
import 'package:spark/features/home/presentation/controllers/home_controllers/trending_tv_shows_controller.dart';
import 'package:spark/features/main/presentation/controllers/bottom_navigation_bar_controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Dio>(
      () => Dio(),
      fenix: true,
    );
    Get.lazyPut<ApiService>(
      () => ApiService(
        dio: Get.find(),
      ),
      fenix: true,
    );
    Get.lazyPut<HomeRemoteDataSource>(
      () => HomeRemoteDataSourceImpl(
        apiService: Get.find(),
      ),
      fenix: true,
    );
    Get.lazyPut<HomeRepo>(
      () => HomeRepoImpl(
        homeRemoteDataSource: Get.find(),
      ),
      fenix: true,
    );
    Get.lazyPut<GetTrendingMoviesUsecase>(
      () => GetTrendingMoviesUsecase(
        homeRepo: Get.find(),
      ),
      fenix: true,
    );
    Get.lazyPut<GetTrendingTvShowsUsecase>(
      () => GetTrendingTvShowsUsecase(
        homeRepo: Get.find(),
      ),
      fenix: true,
    );
    Get.lazyPut<BottomNavigationBarController>(
      () => BottomNavigationBarController(),
      fenix: true,
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
      fenix: true,
    );
    Get.lazyPut<TrendingMoviesController>(
      () => TrendingMoviesController(
        getTrendingMoviesUsecase: Get.find(),
      ),
      fenix: true,
    );
    Get.lazyPut<TrendingTvShowsController>(
      () => TrendingTvShowsController(
        getTrendingTvShowsUsecase: Get.find(),
      ),
      fenix: true,
    );
  }
}
