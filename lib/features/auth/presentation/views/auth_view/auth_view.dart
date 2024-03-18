import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/widgets/loading_overlay.dart';
import 'package:spark/features/auth/presentation/controllers/auth_controllers/log_in_anonymously_controller.dart';
import 'package:spark/features/auth/presentation/controllers/auth_controllers/log_in_user_with_email_and_password_controller.dart';
import 'package:spark/features/auth/presentation/controllers/auth_controllers/log_in_with_facebook_controller.dart';
import 'package:spark/features/auth/presentation/controllers/auth_controllers/log_in_with_google_controller.dart';
import 'package:spark/features/auth/presentation/controllers/auth_controllers/sign_up_with_email_and_password_controller.dart';
import 'package:spark/features/auth/presentation/views/auth_view/widgets/auth_view_body.dart';

class AuthView extends StatelessWidget {
  const AuthView({super.key});

  @override
  Widget build(BuildContext context) {
    final SignUpWithEmailAndPasswordController
        signUpWithEmailAndPasswordController =
        Get.find<SignUpWithEmailAndPasswordController>();
    final LogInUserWithEmailAndPasswordController
        logInUserWithEmailAndPasswordController =
        Get.find<LogInUserWithEmailAndPasswordController>();
    final LogInWithGoogleController logInWithGoogleController =
        Get.find<LogInWithGoogleController>();
    final LogInAnonymouslyController logInAnonymouslyController =
        Get.find<LogInAnonymouslyController>();
    final LogInWithFacebookController logInWithFacebookController =
        Get.find<LogInWithFacebookController>();
    return Scaffold(
      body: Stack(
        children: [
          const AuthViewBody(),
          Obx(() {
            if (signUpWithEmailAndPasswordController.loading.isTrue) {
              return const LoadingOverlay();
            } else {
              return const SizedBox.shrink();
            }
          }),
          Obx(() {
            if (logInUserWithEmailAndPasswordController.loading.isTrue) {
              return const LoadingOverlay();
            } else {
              return const SizedBox.shrink();
            }
          }),
          Obx(() {
            if (logInWithGoogleController.loading.isTrue) {
              return const LoadingOverlay();
            } else {
              return const SizedBox.shrink();
            }
          }),
          Obx(() {
            if (logInAnonymouslyController.loading.isTrue) {
              return const LoadingOverlay();
            } else {
              return const SizedBox.shrink();
            }
          }),
          Obx(() {
            if (logInWithFacebookController.loading.isTrue) {
              return const LoadingOverlay();
            } else {
              return const SizedBox.shrink();
            }
          }),
        ],
      ),
    );
  }
}
