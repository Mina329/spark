import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/app_router.dart';
import 'package:spark/features/auth/data/data_sources/static.dart';
import 'package:spark/features/auth/presentation/views/auth_view/widgets/custom_login_provider_button.dart';

class CustomLoginProviderRow extends StatelessWidget {
  const CustomLoginProviderRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(
        customLoginProviderImages.length,
        (index) => CustomLoginProviderButton(
          image: customLoginProviderImages[index],
          onTap: () {
            Get.toNamed(AppRouter.kEmailVerifyView);
          },
        ),
      ),
    );
  }
}
