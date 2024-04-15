import 'package:flutter/material.dart';
import 'package:spark/core/utils/styles_manager.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.sectionName,
  });

  final String sectionName;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        sectionName,
        style: StylesManager.styleLatoMedium20(context),
      ),
    );
  }
}
