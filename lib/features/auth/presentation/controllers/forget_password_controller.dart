import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/strings_manager.dart';

class ForgetPasswordController extends GetxController {
  final GlobalKey<FormFieldState<String>> emailKey =
      GlobalKey<FormFieldState<String>>();
  String email = '';
  bool sendButtonEnabled = true;
  Timer? countdownTimer;
  int countdown = 120;

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
}
