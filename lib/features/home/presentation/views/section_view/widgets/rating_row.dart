import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:spark/core/utils/color_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';

class RatingRow extends StatelessWidget {
  const RatingRow({
    super.key,
    required this.averageRating,
    required this.ratingCount,
  });
  final String averageRating;
  final String ratingCount;
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
          averageRating,
          style: StylesManager.styleLatoRegular16(context),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          '( $ratingCount )',
          style: StylesManager.styleLatoRegular16(context).copyWith(
            color: Theme.of(context).brightness == Brightness.light
                ? Colors.grey[800]
                : Colors.grey,
          ),
        ),
      ],
    );
  }
}
