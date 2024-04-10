import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/features/lists/domain/usecases/delete_list_usecase.dart';
import 'package:spark/features/lists/presentation/controllers/get_user_lists_controller.dart';

class DeleteListController extends GetxController {
  final DeleteListUsecase deleteListUsecase;
  RxBool loading = false.obs;

  DeleteListController({required this.deleteListUsecase});

  void deleteList(String listId) async {
    loading.value = true;
    var result = await deleteListUsecase.execute(listId);
    result.fold(
      (failure) => Get.snackbar(
        StringsManager.operationFailed,
        failure.message,
        backgroundColor: Colors.red.withOpacity(0.5),
      ),
      (success) {
        Get.snackbar(
          StringsManager.operationSuccess,
          StringsManager.listHasBeenDeleted,
          backgroundColor: Colors.green.withOpacity(0.5),
        );
        final getUserListsController = Get.find<GetUserListsController>();
        getUserListsController.getUserLists();
      },
    );
    loading.value = false;
  }
}
