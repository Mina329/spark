import 'package:flutter/material.dart';

import '../../utils/styles_manager.dart';

Widget buildGenreIdValuesRow({
  required List<int> ids,
  required Map<int, String> idToValueMap,
  required BuildContext context,
  Color? textColor,
}) {
  // Create a list of strings based on the ids and the idToValueMap.
  List<String> genreNames = ids
      .where((id) => idToValueMap.containsKey(id)) // Filter ids present in the map.
      .map((id) => idToValueMap[id]!) // Map ids to their corresponding strings.
      .toList(); // Convert the result to a list.

  // Join the genre names with ' • ' as the separator.
  String genresText = genreNames.join(' • ');

  // Return a single Text widget.
  return Text(
    genresText,
    style: StylesManager.styleLatoRegular16(context).copyWith(color: textColor),
  );
}
