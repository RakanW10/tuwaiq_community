import 'package:flutter/material.dart';

class appColors {
  static const Color onPrimary = Color(0xFF009FAE);
  static const Color onSecondary = Color(0xFF424448);
  static const Color onMain = Color(0xFFFFFFFF);
  static const LinearGradient backgroundColor = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      appColors.onMain,
      appColors.onPrimary,
    ],
  );
}
