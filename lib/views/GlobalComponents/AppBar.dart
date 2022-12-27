import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tuwaiq_community/views/style.dart';

AppBar? appBarMyApp(String title) {
  backgroundColor:
  appColors.onSecondary;
  AppBar(
      title: Text(title,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500)));
}
