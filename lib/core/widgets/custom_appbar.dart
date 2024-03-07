import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/color_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.sectionName,
  });

  final String sectionName;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(
            FontAwesomeIcons.angleLeft,
            color: ColorManager.primaryColor,
          ),
        ),
        const Spacer(),
        Text(
          sectionName,
          style: StylesManager.styleLatoMedium20(context),
        ),
        const Spacer(),
        SizedBox(
          width: getResponsiveFontSize(context, fontSize: 24),
        )
      ],
    );
  }
}
