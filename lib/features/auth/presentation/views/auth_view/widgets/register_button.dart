import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/features/auth/presentation/controllers/auth_controllers/sign_up_with_email_and_password_controller.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({super.key});

  @override
  Widget build(BuildContext context) {
    final SignUpWithEmailAndPasswordController signUpWithEmailAndPasswordController = Get.find<SignUpWithEmailAndPasswordController>();

    return SizedBox(
      height: 50,
      child: ElevatedButton(
        onPressed: signUpWithEmailAndPasswordController.registerOnPressed,
        child: Text(
          StringsManager.register,
          style: StylesManager.styleRobotoBold16(context)
              .copyWith(color: Colors.black),
        ),
      ),
    );
  }
}
