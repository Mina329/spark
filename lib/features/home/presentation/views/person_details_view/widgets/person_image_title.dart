import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/color_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/core/widgets/functions/build_cover_image.dart';
import 'package:spark/core/widgets/functions/build_cover_overlay.dart';

class PersonImageTitle extends StatelessWidget {
  const PersonImageTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.6,
      child: Stack(
        children: [
          buildCoverImage(
              'https://image.tmdb.org/t/p/original/7Jahy5LZX2Fo8fGJltMreAI49hC.jpg'),
          buildCoverOverlay(context),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Text(
                  'Bryan Cranston',
                  style: StylesManager.styleLatoBold25(context),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  'Actor',
                  style: StylesManager.styleLatoRegular16(context)
                      .copyWith(color: ColorManager.primaryColor),
                ),
              ],
            ),
          ),
          Positioned(
            top: 30,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () => Get.back(),
                  icon: const Icon(FontAwesomeIcons.angleLeft),
                  color: ColorManager.primaryColor,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    FontAwesomeIcons.heart,
                    color: ColorManager.primaryColor,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
