import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/color_manager.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/features/home/domain/entities/show_result_entity.dart';
import 'package:spark/features/home/presentation/views/show_details_view/widgets/list_item.dart';
import 'package:spark/features/lists/presentation/controllers/get_user_lists_controller.dart';
import 'package:spark/features/lists/presentation/views/widgets/create_new_list_button.dart';

class AddToListBottomSheet extends StatelessWidget {
  const AddToListBottomSheet({
    super.key,
    required this.show,
  });
  final ShowResultEntity? show;

  @override
  Widget build(BuildContext context) {
    final getUserListsController = Get.find<GetUserListsController>();

    return BottomSheet(
      builder: (BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              StringsManager.addToMyList,
              textAlign: TextAlign.center,
              style: StylesManager.styleLatoBold25(context),
            ),
            const SizedBox(
              height: 10,
            ),
            Obx(
              () {
                if (getUserListsController.loading.isTrue) {
                  return const Center(
                    child: CircularProgressIndicator(
                      color: ColorManager.primaryColor,
                    ),
                  );
                } else {
                  return Column(
                    children: getUserListsController.lists
                        .map(
                          (e) => Padding(
                            padding: const EdgeInsets.only(bottom: 5),
                            child: ListItem(
                              list: e,
                              show: show!,
                            ),
                          ),
                        )
                        .toList(),
                  );
                }
              },
            ),
            const SizedBox(
              height: 10,
            ),
            const CreateNewListButton()
          ],
        ),
      ),
      onClosing: () {},
      backgroundColor: Color.lerp(ColorManager.primaryColor, Colors.black, 0.9),
    );
  }
}
