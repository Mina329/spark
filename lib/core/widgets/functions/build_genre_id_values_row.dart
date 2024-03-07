import 'package:flutter/material.dart';

import '../../utils/styles_manager.dart';

Widget buildGenreIdValuesRow({
  required List<int> ids,
  required Map<int, String> idToValueMap,
  required BuildContext context,
  Color? textColor,
  MainAxisAlignment? mainAxisAlignment,
}) {
  List<Widget> widgets = [];
  for (int i = 0; i < ids.length; i++) {
    int id = ids[i];
    if (idToValueMap.keys.contains(id)) {
      widgets.add(
        Text(
          idToValueMap[id]!,
          style: StylesManager.styleLatoRegular16(context)
              .copyWith(color: textColor),
        ),
      );
      if (i < ids.length - 1) {
        widgets.add(
          Text(' • ',
              style: StylesManager.styleLatoRegular16(context)
                  .copyWith(color: textColor)),
        );
      }
    }
  }

  return Row(
    mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
    children: widgets,
  );
}
