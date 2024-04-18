import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/assets_manager.dart';
import 'package:spark/core/utils/color_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/features/home/presentation/controllers/home_controllers/home_controller.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final HomeController homeController = Get.find<HomeController>();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                Assets.assetsImagesSparkLogo,
                height: 30,
              ),
              const Spacer(),
              IconButton(
                onPressed: homeController.toggleSearch,
                icon: Icon(
                  FontAwesomeIcons.magnifyingGlass,
                  color: ColorManager.primaryColor,
                  size: getResponsiveFontSize(context, fontSize: 24),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
