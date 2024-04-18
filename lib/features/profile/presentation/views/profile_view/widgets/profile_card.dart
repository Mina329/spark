import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:spark/core/utils/assets_manager.dart';
import 'package:spark/core/utils/color_manager.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/features/profile/presentation/controllers/profile_view_controllers/user_info_controller.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserInfoController>(builder: (userInfoController) {
      return Column(
        children: [
          ClipOval(
            child: Container(
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                color: ColorManager.primaryColor,
              ),
              child: CachedNetworkImage(
                imageUrl: userInfoController.userInfo?.profileUrl ?? '',
                placeholder: (context, url) => Center(
                  child: Lottie.asset(Assets.assetsAnimationsMovieLoading),
                ),
                errorWidget: (context, url, error) => Center(
                  child: Icon(
                    FontAwesomeIcons.solidUser,
                    color: Colors.black,
                    size: getResponsiveFontSize(context, fontSize: 50),
                  ),
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            userInfoController.userInfo?.name ?? StringsManager.anonymous,
            style: StylesManager.styleLatoBold25(context),
          )
        ],
      );
    });
  }
}
