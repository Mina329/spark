import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/color_manager.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/features/auth/presentation/controllers/auth_controllers/log_in_user_with_email_and_password_controller.dart';

import '../../../controllers/auth_controllers/auth_controller.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final AuthController authController = Get.find<AuthController>();
    final LogInUserWithEmailAndPasswordController
        logInUserWithEmailAndPasswordController =
        Get.find<LogInUserWithEmailAndPasswordController>();

    return Form(
      key: logInUserWithEmailAndPasswordController.loginKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            StringsManager.email,
            style: StylesManager.styleRobotoRegular16(context).copyWith(
              color: Theme.of(context).brightness == Brightness.dark
                  ? Colors.white.withOpacity(0.6)
                  : Colors.black.withOpacity(0.6),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: StringsManager.enterYourEmail,
              hintStyle: StylesManager.styleRobotoRegular16(context).copyWith(
                color: Theme.of(context).brightness == Brightness.dark
                    ? Colors.white.withOpacity(0.6)
                    : Colors.black.withOpacity(0.6),
              ),
            ),
            validator: authController.emailValidator,
            onSaved: logInUserWithEmailAndPasswordController.loginEmailOnSaved,
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            StringsManager.password,
            style: StylesManager.styleRobotoRegular16(context).copyWith(
              color: Theme.of(context).brightness == Brightness.dark
                  ? Colors.white.withOpacity(0.6)
                  : Colors.black.withOpacity(0.6),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          GetBuilder<AuthController>(
            builder: (authController) => TextFormField(
              decoration: InputDecoration(
                hintText: StringsManager.enterYourPassword,
                hintStyle: StylesManager.styleRobotoRegular16(context).copyWith(
                  color: Theme.of(context).brightness == Brightness.dark
                      ? Colors.white.withOpacity(0.6)
                      : Colors.black.withOpacity(0.6),
                ),
                suffixIcon: GestureDetector(
                  onTap: authController.toggleObsecure,
                  child: Icon(
                    authController.obsecure
                        ? FontAwesomeIcons.eyeSlash
                        : FontAwesomeIcons.eye,
                    color: Theme.of(context).brightness == Brightness.dark
                        ? Colors.white.withOpacity(0.6)
                        : Colors.black.withOpacity(0.6),
                    size: getResponsiveFontSize(context, fontSize: 24),
                  ),
                ),
              ),
              obscureText: authController.obsecure,
              validator: authController.passwordValidator,
              onSaved:
                  logInUserWithEmailAndPasswordController.loginPasswordOnSaved,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: authController.forgetPasswordOnTap,
              child: Text(
                StringsManager.forgetPassword,
                style: StylesManager.styleRobotoRegular16(context)
                    .copyWith(color: ColorManager.primaryColor),
              ),
            ),
          )
        ],
      ),
    );
  }
}
