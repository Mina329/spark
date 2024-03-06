import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spark/core/utils/size_config.dart';

abstract class StylesManager {
  static TextStyle styleLatoRegular18(BuildContext context) =>
      Get.theme.brightness == Brightness.dark
          ? TextStyle(
              fontFamily: 'Lato',
              fontSize: getResponsiveFontSize(context, fontSize: 18),
              fontWeight: FontWeight.w400,
            )
          : TextStyle(
              fontFamily: 'Lato',
              fontSize: getResponsiveFontSize(context, fontSize: 18),
              fontWeight: FontWeight.w400,
            );
  static TextStyle styleLatoRegular14(BuildContext context) =>
      Get.theme.brightness == Brightness.dark
          ? TextStyle(
              fontFamily: 'Lato',
              fontSize: getResponsiveFontSize(context, fontSize: 14),
              fontWeight: FontWeight.w400,
            )
          : TextStyle(
              fontFamily: 'Lato',
              fontSize: getResponsiveFontSize(context, fontSize: 14),
              fontWeight: FontWeight.w400,
            );
  static TextStyle styleLatoRegular16(BuildContext context) =>
      Get.theme.brightness == Brightness.dark
          ? TextStyle(
              fontFamily: 'Lato',
              fontSize: getResponsiveFontSize(context, fontSize: 16),
              fontWeight: FontWeight.w400,
            )
          : TextStyle(
              fontFamily: 'Lato',
              fontSize: getResponsiveFontSize(context, fontSize: 16),
              fontWeight: FontWeight.w400,
            );
  static TextStyle styleLatoRegular10(BuildContext context) =>
      Get.theme.brightness == Brightness.dark
          ? TextStyle(
              fontFamily: 'Lato',
              fontSize: getResponsiveFontSize(context, fontSize: 10),
              fontWeight: FontWeight.w400,
            )
          : TextStyle(
              fontFamily: 'Lato',
              fontSize: getResponsiveFontSize(context, fontSize: 10),
              fontWeight: FontWeight.w400,
            );
  static TextStyle styleLatoSemiBold16(BuildContext context) =>
      Get.theme.brightness == Brightness.dark
          ? TextStyle(
              fontFamily: 'Lato',
              fontSize: getResponsiveFontSize(context, fontSize: 16),
              fontWeight: FontWeight.w600,
            )
          : TextStyle(
              fontFamily: 'Lato',
              fontSize: getResponsiveFontSize(context, fontSize: 16),
              fontWeight: FontWeight.w600,
            );
  static TextStyle styleLatoLight20(BuildContext context) =>
      Get.theme.brightness == Brightness.dark
          ? TextStyle(
              fontFamily: 'Lato',
              fontSize: getResponsiveFontSize(context, fontSize: 20),
              fontWeight: FontWeight.w300,
            )
          : TextStyle(
              fontFamily: 'Lato',
              fontSize: getResponsiveFontSize(context, fontSize: 20),
              fontWeight: FontWeight.w300,
            );
  static TextStyle styleLatoBold34(BuildContext context) =>
      Get.theme.brightness == Brightness.dark
          ? TextStyle(
              fontFamily: 'Lato',
              fontSize: getResponsiveFontSize(context, fontSize: 34),
              fontWeight: FontWeight.w700,
            )
          : TextStyle(
              fontFamily: 'Lato',
              fontSize: getResponsiveFontSize(context, fontSize: 34),
              fontWeight: FontWeight.w700,
            );
  static TextStyle styleLatoBold25(BuildContext context) =>
      Get.theme.brightness == Brightness.dark
          ? TextStyle(
              fontFamily: 'Lato',
              fontSize: getResponsiveFontSize(context, fontSize: 25),
              fontWeight: FontWeight.w700,
            )
          : TextStyle(
              fontFamily: 'Lato',
              fontSize: getResponsiveFontSize(context, fontSize: 25),
              fontWeight: FontWeight.w700,
            );
  static TextStyle styleLatoBold16(BuildContext context) =>
      Get.theme.brightness == Brightness.dark
          ? TextStyle(
              fontFamily: 'Lato',
              fontSize: getResponsiveFontSize(context, fontSize: 20),
              fontWeight: FontWeight.w700,
            )
          : TextStyle(
              fontFamily: 'Lato',
              fontSize: getResponsiveFontSize(context, fontSize: 20),
              fontWeight: FontWeight.w700,
            );
  static TextStyle styleLatoBold12(BuildContext context) =>
      Get.theme.brightness == Brightness.dark
          ? TextStyle(
              fontFamily: 'Lato',
              fontSize: getResponsiveFontSize(context, fontSize: 12),
              fontWeight: FontWeight.w700,
            )
          : TextStyle(
              fontFamily: 'Lato',
              fontSize: getResponsiveFontSize(context, fontSize: 12),
              fontWeight: FontWeight.w700,
            );
  /////////////////////////////////////////////////////////////////////////////
  static TextStyle styleRobotoRegular16(BuildContext context) =>
      Get.theme.brightness == Brightness.dark
          ? TextStyle(
              fontFamily: 'Roboto',
              fontSize: getResponsiveFontSize(context, fontSize: 16),
              fontWeight: FontWeight.w400,
            )
          : TextStyle(
              fontFamily: 'Roboto',
              fontSize: getResponsiveFontSize(context, fontSize: 16),
              fontWeight: FontWeight.w400,
            );
  static TextStyle styleRobotoBold16(BuildContext context) =>
      Get.theme.brightness == Brightness.dark
          ? TextStyle(
              fontFamily: 'Roboto',
              fontSize: getResponsiveFontSize(context, fontSize: 16),
              fontWeight: FontWeight.w700,
            )
          : TextStyle(
              fontFamily: 'Roboto',
              fontSize: getResponsiveFontSize(context, fontSize: 16),
              fontWeight: FontWeight.w700,
            );
}

double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePixelRatio;

  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tablet) {
    return width / 550;
  }
  {
    return width / 1000;
  }
}
