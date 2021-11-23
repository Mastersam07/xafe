import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../core/navigation/app_navigation.dart';
import '../locator.dart';

class SizeConfig {
  static BuildContext appContext;
  static MediaQueryData _mediaQueryData;
  static double _designHeight = 896;
  static const double _designWidth = 414;
  static double devicePixelRatio;
  static void init(
    BuildContext context, {
    double pageHeight = 812.0,
  }) {
    _mediaQueryData = MediaQuery.of(context);
    appContext = context;
    devicePixelRatio = MediaQuery.of(context).devicePixelRatio;
    _designHeight = pageHeight;
  }

  static void ensureInitialized() {
    final key = locator<NavigationService>();
    if (appContext == null || _mediaQueryData == null) {
      appContext = key.navigationKey.currentContext;
      _mediaQueryData = MediaQuery.of(appContext);
      devicePixelRatio = MediaQuery.of(appContext).devicePixelRatio;
    }
  }

  static double height(double height) {
    ensureInitialized();
    final screenHeight = _mediaQueryData.size.height / _designHeight;
    return height * screenHeight;
  }

  static double width(double width) {
    ensureInitialized();
    final screenWidth = _mediaQueryData.size.width / _designWidth;
    return width * screenWidth;
  }

  static double textSize(double textSize) {
    ensureInitialized();
    final textRatio = _mediaQueryData.size.width / _designWidth;
    return textSize * textRatio;
  }
}
