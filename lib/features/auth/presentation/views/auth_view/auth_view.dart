import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/widgets/loading_overlay.dart';
import 'package:spark/features/auth/presentation/controllers/auth_controllers/log_in_user_with_email_and_password_controller.dart';
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
        ],
      ),
    );
  }
}
