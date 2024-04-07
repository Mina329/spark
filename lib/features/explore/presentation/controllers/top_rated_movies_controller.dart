import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/features/explore/domain/usecases/get_top_rated_movies_usecase.dart';
import 'package:spark/features/home/domain/entities/movie_mini_result_entity.dart';

class TopRatedMoviesController extends GetxController {
  final GetTopRatedMoviesUsecase getTopRatedMoviesUsecase;

  List<MovieMiniResultEntity> movies = [];
  RxBool loading = false.obs;

  TopRatedMoviesController({required this.getTopRatedMoviesUsecase});

  Future getTopRatedMovies() async {
    loading.value = true;
    var result = await getTopRatedMoviesUsecase.execute(1);
    result.fold(
      (failure) => Get.snackbar(
        StringsManager.operationFailed,
        failure.message,
        backgroundColor: Colors.red.withOpacity(0.5),
      ),
      (moviesList) {
        movies.addAll(moviesList);
      },
    );
    loading.value = false;
  }
}
