import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/color_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/core/widgets/enums.dart';
import 'package:spark/core/widgets/functions/show_access_denied_dialog.dart';
import 'package:spark/features/home/presentation/controllers/favourite_controller.dart';
import 'package:spark/features/home/presentation/controllers/show_details_controllers/show_details_controller.dart';
import 'package:spark/features/home/presentation/views/show_details_view/widgets/add_to_list_widget.dart';
import 'package:spark/features/home/presentation/views/show_details_view/widgets/custom_tab_bar.dart';
import 'package:spark/features/home/presentation/views/show_details_view/widgets/show_image_title.dart';

class ShowDetailsViewBody extends StatelessWidget {
  const ShowDetailsViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final tag =
        '${Get.arguments['id'].toString()}_${Get.arguments['showType'].toString()}';
    final ShowDetailsController showDetailsController =
        Get.find<ShowDetailsController>(tag: tag);
    return Stack(
      children: [
        CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: ShowImageTitle(),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 10,
              ),
            ),
            const SliverToBoxAdapter(
              child: AddToListWidget(),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 20,
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 2),
                    child: SizedBox(
                      height: getResponsiveFontSize(context, fontSize: 25),
                      child: const CustomShowsTabBar(),
                    ),
                  ),
                  const Divider(),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: GetBuilder<ShowDetailsController>(
                tag:
                    "${Get.arguments['id'].toString()}_${Get.arguments['showType'].toString()}",
                builder: (showDetailsController) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: showDetailsController
                      .tabsWidgets[showDetailsController.index],
                ),
              ),
            )
          ],
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
                      final firebaseAuth = Get.find<FirebaseAuth>();
                      if (firebaseAuth.currentUser!.isAnonymous) {
                        showAccessDeniedDialog(context);
                        return;
                      }
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
        ),
      ],
    );
  }
}
