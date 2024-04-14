import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/features/explore/domain/usecases/get_up_coming_movies_usecase.dart';
import 'package:spark/features/home/domain/entities/movie_mini_result_entity.dart';

class UpComingMoviesController extends GetxController {
  final GetUpComingMoviesUsecase getUpComingMoviesUsecase;

  List<MovieMiniResultEntity> movies = [];
  RxBool loading = false.obs;
  bool error = false;

  UpComingMoviesController({required this.getUpComingMoviesUsecase});

  Future getUpcomingMovies() async {
    loading.value = true;
    var result = await getUpComingMoviesUsecase.execute(1);
    result.fold(
      (failure) {
        Get.snackbar(
          StringsManager.operationFailed,
          failure.message,
          backgroundColor: Colors.red.withOpacity(0.5),
        );
        error = true;
      },
      (moviesList) {
        movies.addAll(moviesList);
      },
    );
    loading.value = false;
  }
}
