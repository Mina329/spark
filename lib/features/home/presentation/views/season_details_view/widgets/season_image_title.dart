import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/color_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/core/widgets/functions/build_cover_image.dart';
import 'package:spark/core/widgets/functions/build_cover_overlay.dart';
import 'package:spark/features/home/presentation/views/show_details_view/widgets/key_value_column.dart';

class SeasonImageTitle extends StatelessWidget {
  const SeasonImageTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40 * MediaQuery.of(context).size.width / 27,
      child: Stack(
        children: [
          buildCoverImage(
              'https://image.tmdb.org/t/p/original/kKN1Klhdxhbiwe8TBXIs6NYPr4C.jpg'),
          buildCoverOverlay(context),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Text(
                  "Season 1",
                  style: StylesManager.styleLatoBold25(context),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  '2010 | 10 eps',
                  style: StylesManager.styleLatoRegular16(context),
                ),
                const SizedBox(
                  height: 10,
                ),
                const KeyValueColumn(
                  icon: FontAwesomeIcons.solidStar,
                  title: '',
                  value: '9.5',
                  iconColor: ColorManager.goldColor,
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
              ],
            ),
          )
        ],
      ),
    );
  }
}
