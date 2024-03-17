import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/color_manager.dart';
import 'package:spark/features/auth/presentation/controllers/auth_controllers/sign_up_with_email_and_password_controller.dart';
import 'package:spark/features/auth/presentation/views/auth_view/widgets/auth_view_body.dart';

class AuthView extends StatelessWidget {
  const AuthView({super.key});

  @override
  Widget build(BuildContext context) {
    final SignUpWithEmailAndPasswordController
        signUpWithEmailAndPasswordController =
        Get.find<SignUpWithEmailAndPasswordController>();

    return Scaffold(
      body: Stack(
        children: [
          const AuthViewBody(),
          Obx(() {
            if (signUpWithEmailAndPasswordController.loading.isTrue) {
              return Container(
                color: Colors.black.withOpacity(0.5),
                child: const Center(
                  child: CircularProgressIndicator(
                    color: ColorManager.primaryColor,
                  ),
                ),
              );
            } else {
              return const SizedBox.shrink();
            }
          }),
        ],
      ),
    );
  }
}
