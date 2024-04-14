import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spark/core/utils/assets_manager.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';

import '../utils/color_manager.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            Assets.assetsImagesError,
            width: MediaQuery.of(context).size.width * 0.5,
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            StringsManager.somethingWentWrongPleaseTryAgainLater,
            style: StylesManager.styleLatoBold20(context)
                .copyWith(color: ColorManager.primaryColor),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
