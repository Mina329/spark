import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/app_router.dart';
import 'package:spark/features/auth/data/data_sources/static.dart';
import 'package:spark/features/auth/presentation/controllers/auth_controllers/log_in_with_facebook_controller.dart';
import 'package:spark/features/auth/presentation/controllers/auth_controllers/log_in_with_google_controller.dart';
import 'package:spark/features/auth/presentation/views/auth_view/widgets/custom_login_provider_button.dart';

class CustomLoginProviderRow extends StatelessWidget {
  const CustomLoginProviderRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final LogInWithGoogleController logInWithGoogleController =
        Get.find<LogInWithGoogleController>();
    final LogInWithFacebookController logInWithFacebookController =
        Get.find<LogInWithFacebookController>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomLoginProviderButton(
          image: customLoginProviderImages[0],
          onTap: () {
            logInWithGoogleController.logInWithGoogle();
          },
        ),
        CustomLoginProviderButton(
          image: customLoginProviderImages[1],
          onTap: () async {
            logInWithFacebookController.logInWithFacebook();
          },
        ),
        CustomLoginProviderButton(
          image: customLoginProviderImages[2],
          onTap: () {
            Get.toNamed(AppRouter.kEmailVerifyView);
          },
        )
      ],
    );
  }
}
