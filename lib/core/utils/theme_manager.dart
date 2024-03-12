import 'package:flutter/material.dart';
import 'package:spark/core/utils/color_manager.dart';

abstract class ThemeManager {
  static ThemeData get lightThemeData => ThemeData.light().copyWith(
        primaryColor: ColorManager.primaryColor,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.disabled)) {
                  return Colors.grey;
                }
                return ColorManager.primaryColor;
              },
            ),
            overlayColor: const MaterialStatePropertyAll(
              Color(0xFFF7DA80),
            ),
            shape: const MaterialStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
            ),
          ),
        ),
        inputDecorationTheme: const InputDecorationTheme(
          border: OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: ColorManager.primaryColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: ColorManager.primaryColor,
            ),
          ),
        ),
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor:
              ColorManager.primaryColor, // Change this to your desired color
        ),
      );
  static ThemeData get darkThemeData => ThemeData.dark().copyWith(
        primaryColor: ColorManager.primaryColor,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.disabled)) {
                  return ColorManager.geryColor;
                }
                return ColorManager.primaryColor;
              },
            ),
            overlayColor: const MaterialStatePropertyAll(
              Color(0xFFF7DA80),
            ),
            shape: const MaterialStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
            ),
          ),
        ),
        scaffoldBackgroundColor: ColorManager.darkScaffoldColor,
        inputDecorationTheme: const InputDecorationTheme(
          border: OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: ColorManager.primaryColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: ColorManager.primaryColor,
            ),
          ),
        ),
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor:
              ColorManager.primaryColor, // Change this to your desired color
        ),
      );
}
