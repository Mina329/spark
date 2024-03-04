import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/features/auth/presentation/controllers/improve_your_feed_controller.dart';

class AllSetButton extends StatelessWidget {
  const AllSetButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final improveYourFeedController = Get.find<ImproveYourFeedsController>();

    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 50),
        child: ElevatedButton(
          onPressed: improveYourFeedController.allSetButtonOnPressed,
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(double.infinity, 50),
          ),
          child: Text(
            StringsManager.allSet,
            style: StylesManager.styleRobotoBold16(context).copyWith(
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
