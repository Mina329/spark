import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/app_router.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/features/profile/domain/usecases/sign_out_usecase.dart';

class SignOutController extends GetxController {
  final SignOutUsecase signOutUsecase;
  RxBool loading = false.obs;

  SignOutController({required this.signOutUsecase});

  void signOutUser() async {
    if (loading.value == true) return;
    loading.value = true;
    var result = await signOutUsecase.execute();
    result.fold(
      (failure) => Get.snackbar(
        StringsManager.operationFailed,
        failure.message,
        backgroundColor: Colors.red.withOpacity(0.5),
      ),
      (success) {
        Get.offAllNamed(AppRouter.kAuthView);
      },
    );
    loading.value = false;
  }
}
