import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/widgets/loading_overlay.dart';
import 'package:spark/features/auth/presentation/controllers/forget_password_controllers/forget_password_controller.dart';
import 'package:spark/features/auth/presentation/views/forget_password_view/widgets/forget_password_view_body.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    final ForgetPasswordController forgetPasswordController =
        Get.find<ForgetPasswordController>();
    return Scaffold(
      body: Stack(
        children: [
          const ForgetPasswordViewBody(),
          Obx(() {
            if (forgetPasswordController.loading.isTrue) {
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
