import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/features/lists/domain/entities/show_mini_result_entity.dart';
import 'package:spark/features/profile/domain/usecases/get_user_favourite_movies_usecase.dart';

class FavouriteMoviesController extends GetxController {
  final GetUserFavouriteMoviesUsecase getUserFavouriteShowsUsecase;

  RxBool loading = false.obs;
  bool error = false;

  List<ShowMiniResultEntity> favouriteMovies = [];

  FavouriteMoviesController({required this.getUserFavouriteShowsUsecase});

  @override
  void onInit() {
    super.onInit();
    getUserFavouriteMoviesFirst();
  }

  Future getUserFavouriteMovies() async {
    var result = await getUserFavouriteShowsUsecase.execute();
    result.fold(
      (failure) {
        Get.snackbar(
          StringsManager.operationFailed,
          failure.message,
          backgroundColor: Colors.red.withOpacity(0.5),
        );
        error = true;
      },
      (movies) {
        favouriteMovies = [];
        favouriteMovies.addAll(movies);
        update();
      },
    );
  }

  void getUserFavouriteMoviesFirst() async {
    loading.value = true;
    await getUserFavouriteMovies();
    loading.value = false;
  }
}
