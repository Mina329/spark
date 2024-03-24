import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/color_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/core/widgets/enums.dart';
import 'package:spark/core/widgets/functions/build_cover_image.dart';
import 'package:spark/core/widgets/functions/build_cover_overlay.dart';
import 'package:spark/features/home/presentation/controllers/favourite_controller.dart';
import 'package:spark/features/home/presentation/controllers/show_details_controllers/show_details_controller.dart';

class ShowImageTitle extends StatelessWidget {
  const ShowImageTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final ShowDetailsController showDetailsController = Get.find<
            ShowDetailsController>(
        tag:
            "${Get.arguments['id'].toString()}_${Get.arguments['showType'].toString()}");
    return SizedBox(
      height: 40 * MediaQuery.of(context).size.width / 27,
      child: Stack(
        children: [
          buildCoverImage(
              'https://image.tmdb.org/t/p/original${showDetailsController.showResultEntity?.posterUrl}'),
          buildCoverOverlay(context),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Text(
                  showDetailsController.showResultEntity?.name ?? '',
                  style: StylesManager.styleLatoBold25(context),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  '${showDetailsController.showResultEntity?.releaseDate?.year ?? ''}${showDetailsController.showResultEntity?.releaseDate == null || showDetailsController.showResultEntity?.duration == null ? "" : " | "}${showDetailsController.showResultEntity?.duration ?? ''}',
                  style: StylesManager.styleLatoRegular16(context),
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
                GetBuilder<FavouriteController>(
                  tag:
                      "${Get.arguments['id'].toString()}_${Get.arguments['showType'].toString()}",
                  builder: (favouriteController) {
                    return IconButton(
                      onPressed: () {
                        favouriteController.favouriteOnPressed(
                          showDetailsController.showResultEntity,
                          showDetailsController.showResultEntity?.showType ??
                              ShowType.Movie,
                        );
                      },
                      icon: Icon(
                        favouriteController.favourite
                            ? FontAwesomeIcons.solidHeart
                            : FontAwesomeIcons.heart,
                        color: ColorManager.primaryColor,
                      ),
                    );
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
