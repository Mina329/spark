import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/features/auth/presentation/controllers/forget_password_controller.dart';

class PasswordResetTextFormField extends StatelessWidget {
  const PasswordResetTextFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final ForgetPasswordController forgetPasswordController =
        Get.find<ForgetPasswordController>();
    return TextFormField(
      key: forgetPasswordController.emailKey,
      decoration: InputDecoration(
        hintText: StringsManager.enterYourEmail,
        hintStyle: StylesManager.styleRobotoRegular16(context).copyWith(
          color: Theme.of(context).brightness == Brightness.dark
              ? Colors.white.withOpacity(0.6)
              : Colors.black.withOpacity(0.6),
        ),
      ),
      validator: forgetPasswordController.emailValidator,
      onSaved: forgetPasswordController.onSavedEmail,
    );
  }
}
