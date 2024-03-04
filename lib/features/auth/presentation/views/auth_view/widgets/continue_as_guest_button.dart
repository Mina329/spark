import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/app_router.dart';
import 'package:spark/core/utils/color_manager.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';

class ContinueAsGuestButton extends StatelessWidget {
  const ContinueAsGuestButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () {
          Get.toNamed(AppRouter.kImproveYourFeedsView);
        },
        child: Text(
          StringsManager.continueAsGuest,
          style: StylesManager.styleLatoRegular18(context).copyWith(
            color: ColorManager.primaryColor,
          ),
        ),
      ),
    );
  }
}
