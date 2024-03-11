import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/features/home/presentation/controllers/show_details_controller.dart';
import 'package:spark/features/home/presentation/views/show_details_view/widgets/tab_bar_item.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ShowDetailsController>(
      builder: (showPersonDetailsController) => ListView.builder(
        itemBuilder: (context, index) => GestureDetector(
          onTap: () => showPersonDetailsController.changeTabs(index),
          child: TabBarItem(
            active: index == showPersonDetailsController.index,
            title: showPersonDetailsController.tabs[index],
          ),
        ),
        scrollDirection: Axis.horizontal,
        itemCount: showPersonDetailsController.tabs.length,
      ),
    );
  }
}
