import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/color_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/features/home/domain/entities/show_result_entity.dart';
import 'package:spark/features/home/presentation/controllers/show_details_controllers/add_remove_show_to_list_controller.dart';
import 'package:spark/features/lists/domain/entities/list_entity.dart';
import 'package:spark/features/lists/domain/entities/show_mini_result_entity.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    super.key,
    required this.list,
    required this.show,
  });
  final ListEntity list;
  final ShowResultEntity show;
  @override
  Widget build(BuildContext context) {
    final AddRemoveShowToListController addRemoveShowToListController =
        Get.find<AddRemoveShowToListController>();
    return InkWell(
      borderRadius: BorderRadius.circular(5),
      onTap: () {
        if (!isShowInShowsList(show.id, list.shows)) {
          addRemoveShowToListController.addShowToList(
            list.id,
            show.toShowMiniResultEntity(),
          );
        } else {
          addRemoveShowToListController.removeShowFromList(
            list.id,
            show.id,
          );
        }
      },
      child: SizedBox(
        height: 30,
        child: Row(
          children: [
            Checkbox(
              splashRadius: 0,
              value: isShowInShowsList(show.id, list.shows),
              onChanged: (p0) {
                if (p0 == true) {
                  addRemoveShowToListController.addShowToList(
                    list.id,
                    show.toShowMiniResultEntity(),
                  );
                } else {
                  addRemoveShowToListController.removeShowFromList(
                    list.id,
                    show.id,
                  );
                }
              },
              fillColor: isShowInShowsList(show.id, list.shows)
                  ? const MaterialStatePropertyAll(
                      ColorManager.primaryColor,
                    )
                  : null,
              side: const BorderSide(color: ColorManager.primaryColor),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              list.title ?? '',
              style: StylesManager.styleLatoRegular18(context),
            )
          ],
        ),
      ),
    );
  }

  bool isShowInShowsList(int showId, List<ShowMiniResultEntity>? shows) {
    for (ShowMiniResultEntity show in shows ?? []) {
      if (show.id == showId) {
        return true;
      }
    }
    return false;
  }
}
