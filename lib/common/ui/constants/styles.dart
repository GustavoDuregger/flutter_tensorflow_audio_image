import 'package:flutter/material.dart';

import 'colors.dart';

class AppStyle {
  AppStyle();
  static ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 20),
      primary: PalletColors.primaryColor);
  static const TextStyle titleTextStyle = TextStyle(
    fontSize: 40,
    color: PalletColors.blackColor,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle subtitleTextStyle =
      TextStyle(fontSize: 16, color: PalletColors.primaryColor);
}
