import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/assets_manager.dart';
import 'package:spark/core/utils/color_manager.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/features/home/presentation/controllers/home_controller.dart';

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
                icon: const Icon(
                  FontAwesomeIcons.magnifyingGlass,
                  color: ColorManager.primaryColor,
                ),
              )
            ],
          ),
          GetBuilder<HomeController>(
            builder: (_) {
              return SlideTransition(
                position: homeController.slideAnimation!,
                child: homeController.search
                    ? _buildSearchField(context)
                    : const SizedBox(),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildSearchField(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextField(
        decoration: InputDecoration(
          fillColor: ColorManager.geryColor,
          filled: true,
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          prefixIcon: const Icon(
            FontAwesomeIcons.magnifyingGlass,
            color: ColorManager.primaryColor,
          ),
          hintText: StringsManager.searchMore,
          hintStyle: StylesManager.styleLatoLight20(context),
        ),
        cursorColor: ColorManager.primaryColor,
      ),
    );
  }
}
