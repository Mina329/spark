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
                ? const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Icon(
                      Icons.close,
                      color: ColorManager.primaryColor,
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
