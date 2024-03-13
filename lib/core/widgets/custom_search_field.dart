import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:spark/core/utils/color_manager.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: ColorManager.geryColor,
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
        prefixIcon: const Icon(
          FontAwesomeIcons.magnifyingGlass,
          color: ColorManager.primaryColor,
        ),
        hintText: StringsManager.searchMore,
        hintStyle: StylesManager.styleLatoLight20(context),
      ),
      cursorColor: ColorManager.primaryColor,
    );
  }
}
