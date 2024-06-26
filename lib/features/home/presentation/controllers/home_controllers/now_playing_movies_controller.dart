import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/features/home/domain/entities/movie_mini_result_entity.dart';
import 'package:spark/features/home/domain/usecases/get_now_playing_movies_usecase.dart';
import 'package:spark/features/home/presentation/controllers/home_controllers/movie_trailers_controller.dart';

class NowPlayingMoviesController extends GetxController {
  final GetNowPlayingMoviesUsecase getNowPlayingMoviesUsecase;

  List<MovieMiniResultEntity> movies = [];
  RxBool loading = false.obs;
  bool error = false;

  PageController pageController = PageController();
  Timer? autoScrollTimer;
  final MovieTrailersController movieTrailersController =
      Get.find<MovieTrailersController>();
  NowPlayingMoviesController({required this.getNowPlayingMoviesUsecase});

  @override
  void onInit() async {
    super.onInit();
    await getNowPlayingMovies();
    _initScrollTimer();
    movieTrailersController.getTrendingMoviesTrailers(movies);
  }

  Future getNowPlayingMovies() async {
    loading.value = true;

    var result = await getNowPlayingMoviesUsecase.execute(1);
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

  void _initScrollTimer() {
    final int itemCount = movies.length;

    autoScrollTimer = Timer.periodic(const Duration(seconds: 5), (timer) {
      if (pageController.hasClients) {
        int nextPage = (pageController.page!.round() + 1) % itemCount;

        pageController.animateToPage(
          nextPage,
          duration: const Duration(seconds: 1),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  void onClose() {
    autoScrollTimer?.cancel();
    pageController.dispose();
    super.onClose();
  }
}
