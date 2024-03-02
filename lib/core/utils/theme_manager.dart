import 'package:flutter/material.dart';
import 'package:spark/core/utils/color_manager.dart';

abstract class ThemeManager {
  static const MaterialColor customPrimarySwatch = MaterialColor(
    0xFFD89D07,
    <int, Color>{
      50: Color(0xFFFDF4E0),
      100: Color(0xFFFAE7B1),
      200: Color(0xFFF7DA80),
      300: Color(0xFFF4CD4F),
      400: Color(0xFFF2C31E),
      500: Color(0xFFD89D07),
      600: Color(0xFFD79206),
      700: Color(0xFFD18905),
      800: Color(0xFFCA8004),
      900: Color(0xFFC17002),
    },
  );
  static ThemeData get lightThemeData => ThemeData.light().copyWith(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: customPrimarySwatch,
        ),
        elevatedButtonTheme: const ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor:
                MaterialStatePropertyAll(ColorManager.primaryColor),
            overlayColor: MaterialStatePropertyAll(
              Color(0xFFF7DA80),
            ),
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
            ),
          ),
        ),
      );
  static ThemeData get darkThemeData => ThemeData.dark().copyWith(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: customPrimarySwatch,
        ).copyWith(
          brightness: Brightness.dark,
        ),
        elevatedButtonTheme: const ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor:
                MaterialStatePropertyAll(ColorManager.primaryColor),
            overlayColor: MaterialStatePropertyAll(
              Color(0xFFF7DA80),
            ),
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
            ),
          ),
        ),
        scaffoldBackgroundColor: ColorManager.darkScaffoldColor,
      );
}
