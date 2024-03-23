import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/color_manager.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/features/home/presentation/controllers/show_details_controllers/show_details_controller.dart';
import 'package:spark/features/home/presentation/views/show_details_view/widgets/key_value_column.dart';
import 'package:spark/features/home/presentation/views/show_details_view/widgets/list_button.dart';
import 'package:spark/features/home/presentation/views/show_details_view/widgets/lists_drop_down.dart';

class AddToListWidget extends StatelessWidget {
  const AddToListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final ShowDetailsController showDetailsController =
        Get.find<ShowDetailsController>();
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            KeyValueColumn(
              icon: FontAwesomeIcons.solidStar,
              title: StringsManager.rating,
              value: showDetailsController.showResultEntity.voteAverage
                      ?.toStringAsFixed(1) ??
                  '',
              iconColor: ColorManager.goldColor,
            ),
            KeyValueColumn(
              icon: FontAwesomeIcons.bolt,
              title: StringsManager.popularity,
              value: showDetailsController.showResultEntity.popularity
                      ?.toStringAsFixed(1) ??
                  '',
              iconColor: Colors.red,
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: true
              ? const ListsDropDown()
              // ignore: dead_code
              : ListButton(
                  content: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Icon(
                        FontAwesomeIcons.check,
                      ),
                      Text(
                        '${StringsManager.addedTo} List 1',
                        style: StylesManager.styleLatoRegular18(context),
                      ),
                    ],
                  ),
                ),
        ),
      ],
    );
  }
}
