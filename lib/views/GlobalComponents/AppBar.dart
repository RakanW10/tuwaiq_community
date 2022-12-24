import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tuwaiq_community/views/style.dart';


class AppBarMyApp extends StatelessWidget {
  AppBarMyApp({super.key, this.onPressed , this.nameAppBar});
  Function()? onPressed;
  String? nameAppBar;
  @override
  Widget build(BuildContext context) {
    return  AppBar(
        actions: [
          IconButton(onPressed: () {
            
          }, icon: Icon(Icons.arrow_back_ios_new))
        ],
        backgroundColor: appColors.onSecondary,
        title: Text(
          'مجتمعاتي',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
        ));
  }
}
