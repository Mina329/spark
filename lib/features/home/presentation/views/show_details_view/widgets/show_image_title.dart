import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/color_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/core/widgets/functions/build_cover_image.dart';
import 'package:spark/core/widgets/functions/build_cover_overlay.dart';
import 'package:spark/features/home/data/data_sources/dummy_data.dart';

class ShowImageTitle extends StatelessWidget {
  const ShowImageTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.6,
      child: Stack(
        children: [
          buildCoverImage(showsImages[1]),
          buildCoverOverlay(context),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Text(
                  'Breaking Bad',
                  style: StylesManager.styleLatoBold25(context),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  '2008 | 2h 22m',
                  style: StylesManager.styleLatoRegular16(context),
                ),
              ],
            ),
          ),
          Positioned(
            top: 30,
            left: 20,
            child: IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(FontAwesomeIcons.angleLeft),
              color: ColorManager.primaryColor,
            ),
          )
        ],
      ),
    );
  }
}
