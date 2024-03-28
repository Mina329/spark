import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/features/lists/domain/entities/list_entity.dart';
import 'package:spark/features/lists/domain/usecases/create_new_list_usecase.dart';
import 'package:spark/features/lists/presentation/controllers/get_user_lists_controller.dart';
import 'package:uuid/uuid.dart';

class CreateNewListController extends GetxController {
  final CreateNewListUsecase createNewListUsecase;
  RxBool loading = false.obs;
  TextEditingController? controller;
  CreateNewListController({required this.createNewListUsecase});
  @override
  void onInit() {
    super.onInit();
    controller = TextEditingController();
  }

  @override
  void onClose() {
    controller?.dispose();
    super.onClose();
  }

  void createNewList(ListEntity list) async {
    loading.value = true;

    var result = await createNewListUsecase.execute(list);
    result.fold(
      (failure) => Get.snackbar(
        StringsManager.operationFailed,
        failure.message,
        backgroundColor: Colors.red.withOpacity(0.5),
      ),
      (success) {
        Get.snackbar(
          StringsManager.operationSuccess,
          StringsManager.newListHasBeenCreated,
          backgroundColor: Colors.green.withOpacity(0.5),
        );
        final getUserListsController = Get.find<GetUserListsController>();
        getUserListsController.getUserLists();
      },
    );
    loading.value = false;
  }

  void Function()? onPressedCreate() {
    if (controller?.text != null && controller!.text.length >= 3) {
      final listTitle = controller!.text;
      createNewList(
        ListEntity(
          id: const Uuid().v4(),
          title: listTitle,
          shows: [],
        ),
      );
      Get.back();
    } else {
      Get.snackbar(
        StringsManager.operationFailed,
        StringsManager.pleaseEnterAValidListName,
        backgroundColor: Colors.red.withOpacity(0.5),
      );
    }
    return null;
  }
}
