import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/app_router.dart';
import 'package:spark/core/utils/color_manager.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/features/auth/data/data_sources/static.dart';
import 'package:spark/features/auth/data/models/genre_model.dart';
import 'package:spark/features/auth/domain/usecases/add_favourite_genres_usecase.dart';
import 'package:spark/features/auth/domain/usecases/set_user_genres_flag_usecase.dart';

class ImproveYourFeedsController extends GetxController {
  RxList<GenreModel> selectedGenres = RxList<GenreModel>();
  RxMap<String, Color> genreColorsMap = RxMap<String, Color>();
  final AddFavouriteGenresUsecase addFavouriteGenresUsecase;
  final SetUserGenresFlagUsecase setUserGenresFlagUsecase;
  RxBool loading = false.obs;

  ImproveYourFeedsController(
      {required this.addFavouriteGenresUsecase,
      required this.setUserGenresFlagUsecase});

  void selectGenre(GenreModel genreModel) {
    if (!selectedGenres.contains(genreModel)) {
      selectedGenres.add(genreModel);
      genreColorsMap[genreModel.name] =
          genreColors[Random().nextInt(genreColors.length)];
    } else {
      selectedGenres.remove(genreModel);
      genreColorsMap.remove(genreModel.name);
    }
  }

  Color getColorForGenre(String genre) {
    return genreColorsMap[genre] ??
        (Get.theme.brightness == Brightness.dark
            ? ColorManager.genreColor
            : Colors.black.withOpacity(0.1));
  }

  void allSetButtonOnPressed() async {
    if (selectedGenres.isEmpty) {
      Get.snackbar(
        StringsManager.operationFailed,
        StringsManager.pleaseSelectAnyGenresOrSkip,
        backgroundColor: Colors.red.withOpacity(0.5),
      );
      return;
    }
    loading.value = true;

    List<GenreModel> genresList = selectedGenres.toList();
    var result = await addFavouriteGenresUsecase.execute(genresList);
    result.fold(
      (failure) => Get.snackbar(
        StringsManager.operationFailed,
        failure.message,
        backgroundColor: Colors.red.withOpacity(0.5),
      ),
      (r) {
        Get.snackbar(
          StringsManager.operationSuccess,
          StringsManager.favouriteGenresAreSet,
          backgroundColor: Colors.green.withOpacity(0.5),
        );
        Get.offAllNamed(
          AppRouter.kMainView,
        );
      },
    );
    loading.value = false;
  }

  void skipButton() async {
    loading.value = true;
    var result = await setUserGenresFlagUsecase.execute();
    result.fold(
      (failure) => Get.snackbar(
        StringsManager.operationFailed,
        failure.message,
        backgroundColor: Colors.red.withOpacity(0.5),
      ),
      (r) {
        Get.offAllNamed(
          AppRouter.kMainView,
        );
      },
    );
    loading.value = false;
  }
}
