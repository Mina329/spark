import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/api_service.dart';
import 'package:spark/features/home/data/data_sources/home_remote_data_source/home_remote_data_source.dart';
import 'package:spark/features/home/data/data_sources/home_remote_data_source/home_remote_data_source_impl.dart';
import 'package:spark/features/home/data/repos/home_repo_impl.dart';
import 'package:spark/features/home/domain/repos/home_repo.dart';
import 'package:spark/features/home/domain/usecases/get_picks_for_you_usecase.dart';
import 'package:spark/features/home/domain/usecases/get_trending_movies_usecase.dart';
import 'package:spark/features/home/domain/usecases/get_trending_people_usecase.dart';
import 'package:spark/features/home/domain/usecases/get_trending_tv_shows_usecase.dart';
import 'package:spark/features/home/presentation/controllers/section_controller/section_controllers.dart';

class SectionBinding extends Bindings {
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
    Get.lazyPut<SectionController>(
      () => SectionController(),
      fenix: true,
    );
  }
}
