import 'package:flutter/material.dart';

class appColors {
  static Color onPrimary = Color(0xFF009FAE);
  static Color onSecondary = Color(0xFF424448);
  static Color backgraund = Colors.white;
  static Color onMain = Color(0xFFFFFFFF);
  static LinearGradient backgroundColor = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      backgraund,
      onPrimary,
    ],
  );
  static changeTheme() {
    onPrimary = Color(0xFF04F1CC);
    backgraund = Color(0xFFBF40FF);
  }
}
