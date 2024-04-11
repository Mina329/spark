import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/color_manager.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/features/profile/presentation/controllers/settings_view_controller/change_user_name_controller.dart';

class ChangeAccountNameWidget extends StatelessWidget {
  const ChangeAccountNameWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final ChangeUserNameController changeUserNameController =
        Get.find<ChangeUserNameController>();
    return InkWell(
      onTap: () => Get.bottomSheet(
        BottomSheet(
          builder: (BuildContext context) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  StringsManager.changeAccountName,
                  textAlign: TextAlign.center,
                  style: StylesManager.styleLatoBold25(context),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  StringsManager.newName,
                  style: StylesManager.styleLatoBold20(context),
                ),
                const SizedBox(
                  height: 5,
                ),
                TextField(
                  controller: changeUserNameController.controller,
                  decoration: InputDecoration(
                    fillColor: Color.lerp(
                        ColorManager.primaryColor, Colors.black, 0.7),
                    filled: true,
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    hintText: StringsManager.newName,
                    hintStyle: StylesManager.styleLatoLight20(context),
                  ),
                  cursorColor: ColorManager.primaryColor,
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    onPressed: changeUserNameController.onSubmitPressed,
                    child: Text(
                      StringsManager.submit,
                      style: StylesManager.styleLatoBold20(context)
                          .copyWith(color: Colors.black),
                    ),
                  ),
                )
              ],
            ),
          ),
          onClosing: () {},
          backgroundColor:
              Color.lerp(ColorManager.primaryColor, Colors.black, 0.9),
        ),
      ),
      borderRadius: BorderRadius.circular(5),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              StringsManager.changeAccountName,
              style: StylesManager.styleLatoBold20(context),
            ),
            const Icon(
              FontAwesomeIcons.angleRight,
              color: ColorManager.primaryColor,
            )
          ],
        ),
      ),
    );
  }
}
