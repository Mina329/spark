import 'package:flutter/material.dart';
import 'package:spark/core/utils/color_manager.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';

class SkipToHomeWidget extends StatelessWidget {
  const SkipToHomeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () {},
        child: Text(
          StringsManager.skip,
          style: StylesManager.styleLatoRegular18(context).copyWith(
            color: ColorManager.primaryColor,
          ),
        ),
      ),
    );
  }
}
