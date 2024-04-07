import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/api_service.dart';
import 'package:spark/features/explore/data/data_source/explore_remote_data_source/explore_remote_data_source.dart';
import 'package:spark/features/explore/data/data_source/explore_remote_data_source/explore_remote_data_source_impl.dart';
import 'package:spark/features/explore/data/repos/explore_repo_impl.dart';
import 'package:spark/features/explore/domain/repos/explore_repo.dart';
import 'package:spark/features/explore/domain/usecases/get_popular_movies_usecase.dart';
import 'package:spark/features/explore/domain/usecases/get_search_result_usecase.dart';
import 'package:spark/features/explore/domain/usecases/get_top_rated_movies_usecase.dart';
import 'package:spark/features/explore/domain/usecases/get_up_coming_movies_usecase.dart';
import 'package:spark/features/explore/presentation/controllers/explore_view_controller.dart';
import 'package:spark/features/explore/presentation/controllers/get_search_result_controller.dart';
import 'package:spark/features/explore/presentation/controllers/popular_movies_controller.dart';
import 'package:spark/features/explore/presentation/controllers/top_rated_movies_controller.dart';
import 'package:spark/features/explore/presentation/controllers/upcoming_movies_controller.dart';
import 'package:spark/features/home/data/data_sources/home_remote_data_source/home_remote_data_source.dart';
import 'package:spark/features/home/data/data_sources/home_remote_data_source/home_remote_data_source_impl.dart';
import 'package:spark/features/home/data/repos/home_repo_impl.dart';
import 'package:spark/features/home/domain/repos/home_repo.dart';
import 'package:spark/features/home/domain/usecases/add_favourite_usecase.dart';
import 'package:spark/features/home/domain/usecases/add_show_to_list_usecase.dart';
import 'package:spark/features/home/domain/usecases/check_favourite_usecase.dart';
import 'package:spark/features/home/domain/usecases/delete_favourite_usecase.dart';
import 'package:spark/features/home/domain/usecases/get_now_playing_movies_trailer_usecase.dart';
import 'package:spark/features/home/domain/usecases/get_now_playing_movies_usecase.dart';
import 'package:spark/features/home/domain/usecases/get_picks_for_you_usecase.dart';
import 'package:spark/features/home/domain/usecases/get_trending_movies_usecase.dart';
import 'package:spark/features/home/domain/usecases/get_trending_people_usecase.dart';
import 'package:spark/features/home/domain/usecases/get_trending_tv_shows_usecase.dart';
import 'package:spark/features/home/domain/usecases/remove_show_from_list_usecase.dart';
import 'package:spark/features/home/presentation/controllers/home_controllers/home_controller.dart';
import 'package:spark/features/home/presentation/controllers/home_controllers/movie_trailers_controller.dart';
import 'package:spark/features/home/presentation/controllers/home_controllers/now_playing_movies_controller.dart';
import 'package:spark/features/home/presentation/controllers/home_controllers/picks_for_you_controller.dart';
import 'package:spark/features/home/presentation/controllers/home_controllers/trending_movies_controller.dart';
import 'package:spark/features/home/presentation/controllers/home_controllers/trending_people_controller.dart';
import 'package:spark/features/home/presentation/controllers/home_controllers/trending_tv_shows_controller.dart';
import 'package:spark/features/home/presentation/controllers/show_details_controllers/add_remove_show_to_list_controller.dart';
import 'package:spark/features/lists/data/data_sources/lists_remote_data_sources/lists_remote_data_source.dart';
import 'package:spark/features/lists/data/data_sources/lists_remote_data_sources/lists_remote_data_source_impl.dart';
import 'package:spark/features/lists/data/repos/lists_repo_impl.dart';
import 'package:spark/features/lists/domain/repos/lists_repo.dart';
import 'package:spark/features/lists/domain/usecases/create_new_list_usecase.dart';
import 'package:spark/features/lists/domain/usecases/delete_list_usecase.dart';
import 'package:spark/features/lists/domain/usecases/get_user_lists_usecase.dart';
import 'package:spark/features/lists/presentation/controllers/create_new_list_controller.dart';
import 'package:spark/features/lists/presentation/controllers/delete_list_controller.dart';
import 'package:spark/features/lists/presentation/controllers/get_user_lists_controller.dart';
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
    Get.lazyPut<ListsRemoteDataSource>(
      () => ListsRemoteDataSourceImpl(
        firebaseAuth: Get.find(),
        firebaseFirestore: Get.find(),
      ),
      fenix: true,
    );
    Get.lazyPut<ExploreRemoteDataSource>(
      () => ExploreRemoteDataSourceImpl(
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
    Get.lazyPut<ListsRepo>(
      () => ListsRepoImpl(
        listsRemoteDataSource: Get.find(),
      ),
      fenix: true,
    );
    Get.lazyPut<ExploreRepo>(
      () => ExploreRepoImpl(
        exploreRemoteDataSource: Get.find(),
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
    Get.lazyPut<GetUserListsUsecase>(
      () => GetUserListsUsecase(
        listsRepo: Get.find(),
      ),
      fenix: true,
    );
    Get.lazyPut<CreateNewListUsecase>(
      () => CreateNewListUsecase(
        listsRepo: Get.find(),
      ),
      fenix: true,
    );
    Get.lazyPut<AddShowToListUsecase>(
      () => AddShowToListUsecase(
        homeRepo: Get.find(),
      ),
      fenix: true,
    );
    Get.lazyPut<RemoveShowFromListUsecase>(
      () => RemoveShowFromListUsecase(
        homeRepo: Get.find(),
      ),
      fenix: true,
    );
    Get.lazyPut<DeleteListUsecase>(
      () => DeleteListUsecase(
        listsRepo: Get.find(),
      ),
      fenix: true,
    );
    Get.lazyPut<GetSearchResultUsecase>(
      () => GetSearchResultUsecase(
        exploreRepo: Get.find(),
      ),
      fenix: true,
    );
    Get.lazyPut<GetPopularMoviesUsecase>(
      () => GetPopularMoviesUsecase(
        exploreRepo: Get.find(),
      ),
      fenix: true,
    );
    Get.lazyPut<GetTopRatedMoviesUsecase>(
      () => GetTopRatedMoviesUsecase(
        exploreRepo: Get.find(),
      ),
      fenix: true,
    );
    Get.lazyPut<GetUpComingMoviesUsecase>(
      () => GetUpComingMoviesUsecase(
        exploreRepo: Get.find(),
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
    Get.lazyPut<GetUserListsController>(
      () => GetUserListsController(
        getUserListsUsecase: Get.find(),
      ),
      fenix: true,
    );
    Get.lazyPut<CreateNewListController>(
      () => CreateNewListController(
        createNewListUsecase: Get.find(),
      ),
      fenix: true,
    );
    Get.lazyPut(
      () => AddRemoveShowToListController(
        addShowToListUsecase: Get.find(),
        removeShowFromListUsecase: Get.find(),
      ),
      fenix: true,
    );
    Get.lazyPut(
      () => DeleteListController(
        deleteListUsecase: Get.find(),
      ),
      fenix: true,
    );
    Get.lazyPut(
      () => GetSearchResultController(
        getSearchResultUsecase: Get.find(),
      ),
      fenix: true,
    );
    Get.lazyPut(
      () => ExploreViewController(),
      fenix: true,
    );
    Get.lazyPut(
      () => PopularMoviesController(
        getPopularMoviesUsecase: Get.find(),
      ),
      fenix: true,
    );
    Get.lazyPut(
      () => TopRatedMoviesController(
        getTopRatedMoviesUsecase: Get.find(),
      ),
      fenix: true,
    );
    Get.lazyPut(
      () => UpComingMoviesController(
        getUpComingMoviesUsecase: Get.find(),
      ),
      fenix: true,
    );
  }
}
