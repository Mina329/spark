import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/core/widgets/functions/show_access_denied_dialog.dart';
import 'package:spark/features/home/presentation/controllers/show_details_controllers/show_details_controller.dart';
import 'package:spark/features/home/presentation/views/show_details_view/widgets/add_to_list_bottom_sheet.dart';
import 'package:spark/features/home/presentation/views/show_details_view/widgets/list_button.dart';

class ListsDropDown extends StatelessWidget {
  const ListsDropDown({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final ShowDetailsController showDetailsController = Get.find<
            ShowDetailsController>(
        tag:
            "${Get.arguments['id'].toString()}_${Get.arguments['showType'].toString()}");

    return GestureDetector(
      onTap: () {
        final firebaseAuth = Get.find<FirebaseAuth>();
        if (firebaseAuth.currentUser!.isAnonymous) {
          showAccessDeniedDialog(context);
          return;
        }
        Get.bottomSheet(
          AddToListBottomSheet(
            show: showDetailsController.showResultEntity,
          ),
        );
      },
      child: ListButton(
        content: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Icon(
              FontAwesomeIcons.plus,
            ),
            Text(
              StringsManager.addToMyList,
              style: StylesManager.styleLatoRegular18(context),
            ),
            const Icon(
              FontAwesomeIcons.angleDown,
            ),
          ],
        ),
      ),
    );
  }
}
