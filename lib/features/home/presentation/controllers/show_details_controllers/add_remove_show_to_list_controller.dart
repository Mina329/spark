import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/features/home/domain/usecases/add_show_to_list_usecase.dart';
import 'package:spark/features/home/domain/usecases/remove_show_from_list_usecase.dart';
import 'package:spark/features/lists/domain/entities/show_mini_result_entity.dart';
import 'package:spark/features/lists/presentation/controllers/get_user_lists_controller.dart';

class AddRemoveShowToListController extends GetxController {
  RxBool loading = false.obs;
  final AddShowToListUsecase addShowToListUsecase;
  final RemoveShowFromListUsecase removeShowFromListUsecase;

  final GetUserListsController getUserListsController =
      Get.find<GetUserListsController>();

  AddRemoveShowToListController(
      {required this.removeShowFromListUsecase,
      required this.addShowToListUsecase});

  void addShowToList(String listId, ShowMiniResultEntity show) async {
    loading.value = true;
    var result = await addShowToListUsecase.execute((listId, show));
    result.fold(
      (failure) {
        Get.snackbar(
          StringsManager.operationFailed,
          failure.message,
          backgroundColor: Colors.red.withOpacity(0.5),
        );
      },
      (success) {
        Get.snackbar(
          StringsManager.operationFailed,
          StringsManager.showHasBeenAddedToYourList,
          backgroundColor: Colors.green.withOpacity(0.5),
        );
        getUserListsController.getUserLists();
        update();
      },
    );
    loading.value = false;
  }

  void removeShowFromList(String listId, int showId) async {
    loading.value = true;
    var result = await removeShowFromListUsecase.execute((listId, showId));
    result.fold(
      (failure) {
        Get.snackbar(
          StringsManager.operationFailed,
          failure.message,
          backgroundColor: Colors.red.withOpacity(0.5),
        );
      },
      (success) {
        Get.snackbar(
          StringsManager.operationFailed,
          StringsManager.showHasBeenRemovedFromYourList,
          backgroundColor: Colors.green.withOpacity(0.5),
        );
        getUserListsController.getUserLists();
        update();
      },
    );
    loading.value = false;
  }
}
