import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/features/home/domain/entities/trending_movie_entity.dart';
import 'package:spark/features/home/domain/usecases/get_trending_movies_usecase.dart';

class TrendingMoviesController extends GetxController {
  final GetTrendingMoviesUsecase getTrendingMoviesUsecase;

  // Make 'movies' an observable list from the start
  var movies = <TrendingMovieEntity>[].obs;
  RxBool loading = false.obs;

  TrendingMoviesController({required this.getTrendingMoviesUsecase});

  @override
  void onInit() {
    super.onInit();
    getTrendingMovies();
  }

  Future getTrendingMovies() async {
    loading.value = true;

    var result = await getTrendingMoviesUsecase.execute(1);
    result.fold(
      (failure) => Get.snackbar(
        StringsManager.operationFailed,
        failure.message,
        backgroundColor: Colors.red.withOpacity(0.5),
      ),
      (moviesList) {
        movies.addAll(moviesList); // Update the observable list
      },
    );
    loading.value = false;
  }
}
