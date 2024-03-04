import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:spark/core/utils/color_manager.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/features/auth/presentation/controllers/email_verify_controller.dart';

class EmailVerificationSendButton extends StatelessWidget {
  const EmailVerificationSendButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: 50,
          child: GetBuilder<EmailVerifyController>(
            builder: (emailVerifyController) => ElevatedButton(
              onPressed: emailVerifyController.sendButtonEnabled
                  ? emailVerifyController.sendOnPressed
                  : null,
              child: Text(
                StringsManager.send,
                style: StylesManager.styleRobotoBold16(context).copyWith(
                  color: emailVerifyController.sendButtonEnabled
                      ? Colors.black
                      : ColorManager.primaryColor,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        GetBuilder<EmailVerifyController>(
          builder: (emailVerifyController) {
            if (!emailVerifyController.sendButtonEnabled) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    StringsManager.resendIn,
                    style: StylesManager.styleLatoRegular18(context),
                  ),
                  Text(
                    emailVerifyController.countdown.toString(),
                    style: StylesManager.styleLatoRegular18(context),
                  ),
                  Text(
                    StringsManager.seconds,
                    style: StylesManager.styleLatoRegular18(context),
                  ),
                ],
              );
            }
            return const SizedBox();
          },
        ),
      ],
    );
  }
}
