import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/features/home/presentation/views/person_details_view/widgets/person_media_tab.dart';
import 'package:spark/features/home/presentation/views/person_details_view/widgets/person_overview_tab.dart';

class PersonDetailsController extends GetxController {
  int index = 0;
  final List<String> tabs = [
    StringsManager.overview,
    StringsManager.media,
  ];

  final List<Widget> tabsWidgets = [
    const PersonOverviewTab(),
    const PersonMediaTab(),
  ];
  void changeTabs(int newIndex) {
    index = newIndex;
    update();
  }
}
