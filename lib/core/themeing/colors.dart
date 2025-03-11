import 'package:flutter/material.dart';

class ColorsManager {
  // Light theme colors
  static const Color lightMainBlue = Color(0xFF247CFF);
  static const Color lightMainGray = Color(0xFF757575);
  static const Color lightLighterGray = Color(0xFFEDEDED);
  static const Color lightLightGray = Color(0xFFC2C2C2);
  static const Color lightGrayWhite = Color(0xFFFDFDFF);

  // Dark theme colors
  static const Color darkMainBlue = Color(0xFF4A90E2);
  static const Color darkMainGray = Color(0xFFAAAAAA);
  static const Color darkLighterGray = Color(0xFF424242);
  static const Color darkLightGray = Color(0xFF616161);
  static const Color darkGrayWhite = Color(0xFF303030);

  // Get colors based on theme
  static Color getMainBlue(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark 
        ? darkMainBlue 
        : lightMainBlue;
  }

  static Color getMainGray(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark 
        ? darkMainGray 
        : lightMainGray;
  }

  static Color getLighterGray(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark 
        ? darkLighterGray 
        : lightLighterGray;
  }

  static Color getLightGray(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark 
        ? darkLightGray 
        : lightLightGray;
  }

  static Color getGrayWhite(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark 
        ? darkGrayWhite 
        : lightGrayWhite;
  }
}