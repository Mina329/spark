import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/assets_manager.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/features/profile/presentation/controllers/settings_view_controller/sign_out_controller.dart';

class AccessDeniedWidget extends StatelessWidget {
  const AccessDeniedWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final signOutController = Get.find<SignOutController>();
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          StringsManager.accessDenied,
          style: StylesManager.styleLatoBold20(context),
        ),
        const SizedBox(
          height: 30,
        ),
        SvgPicture.asset(
          Assets.assetsImagesAccessDenied,
          width: MediaQuery.of(context).size.width * 0.3,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          StringsManager.loginToUseThisFeature,
          style: StylesManager.styleLatoMedium20(context),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: signOutController.signOutUser,
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    StringsManager.goToLogIn,
                    style: StylesManager.styleLatoRegular18(context)
                        .copyWith(color: Colors.black),
                    maxLines: 1,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: TextButton(
                onPressed: () => Get.back(),
                child: Text(
                  StringsManager.cancel,
                  style: StylesManager.styleLatoRegular18(context).copyWith(
                      color: Theme.of(context).brightness == Brightness.light
                          ? Colors.black
                          : Colors.white),
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
