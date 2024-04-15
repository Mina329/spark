import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:spark/core/utils/color_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/core/widgets/functions/show_access_denied_dialog.dart';
import 'package:spark/features/home/presentation/controllers/favourite_controller.dart';
import 'package:spark/features/home/presentation/controllers/person_details_controller/get_person_details_controller.dart';
import 'package:spark/features/home/presentation/controllers/person_details_controller/person_details_controller.dart';
import 'package:spark/features/home/presentation/views/person_details_view/widgets/custom_person_tab_bar.dart';
import 'package:spark/features/home/presentation/views/person_details_view/widgets/person_image_title.dart';

import '../../../../../../core/widgets/enums.dart';

class PersonDetailsViewBody extends StatelessWidget {
  const PersonDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final GetPersonDetailsController getPersonDetailsController =
        Get.find<GetPersonDetailsController>(
      tag:
          "${Get.arguments['id'].toString()}_${Get.arguments['showType'].toString()}",
    );
    return Stack(
      children: [
        CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: PersonImageTitle(),
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
                      child: const CustomPersonTabBar(),
                    ),
                  ),
                  const Divider(),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: GetBuilder<PersonDetailsController>(
                tag:
                    "${Get.arguments['id'].toString()}_${Get.arguments['showType'].toString()}",
                builder: (personDetailsController) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: personDetailsController
                      .tabsWidgets[personDetailsController.index],
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
                        getPersonDetailsController.personResultEntity,
                        ShowType.Person,
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
              ),
            ],
          ),
        ),
      ],
    );
  }
}
