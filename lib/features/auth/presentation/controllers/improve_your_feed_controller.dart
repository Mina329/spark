import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/color_manager.dart';
import 'package:spark/features/auth/data/data_sources/static.dart';

class ImproveYourFeedsController extends GetxController {
  RxList<int> selectedGenres = RxList<int>();
  RxMap<String, Color> genreColorsMap = RxMap<String, Color>();

  void selectGenre(String genre, int value) {
    if (!selectedGenres.contains(value)) {
      selectedGenres.add(value);
      genreColorsMap[genre] = genreColors[Random().nextInt(genreColors.length)];
    } else {
      selectedGenres.remove(value);
      genreColorsMap.remove(genre);
    }
  }

  Color getColorForGenre(String genre) {
    return genreColorsMap[genre] ??
        (Get.theme.brightness == Brightness.dark
            ? ColorManager.genreColor
            : Colors.black.withOpacity(0.1));
  }

  void allSetButtonOnPressed() {
    for (var item in selectedGenres) {
      print(item);
    }
  }
}
