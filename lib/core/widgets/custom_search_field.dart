import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/color_manager.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/features/explore/presentation/controllers/get_search_result_controller.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final getSearchResultController = Get.find<GetSearchResultController>();
    return TextField(
      controller: getSearchResultController.controller,
      decoration: InputDecoration(
        fillColor: Theme.of(context).brightness == Brightness.light
            ? Colors.white
            : ColorManager.geryColor,
        filled: true,
        border: OutlineInputBorder(
          borderSide: Theme.of(context).brightness == Brightness.light
              ? const BorderSide()
              : BorderSide.none,
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: Theme.of(context).brightness == Brightness.light
              ? const BorderSide()
              : BorderSide.none,
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        prefixIcon: Icon(
          FontAwesomeIcons.magnifyingGlass,
          color: ColorManager.primaryColor,
          size: getResponsiveFontSize(context, fontSize: 24),
        ),
        suffixIcon: Obx(
          () => InkWell(
            onTap: getSearchResultController.showSuffixIcon.isTrue
                ? () {
                    getSearchResultController.controller!.clear();
                    getSearchResultController.savedQuery = '';
                    getSearchResultController.showSuffixIcon.value = false;
                    getSearchResultController.defaultWidget.value = true;
                  }
                : null,
            child: getSearchResultController.showSuffixIcon.isTrue
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Icon(
                      Icons.close,
                      color: ColorManager.primaryColor,
                      size: getResponsiveFontSize(context, fontSize: 24),
                    ),
                  )
                : const SizedBox.shrink(),
          ),
        ),
        hintText: StringsManager.searchMore,
        hintStyle: StylesManager.styleLatoLight20(context),
      ),
      cursorColor: ColorManager.primaryColor,
      onChanged: getSearchResultController.onChangedTextField,
    );
  }
}
