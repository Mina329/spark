import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/features/profile/domain/entities/user_info_entity.dart';
import 'package:spark/features/profile/domain/usecases/get_user_info_usecase.dart';

class UserInfoController extends GetxController {
  final GetUserInfoUsecase getUserInfoUsecase;

  UserInfoController({required this.getUserInfoUsecase});
  RxBool loading = false.obs;
  UserInfoEntity? userInfo;

  @override
  void onInit() {
    super.onInit();
    getUserInfo();
  }

  void getUserInfo() async {
    loading.value = true;
    var result = await getUserInfoUsecase.execute();
    result.fold(
      (failure) => Get.snackbar(
        StringsManager.operationFailed,
        failure.message,
        backgroundColor: Colors.red.withOpacity(0.5),
      ),
      (userInfoEntity) {
        userInfo = userInfoEntity;
        update();
      },
    );
    loading.value = false;
  }
}
