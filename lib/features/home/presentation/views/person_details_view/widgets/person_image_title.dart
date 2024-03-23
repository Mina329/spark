import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:spark/core/utils/color_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/core/widgets/functions/build_cover_image.dart';
import 'package:spark/core/widgets/functions/build_cover_overlay.dart';
import 'package:spark/features/home/presentation/controllers/person_details_controller/favourite_person_controller.dart';
import 'package:spark/features/home/presentation/controllers/person_details_controller/get_person_details_controller.dart';

class PersonImageTitle extends StatelessWidget {
  const PersonImageTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final GetPersonDetailsController getPersonDetailsController =
        Get.find<GetPersonDetailsController>();
    return SizedBox(
      height: 40 * MediaQuery.of(context).size.width / 27,
      child: Stack(
        children: [
          buildCoverImage(
              'https://image.tmdb.org/t/p/original${getPersonDetailsController.personResultEntity.profileUrl}'),
          buildCoverOverlay(context),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Text(
                  getPersonDetailsController.personResultEntity.name ?? '',
                  style: StylesManager.styleLatoBold25(context),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  getPersonDetailsController.personResultEntity.role ?? '',
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
                GetBuilder<FavouritePersonController>(
                    builder: (favouritePersonController) {
                  return IconButton(
                    onPressed: favouritePersonController.favouriteOnPressed,
                    icon: Icon(
                      favouritePersonController.favourite
                          ? FontAwesomeIcons.solidHeart
                          : FontAwesomeIcons.heart,
                      color: ColorManager.primaryColor,
                    ),
                  );
                }),
              ],
            ),
          )
        ],
      ),
    );
  }
}
