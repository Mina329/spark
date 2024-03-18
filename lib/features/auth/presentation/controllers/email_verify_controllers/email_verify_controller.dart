import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/features/auth/domain/usecases/email_verify_usecase.dart';

class EmailVerifyController extends GetxController {
  bool sendButtonEnabled = true;
  Timer? countdownTimer;
  int countdown = 120;
  RxBool loading = false.obs;
  final VerifyEmailUsecase verifyEmailUsecase;

  EmailVerifyController({required this.verifyEmailUsecase});
  @override
  void onClose() {
    countdownTimer?.cancel();
    super.onClose();
  }

  void Function()? sendOnPressed() {
    startCountdown();
    sendForgetPasswordEmail();
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
    var result = await verifyEmailUsecase.execute();
    result.fold(
      (failure) => Get.snackbar(
        StringsManager.operationFailed,
        failure.message,
        backgroundColor: Colors.red.withOpacity(0.5),
      ),
      (success) {
        Get.snackbar(StringsManager.operationSuccess,
            StringsManager.emailVerificationSent,
            backgroundColor: Colors.green.withOpacity(0.5));
      },
    );
    loading.value = false;
  }
}
