import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:tuwaiq_community/controllers/themeController.dart';
import 'package:tuwaiq_community/router/router.dart';
import 'package:tuwaiq_community/views/style.dart';

class ThemeBTN extends StatelessWidget {
  ThemeBTN({super.key});
  ThemeController _themeController = Get.find();
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _themeController.changeTheme();
        Get.toNamed(RouterName.loginPage);
        // Get.forceAppUpdate();
      },
      child: Container(
        height: 50,
        width: 210,
        padding: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
            gradient: appColors.backgroundColor,
            borderRadius: BorderRadius.circular(8)),
        child: Row(
          children: [
            Image.asset(
              "images/ThemeIcon.png",
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              appColors.themeName,
              style: TextStyle(fontSize: 24, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
