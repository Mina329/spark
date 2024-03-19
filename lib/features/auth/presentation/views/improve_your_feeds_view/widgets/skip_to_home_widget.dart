import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/color_manager.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/features/auth/presentation/controllers/improve_your_feed_controllers/improve_your_feed_controller.dart';

class SkipToHomeWidget extends StatelessWidget {
  const SkipToHomeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final improveYourFeedController = Get.find<ImproveYourFeedsController>();

    return Align(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: improveYourFeedController.skipButton,
        child: Text(
          StringsManager.skip,
          style: StylesManager.styleLatoRegular18(context).copyWith(
            color: ColorManager.primaryColor,
          ),
        ),
      ),
    );
  }
}
