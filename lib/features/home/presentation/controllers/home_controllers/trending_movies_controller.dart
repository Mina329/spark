import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/features/home/domain/entities/movie_mini_result_entity.dart';
import 'package:spark/features/home/domain/usecases/get_trending_movies_usecase.dart';

class TrendingMoviesController extends GetxController {
  final GetTrendingMoviesUsecase getTrendingMoviesUsecase;

  List<MovieMiniResultEntity> movies = [];
  RxBool loading = false.obs;
  bool error = false;

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
      (failure) {
        Get.snackbar(
          StringsManager.operationFailed,
          failure.message,
          backgroundColor: Colors.red.withOpacity(0.5),
        );
        if (error == true) return;
        error = true;
      },
      (moviesList) {
        movies.addAll(moviesList);
        update();
      },
    );
    loading.value = false;
  }
}
