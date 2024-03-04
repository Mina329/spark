import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/color_manager.dart';

class Back extends StatelessWidget {
  const Back({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(40),
      onTap: () => Get.back(),
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Icon(
          FontAwesomeIcons.angleLeft,
          color: ColorManager.primaryColor,
        ),
      ),
    );
  }
}
