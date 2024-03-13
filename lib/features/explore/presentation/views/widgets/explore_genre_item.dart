import 'package:flutter/material.dart';
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
        color: Colors.grey[800],
        borderRadius: BorderRadius.circular(5),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Text(
        name,
        style: StylesManager.styleLatoRegular18(context),
      ),
    );
  }
}
