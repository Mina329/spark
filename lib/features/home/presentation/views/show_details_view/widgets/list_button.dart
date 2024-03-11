import 'package:flutter/material.dart';
import 'package:spark/core/utils/color_manager.dart';

class ListButton extends StatelessWidget {
  const ListButton({
    super.key,
    required this.content,
  });
  final Widget content;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.45,
      height: 50,
      decoration: const BoxDecoration(
        color: ColorManager.genreColor,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: content,
    );
  }
}
