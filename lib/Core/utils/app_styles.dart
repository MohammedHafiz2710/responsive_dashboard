import 'dart:ui';

import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/Core/utils/size_config.dart';

abstract class AppStyles {
  static TextStyle styleRegular12 = TextStyle(
    color: Color(0xffAAAAAA),
    fontSize: getResponsiveFontSize(12),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );
  static TextStyle styleRegular14 = TextStyle(
    color: Color(0xffAAAAAA),
    fontSize: getResponsiveFontSize(14),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );
  static TextStyle styleRegular16 = TextStyle(
    color: Color(0xFF064060),
    fontSize: getResponsiveFontSize(16),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );
  static TextStyle styleMedium16 = TextStyle(
    color: Color(0xFF064060),
    fontSize: getResponsiveFontSize(16),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
  );
  static TextStyle styleMedium20 = TextStyle(
    color: Color(0xFFFFFFFF),
    fontSize: getResponsiveFontSize(20),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
  );
  static TextStyle styleSemiBold16 = TextStyle(
    color: Color(0xFF064060),
    fontSize: getResponsiveFontSize(16),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );
  static TextStyle styleSemiBold18 = TextStyle(
    color: Color(0xFF4EB7F2),
    fontSize: getResponsiveFontSize(18),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );
  static TextStyle styleSemiBold20 = TextStyle(
    color: Color(0xFF064060),
    fontSize: getResponsiveFontSize(20),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );
  static TextStyle styleSemiBold24 = TextStyle(
    color: Color(0xFF4EB7F2),
    fontSize: getResponsiveFontSize(24),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );
  static TextStyle styleBold16 = TextStyle(
    color: Color(0xFF4EB7F2),
    fontSize: getResponsiveFontSize(16),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );
}

double getResponsiveFontSize(double fontSize) {
  double scaleFactor = getScaleFactor();
  double responsiveSize = fontSize * scaleFactor;
  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.2;
  return responsiveSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor() {
  var dispatcher = PlatformDispatcher.instance;
  var physicalWidth = dispatcher.views.first.physicalSize.width;
  var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  var width = physicalWidth / devicePixelRatio;
  if (width < SizeConfig.tabletBreakPoint) {
    return width / 550;
  } else if (width < SizeConfig.desktopBreakPoint) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}
