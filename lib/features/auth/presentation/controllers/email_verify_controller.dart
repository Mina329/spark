import 'dart:async';

import 'package:get/get.dart';

class EmailVerifyController extends GetxController {
  bool sendButtonEnabled = true;
  Timer? countdownTimer;
  int countdown = 120;

  @override
  void onClose() {
    countdownTimer?.cancel();
    super.onClose();
  }

  void Function()? sendOnPressed() {
    startCountdown();
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
