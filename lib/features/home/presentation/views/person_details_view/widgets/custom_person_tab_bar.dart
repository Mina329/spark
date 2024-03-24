import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:spark/features/home/presentation/controllers/person_details_controller/person_details_controller.dart';
import 'package:spark/features/home/presentation/views/show_details_view/widgets/tab_bar_item.dart';

class CustomPersonTabBar extends StatelessWidget {
  const CustomPersonTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PersonDetailsController>(
      tag: "${Get.arguments['id'].toString()}_${Get.arguments['showType'].toString()}",
      builder: (personDetailsController) => ListView.builder(
        itemBuilder: (context, index) => GestureDetector(
          onTap: () => personDetailsController.changeTabs(index),
          child: TabBarItem(
            active: index == personDetailsController.index,
            title: personDetailsController.tabs[index],
          ),
        ),
        scrollDirection: Axis.horizontal,
        itemCount: personDetailsController.tabs.length,
      ),
    );
  }
}
