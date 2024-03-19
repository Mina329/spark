import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/color_manager.dart';
import 'package:spark/features/auth/data/data_sources/static.dart';
import 'package:spark/features/auth/data/models/genre_model.dart';

class ImproveYourFeedsController extends GetxController {
  RxList<GenreModel> selectedGenres = RxList<GenreModel>();
  RxMap<String, Color> genreColorsMap = RxMap<String, Color>();

  void selectGenre(GenreModel genreModel) {
    if (!selectedGenres.contains(genreModel)) {
      selectedGenres.add(genreModel);
      genreColorsMap[genreModel.name] =
          genreColors[Random().nextInt(genreColors.length)];
    } else {
      selectedGenres.remove(genreModel);
      genreColorsMap.remove(genreModel.name);
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
