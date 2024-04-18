import 'package:flutter/material.dart';
import 'package:spark/core/utils/styles_manager.dart';

class KeyValueColumn extends StatelessWidget {
  const KeyValueColumn({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
    required this.iconColor,
    this.ratingCount,
  });
  final IconData icon;
  final String title;
  final String value;
  final Color iconColor;
  final int? ratingCount;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: iconColor,
              size: getResponsiveFontSize(context, fontSize: 18),
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              value,
              style: StylesManager.styleLatoRegular18(context),
            ),
            if (ratingCount != null)
              const SizedBox(
                width: 5,
              ),
            if (ratingCount != null)
              Text(
                '( $ratingCount )',
                style: StylesManager.styleLatoRegular16(context).copyWith(
                  color: Theme.of(context).brightness == Brightness.light
                      ? Colors.grey[800]
                      : Colors.grey,
                ),
              ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          title,
          style: StylesManager.styleLatoRegular14(context),
        )
      ],
    );
  }
}
