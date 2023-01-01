import 'package:flutter/material.dart';
import 'package:get/get.dart';

class appColors {
  static String themeName = "أكاديمية طويق";
  static Color onPrimary = Color(0xFF04F1CC);
  static Color onSecondary = Color(0xFF424448);
  static Color backgraund = Color(0xFFBF40FF);
  static Color onMain = Color(0xFFFFFFFF);
  static LinearGradient backgroundColor = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      backgraund,
      onPrimary,
    ],
  );
  static themeTwuaiq() {
    onPrimary = Color(0xFF04F1CC);
    backgraund = Color(0xFFBF40FF);
    backgroundColor = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        backgraund,
        onPrimary,
      ],
    );
    themeName = "أكاديمية طويق";
  }

  static themeSAFCSP() {
    onPrimary = Color(0xFF009FAE);
    backgraund = Colors.white;
    backgroundColor = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        backgraund,
        onPrimary,
      ],
    );
    themeName = "SAFCSP";
  }
}
