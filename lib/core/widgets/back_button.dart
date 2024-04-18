import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/color_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';

class Back extends StatelessWidget {
  const Back({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => Get.back(),
      icon: Icon(
        FontAwesomeIcons.angleLeft,
        color: ColorManager.primaryColor,
        size: getResponsiveFontSize(context, fontSize: 24),
      ),
    );
  }
}
