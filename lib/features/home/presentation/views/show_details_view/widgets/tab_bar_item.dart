import 'package:flutter/material.dart';
import 'package:spark/core/utils/color_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';

class TabBarItem extends StatelessWidget {
  const TabBarItem({super.key, required this.active, required this.title});
  final bool active;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Text(
        title,
        style: StylesManager.styleLatoRegular18(context)
            .copyWith(color: active ? ColorManager.primaryColor : Colors.grey),
      ),
    );
  }
}
