import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/app_router.dart';
import 'package:spark/core/utils/strings_manager.dart';

class AuthController extends GetxController {
  bool login = true;
  bool obsecure = true;
  final GlobalKey<FormState> loginKey = GlobalKey<FormState>();
  final GlobalKey<FormFieldState<String>> confirmPasswordKey =
      GlobalKey<FormFieldState<String>>();
  String loginEmail = '';
  String loginPassword = '';

  void Function()? toggleLoginState() {
    login = !login;
    update();
    return null;
  }

  void Function()? toggleObsecure() {
    obsecure = !obsecure;
    update();
    return null;
  }

  void loginEmailOnSaved(String? email) {
    loginEmail = email!;
  }

  void loginPasswordOnSaved(String? password) {
    loginPassword = password!;
  }

  void Function()? loginOnPressed() {
    loginEmail = '';
    loginPassword = '';
    if (loginKey.currentState!.validate()) {
      loginKey.currentState!.save();
      log('Login Email : $loginEmail');
      log('Login Password : $loginPassword');
    }
    return null;
  }

  String? emailValidator(String? value) {
    if (GetUtils.isEmail(value!)) {
      return null;
    }
    return StringsManager.pleaseEnterValidEmail;
  }

  String? usernameValidator(String? value) {
    if (GetUtils.isLengthGreaterOrEqual(value!, 3)) {
      return null;
    }
    return StringsManager.pleaseEnterValidName;
  }

  String? passwordValidator(String? pass) {
    final password = pass ?? '';
    if (password.length < 8) {
      return StringsManager.passwordLengh;
    }
    if (!password.contains(RegExp(r'[A-Z]'))) {
      return StringsManager.passwordUpperCase;
    }
    if (!password.contains(RegExp(r'[a-z]'))) {
      return StringsManager.passwordLowerCase;
    }
    if (!password.contains(RegExp(r'[0-9]'))) {
      return StringsManager.passwordNumber;
    }
    if (!password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      return StringsManager.passwordSpecial;
    }
    if (password.contains(RegExp(r'\s'))) {
      return StringsManager.passwordSpace;
    }
    return null;
  }

  void Function()? forgetPasswordOnTap() {
    Get.toNamed(AppRouter.kForgetPasswordView);
    return null;
  }
}
