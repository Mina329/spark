import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/features/auth/domain/usecases/forget_password_usecase.dart';

class ForgetPasswordController extends GetxController {
  final GlobalKey<FormFieldState<String>> emailKey =
      GlobalKey<FormFieldState<String>>();
  String email = '';
  bool sendButtonEnabled = true;
  Timer? countdownTimer;
  int countdown = 120;
  RxBool loading = false.obs;
  final ForgetPasswordUsecase forgetPasswordUsecase;

  ForgetPasswordController({required this.forgetPasswordUsecase});
  @override
  void onClose() {
    countdownTimer?.cancel();
    super.onClose();
  }

  String? emailValidator(String? value) {
    if (GetUtils.isEmail(value!)) {
      return null;
    }
    return StringsManager.pleaseEnterValidEmail;
  }

  void onSavedEmail(String? value) {
    email = value!;
  }

  void Function()? sendOnPressed() {
    if (emailKey.currentState!.validate()) {
      emailKey.currentState!.save();
      startCountdown();
      sendForgetPasswordEmail();
    }
    return null;
  }

  void startCountdown() {
    sendButtonEnabled = false;
    countdown = 120;
    update();
    countdownTimer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        if (countdown > 0) {
          countdown -= 1;
        } else {
          sendButtonEnabled = true;
          timer.cancel();
        }
        update();
      },
    );
  }

  void sendForgetPasswordEmail() async {
    loading.value = true;
    var result = await forgetPasswordUsecase.execute(email);
    result.fold(
      (failure) => Get.snackbar(
        StringsManager.operationFailed,
        failure.message,
        backgroundColor: Colors.red.withOpacity(0.5),
      ),
      (success) {
        Get.snackbar(StringsManager.operationSuccess,
            StringsManager.passwordResetEmailSent,
            backgroundColor: Colors.green.withOpacity(0.5));
      },
    );
    loading.value = false;
  }
}
