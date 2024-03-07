import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:spark/core/utils/color_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';
import 'package:spark/features/home/data/data_sources/dummy_data.dart';

class RatingRow extends StatelessWidget {
  const RatingRow({
    super.key,
    required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: ColorManager.goldColor,
          size: getResponsiveFontSize(context, fontSize: 18),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          showsRating[index],
          style: StylesManager.styleLatoRegular16(context),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          '( ${showsRatingCount[index]} )',
          style: StylesManager.styleLatoRegular16(context).copyWith(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
