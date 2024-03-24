import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/api_service.dart';
import 'package:spark/features/home/data/data_sources/home_remote_data_source/home_remote_data_source.dart';
import 'package:spark/features/home/data/data_sources/home_remote_data_source/home_remote_data_source_impl.dart';
import 'package:spark/features/home/data/repos/home_repo_impl.dart';
import 'package:spark/features/home/domain/repos/home_repo.dart';
import 'package:spark/features/home/domain/usecases/add_favourite_usecase.dart';
import 'package:spark/features/home/domain/usecases/check_favourite_usecase.dart';
import 'package:spark/features/home/domain/usecases/delete_favourite_usecase.dart';
import 'package:spark/features/home/domain/usecases/get_now_playing_movies_trailer_usecase.dart';
import 'package:spark/features/home/domain/usecases/get_now_playing_movies_usecase.dart';
import 'package:spark/features/home/domain/usecases/get_picks_for_you_usecase.dart';
import 'package:spark/features/home/domain/usecases/get_trending_movies_usecase.dart';
import 'package:spark/features/home/domain/usecases/get_trending_people_usecase.dart';
import 'package:spark/features/home/domain/usecases/get_trending_tv_shows_usecase.dart';
import 'package:spark/features/home/presentation/controllers/home_controllers/home_controller.dart';
import 'package:spark/features/home/presentation/controllers/home_controllers/movie_trailers_controller.dart';
import 'package:spark/features/home/presentation/controllers/home_controllers/now_playing_movies_controller.dart';
import 'package:spark/features/home/presentation/controllers/home_controllers/picks_for_you_controller.dart';
import 'package:spark/features/home/presentation/controllers/home_controllers/trending_movies_controller.dart';
import 'package:spark/features/home/presentation/controllers/home_controllers/trending_people_controller.dart';
import 'package:spark/features/home/presentation/controllers/home_controllers/trending_tv_shows_controller.dart';
import 'package:spark/features/main/presentation/controllers/bottom_navigation_bar_controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FirebaseAuth>(() => FirebaseAuth.instance, fenix: true);
    Get.lazyPut<FirebaseFirestore>(() => FirebaseFirestore.instance,
        fenix: true);

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
        firebaseAuth: Get.find(),
        firebaseFirestore: Get.find(),
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
    Get.lazyPut<GetNowPlayingMoviesUsecase>(
      () => GetNowPlayingMoviesUsecase(
        homeRepo: Get.find(),
      ),
      fenix: true,
    );
    Get.lazyPut<GetNowPlayingMoviesTrailersUsecase>(
      () => GetNowPlayingMoviesTrailersUsecase(
        homeRepo: Get.find(),
      ),
      fenix: true,
    );
    Get.lazyPut<GetTrendingPeopleUsecase>(
      () => GetTrendingPeopleUsecase(
        homeRepo: Get.find(),
      ),
      fenix: true,
    );
    Get.lazyPut<GetPicksForYouUsecase>(
      () => GetPicksForYouUsecase(
        homeRepo: Get.find(),
      ),
      fenix: true,
    );
    Get.lazyPut<AddFavouriteUsecase>(
      () => AddFavouriteUsecase(
        homeRepo: Get.find(),
      ),
      fenix: true,
    );
    Get.lazyPut<DeleteFavourriteUsecase>(
      () => DeleteFavourriteUsecase(
        homeRepo: Get.find(),
      ),
      fenix: true,
    );
    Get.lazyPut<CheckFavouriteUsecase>(
      () => CheckFavouriteUsecase(
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
    Get.lazyPut<MovieTrailersController>(
      () => MovieTrailersController(
        getNowPlayingMoviesTrailersUsecase: Get.find(),
      ),
      fenix: true,
    );
    Get.lazyPut<TrendingTvShowsController>(
      () => TrendingTvShowsController(
        getTrendingTvShowsUsecase: Get.find(),
      ),
      fenix: true,
    );
    Get.lazyPut<NowPlayingMoviesController>(
      () => NowPlayingMoviesController(
        getNowPlayingMoviesUsecase: Get.find(),
      ),
      fenix: true,
    );
    Get.lazyPut<TrendingPeopleController>(
      () => TrendingPeopleController(
        getTrendingPeopleUsecase: Get.find(),
      ),
      fenix: true,
    );
    Get.lazyPut<PicksForYouController>(
      () => PicksForYouController(
        getPicksForYouUsecase: Get.find(),
      ),
      fenix: true,
    );
  }
}
