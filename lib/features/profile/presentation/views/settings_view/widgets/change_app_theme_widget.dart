import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:spark/core/cache/cache_helper.dart';
import 'package:spark/core/cache/cache_keys_values.dart';
import 'package:spark/core/utils/color_manager.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';

class ChangeAppThemeWidget extends StatelessWidget {
  const ChangeAppThemeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(5),
      onTap: () => Get.bottomSheet(
        BottomSheet(
          builder: (BuildContext context) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  StringsManager.changeAppTheme,
                  textAlign: TextAlign.center,
                  style: StylesManager.styleLatoBold25(context),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(5),
                  onTap: () async {
                    Get.changeThemeMode(ThemeMode.light);
                    await CacheData.setData(
                        key: CacheKeys.kLIGHTTHEME, value: CacheValues.LIGHT);
                    Get.back();
                  },
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
                    child: Text(
                      StringsManager.lightTheme,
                      style: StylesManager.styleLatoBold20(context),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(5),
                  onTap: () async {
                    Get.changeThemeMode(ThemeMode.dark);
                    await CacheData.setData(
                        key: CacheKeys.kLIGHTTHEME, value: CacheValues.DARK);
                    Get.back();
                  },
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
                    child: Text(
                      StringsManager.darkTheme,
                      style: StylesManager.styleLatoBold20(context),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
          onClosing: () {},
          backgroundColor: Theme.of(context).brightness == Brightness.light
              ? Colors.white
              : Color.lerp(ColorManager.primaryColor, Colors.black, 0.9),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              StringsManager.changeAppTheme,
              style: StylesManager.styleLatoBold20(context),
            ),
            Icon(
              FontAwesomeIcons.angleRight,
              color: ColorManager.primaryColor,
              size: getResponsiveFontSize(context, fontSize: 24),
            )
          ],
        ),
      ),
    );
  }
}
