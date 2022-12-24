import 'package:flutter/cupertino.dart';

class TextStyleMyApp extends StatelessWidget {
  TextStyleMyApp(
      {super.key,
      required this.colorText,
      required this.fontSizeText,
      required this.text,
      this.fontWeightMyApp = FontWeight.normal});
  Color? colorText;
  double fontSizeText;
  String text;
  FontWeight fontWeightMyApp;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: colorText,
          fontSize: fontSizeText,
          fontWeight: fontWeightMyApp),
    );
  }
}