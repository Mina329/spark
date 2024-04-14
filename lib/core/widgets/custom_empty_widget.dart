import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spark/core/utils/assets_manager.dart';
import 'package:spark/core/utils/color_manager.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';

class CustomEmptyWidget extends StatelessWidget {
  const CustomEmptyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            Assets.assetsImagesEmpty,
            width: MediaQuery.of(context).size.width * 0.5,
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            StringsManager.emptyMessage,
            style: StylesManager.styleLatoBold20(context)
                .copyWith(color: ColorManager.primaryColor),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
