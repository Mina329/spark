import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/features/auth/presentation/controllers/auth_controllers/auth_controller.dart';
import 'package:spark/features/auth/presentation/controllers/auth_controllers/sign_up_with_email_and_password_controller.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthController authController = Get.find<AuthController>();
    final SignUpWithEmailAndPasswordController
        signUpWithEmailAndPasswordController =
        Get.find<SignUpWithEmailAndPasswordController>();

    return Form(
      key: signUpWithEmailAndPasswordController.registerKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            StringsManager.name,
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
              hintText: StringsManager.enterYourName,
              hintStyle: StylesManager.styleRobotoRegular16(context).copyWith(
                color: Theme.of(context).brightness == Brightness.dark
                    ? Colors.white.withOpacity(0.6)
                    : Colors.black.withOpacity(0.6),
              ),
            ),
            validator: authController.usernameValidator,
            onSaved: signUpWithEmailAndPasswordController.registerNameOnSaved,
          ),
          const SizedBox(
            height: 30,
          ),
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
            onSaved: signUpWithEmailAndPasswordController.registerEmailOnSaved,
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
              onChanged:
                  signUpWithEmailAndPasswordController.registerPasswordOnSaved,
              onSaved:
                  signUpWithEmailAndPasswordController.registerPasswordOnSaved,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            StringsManager.confirmPassword,
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
              key: authController.confirmPasswordKey,
              decoration: InputDecoration(
                hintText: StringsManager.enterYourPassword,
                hintStyle: StylesManager.styleRobotoRegular16(context).copyWith(
                  color: Theme.of(context).brightness == Brightness.dark
                      ? Colors.white.withOpacity(0.6)
                      : Colors.black.withOpacity(0.6),
                ),
              ),
              obscureText: authController.obsecure,
              validator:
                  signUpWithEmailAndPasswordController.confirmPasswordValidator,
              onChanged: (value) =>
                  authController.confirmPasswordKey.currentState!.validate(),
            ),
          ),
        ],
      ),
    );
  }
}
