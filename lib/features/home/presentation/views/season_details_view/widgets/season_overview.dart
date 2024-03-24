import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:spark/core/utils/color_manager.dart';
import 'package:spark/core/utils/strings_manager.dart';
import 'package:spark/core/utils/styles_manager.dart';

class SeasonOverview extends StatelessWidget {
  const SeasonOverview({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          StringsManager.overview,
          style: StylesManager.styleLatoBold20(context),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            ExpandableText(
              "Rick Grimes wakes up from a coma to a world overrun by zombies, on a journey to find his family he must learn to survive the streets of post-apocalyptic Atlanta.",
              expandText: 'show more',
              collapseText: 'show less',
              expandOnTextTap: true,
              collapseOnTextTap: true,
              style: StylesManager.styleLatoRegular16(context)
                  .copyWith(color: Colors.grey),
              animation: true,
              maxLines: 5,
              linkColor: ColorManager.primaryColor,
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
