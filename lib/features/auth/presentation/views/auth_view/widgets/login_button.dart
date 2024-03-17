import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/features/auth/presentation/controllers/auth_controllers/log_in_user_with_email_and_password_controller.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final LogInUserWithEmailAndPasswordController
        logInUserWithEmailAndPasswordController =
        Get.find<LogInUserWithEmailAndPasswordController>();

    return SizedBox(
      height: 50,
      child: ElevatedButton(
        onPressed: logInUserWithEmailAndPasswordController.loginOnPressed,
        child: Text(
          StringsManager.login,
          style: StylesManager.styleRobotoBold16(context)
              .copyWith(color: Colors.black),
        ),
      ),
    );
  }
}
