import 'package:flutter/material.dart';
import 'package:spark/core/utils/color_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';

class ExploreGenreItem extends StatelessWidget {
  const ExploreGenreItem({
    super.key,
    required this.name,
  });
  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).brightness == Brightness.light
            ? Colors.white
            : Colors.grey[800],
        borderRadius: BorderRadius.circular(5),
        border: Theme.of(context).brightness == Brightness.light
            ? Border.all(color: ColorManager.primaryColor)
            : null,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Text(
        name,
        style: StylesManager.styleLatoRegular18(context),
      ),
    );
  }
}
