import 'package:flutter/material.dart';

Color hexToColor(String code) {
  return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
}

class AppColors {
  static Color get background => hexToColor("#161616");
  static Color get two => hexToColor("#FFFFFF");
  static Color get hover => hexToColor("#b2b2b2");
  static Color get three => hexToColor("#4DCAD1");
}
