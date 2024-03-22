import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/features/home/domain/usecases/add_favourite_person_usecase.dart';
import 'package:spark/features/home/domain/usecases/check_favourite_person_usecase.dart';
import 'package:spark/features/home/domain/usecases/delete_favourite_person_usecase.dart';
import 'package:spark/features/home/presentation/controllers/person_details_controller/get_person_details_controller.dart';

class FavouritePersonController extends GetxController {
  RxBool loading = false.obs;
  RxBool checkLoading = false.obs;

  bool favourite = false;
  final AddFavouritePersonUsecase addFavouritePersonUsecase;
  final DeleteFavourritePersonUsecase deleteFavourritePersonUsecase;
  final CheckFavouritePersonUsecase checkFavourritePersonUsecase;
  FavouritePersonController(
      {required this.checkFavourritePersonUsecase,
      required this.deleteFavourritePersonUsecase,
      required this.addFavouritePersonUsecase});
  @override
  void onInit() {
    super.onInit();
    final int id = Get.arguments['id'];
    checkFavouritePerson(id);
  }

  void addFavouritePerson() async {
    loading.value = true;
    final getPersonDetailsController = Get.find<GetPersonDetailsController>();
    var result = await addFavouritePersonUsecase
        .execute(getPersonDetailsController.personResultEntity);
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
          StringsManager.personAddedToFavourite,
          backgroundColor: Colors.green.withOpacity(0.5),
        );
      },
    );
    update();
    loading.value = false;
  }

  void deleteFavouritePerson() async {
    loading.value = true;
    final getPersonDetailsController = Get.find<GetPersonDetailsController>();
    var result = await deleteFavourritePersonUsecase
        .execute(getPersonDetailsController.personResultEntity.id);
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
          StringsManager.personRemovedFromFavourite,
          backgroundColor: Colors.green.withOpacity(0.5),
        );
      },
    );
    update();
    loading.value = false;
  }

  void checkFavouritePerson(int id) async {
    checkLoading.value = true;
    var result = await checkFavourritePersonUsecase.execute(id);
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

  void Function()? favouriteOnPressed() {
    if (favourite) {
      deleteFavouritePerson();
    } else {
      addFavouritePerson();
    }
    return null;
  }
}
