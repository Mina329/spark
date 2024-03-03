import 'package:flutter/material.dart';
import 'package:spark/core/utils/color_manager.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';

class ContinueAsGuestButton extends StatelessWidget {
  const ContinueAsGuestButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () {},
        child: Text(
          StringsManager.continueAsGuest,
          style: StylesManager.styleLatoRegular18(context).copyWith(
            color: ColorManager.primaryColor,
          ),
        ),
      ),
    );
  }
}
