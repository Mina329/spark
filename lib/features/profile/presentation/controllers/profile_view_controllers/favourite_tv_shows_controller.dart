import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/features/lists/domain/entities/show_mini_result_entity.dart';
import 'package:spark/features/profile/domain/usecases/get_user_favourite_tv_shows_usecase.dart';

class FavouriteTvShowsController extends GetxController {
  final GetUserFavouriteTvShowsUsecase getUserFavouriteTvShowsUsecase;

  RxBool loading = false.obs;
  bool error = false;

  List<ShowMiniResultEntity> favouriteTvShows = [];

  FavouriteTvShowsController({required this.getUserFavouriteTvShowsUsecase});

  @override
  void onInit() {
    super.onInit();
    getUserFavouriteTvShowsFirst();
  }

  Future getUserFavouriteTvShows() async {
    var result = await getUserFavouriteTvShowsUsecase.execute();
    result.fold(
      (failure) {
        Get.snackbar(
          StringsManager.operationFailed,
          failure.message,
          backgroundColor: Colors.red.withOpacity(0.5),
        );
        error = true;
      },
      (tvShows) {
        favouriteTvShows = [];
        favouriteTvShows.addAll(tvShows);
        update();
      },
    );
  }

  void getUserFavouriteTvShowsFirst() async {
    loading.value = true;
    await getUserFavouriteTvShows();
    loading.value = false;
  }
}
