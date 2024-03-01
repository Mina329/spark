import 'package:flutter/material.dart';
import 'package:spark/core/utils/color_manager.dart';

abstract class ThemeManager {
  static ThemeData get lightThemeData => ThemeData.light().copyWith();
  static ThemeData get darkThemeData => ThemeData.dark().copyWith(
    scaffoldBackgroundColor: ColorManager.darkScaffoldColor
  );
}
