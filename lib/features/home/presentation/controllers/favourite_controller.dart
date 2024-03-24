import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/widgets/enums.dart';
import 'package:spark/features/home/domain/usecases/add_favourite_usecase.dart';
import 'package:spark/features/home/domain/usecases/check_favourite_usecase.dart';
import 'package:spark/features/home/domain/usecases/delete_favourite_usecase.dart';

class FavouriteController extends GetxController {
  RxBool loading = false.obs;
  RxBool checkLoading = false.obs;

  bool favourite = false;
  final AddFavouriteUsecase addFavouriteUsecase;
  final DeleteFavourriteUsecase deleteFavourritePersonUsecase;
  final CheckFavouriteUsecase checkFavourritePersonUsecase;
  late String addFavouriteSuccess;
  late String deleteFavouriteSuccess;
  FavouriteController(
      {required this.checkFavourritePersonUsecase,
      required this.deleteFavourritePersonUsecase,
      required this.addFavouriteUsecase});
  @override
  void onInit() {
    super.onInit();
    final int id = Get.arguments['id'];
    final ShowType showType = Get.arguments['showType'];
    addFavouriteSuccess = showType == ShowType.Person
        ? StringsManager.personAddedToFavourite
        : showType == ShowType.Movie
            ? StringsManager.movieAddedToFavourite
            : StringsManager.tvShowAddedToFavourite;
    deleteFavouriteSuccess = showType == ShowType.Person
        ? StringsManager.personRemovedFromFavourite
        : showType == ShowType.Movie
            ? StringsManager.movieRemovedFromFavourite
            : StringsManager.tvShowRemovedFromFavourite;
    checkFavourite(id, showType);
  }

  void addFavourite(dynamic show, ShowType showType) async {
    loading.value = true;
    var result = await addFavouriteUsecase.execute((show, showType));
    result.fold(
      (failure) {
        favourite = false;
        Get.snackbar(
          StringsManager.operationFailed,
          failure.message,
          backgroundColor: Colors.red.withOpacity(0.5),
        );
      },
      (success) {
        favourite = true;
        Get.snackbar(
          StringsManager.operationSuccess,
          addFavouriteSuccess,
          backgroundColor: Colors.green.withOpacity(0.5),
        );
      },
    );
    update();
    loading.value = false;
  }

  void deleteFavourite(int id, ShowType showType) async {
    loading.value = true;
    var result = await deleteFavourritePersonUsecase.execute((id, showType));
    result.fold(
      (failure) {
        favourite = true;
        Get.snackbar(
          StringsManager.operationFailed,
          failure.message,
          backgroundColor: Colors.red.withOpacity(0.5),
        );
      },
      (success) {
        favourite = false;
        Get.snackbar(
          StringsManager.operationSuccess,
          deleteFavouriteSuccess,
          backgroundColor: Colors.green.withOpacity(0.5),
        );
      },
    );
    update();
    loading.value = false;
  }

  void checkFavourite(int id, ShowType showType) async {
    checkLoading.value = true;
    var result = await checkFavourritePersonUsecase.execute((id, showType));
    result.fold(
      (failure) {
        Get.snackbar(
          StringsManager.operationFailed,
          failure.message,
          backgroundColor: Colors.red.withOpacity(0.5),
        );
      },
      (favouriteFlag) {
        favourite = favouriteFlag;
      },
    );
    update();
    checkLoading.value = false;
  }

  void Function()? favouriteOnPressed(dynamic show, ShowType showType) {
    if (favourite) {
      deleteFavourite(show.id, showType);
    } else {
      addFavourite(show, showType);
    }
    return null;
  }
}
