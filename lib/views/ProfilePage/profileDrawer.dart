import 'package:flutter/material.dart';

import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';

import 'package:tuwaiq_community/controllers/myDrawerController.dart';
import 'package:tuwaiq_community/views/ProfilePage/components/menu.dart';
import 'package:tuwaiq_community/views/ProfilePage/components/menuOption.dart';
import 'package:tuwaiq_community/views/ProfilePage/components/profileImage.dart';
import 'package:tuwaiq_community/views/ProfilePage/components/themeBTN.dart';
import 'package:tuwaiq_community/views/appNavigator.dart';
import 'package:tuwaiq_community/views/style.dart';

class profileDrawer extends StatelessWidget {
  const profileDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MyDrawerController>(
      builder: (_) => ZoomDrawer(
        controller: _.zoomDrawerController,
        menuScreen: MenuScreen(),
        mainScreen: AppNavigator(),
        mainScreenTapClose: true,
        borderRadius: 24.0,
        showShadow: true,
        angle: 0,
        menuBackgroundColor: appColors.onSecondary,
        drawerShadowsBackgroundColor: appColors.backgraund,
        slideWidth: Get.width * 0.65,
        isRtl: true,
        menuScreenWidth: Get.width * 0.65,
      ),
    );
  }
}

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Container(
          alignment: Alignment.center,
          height: Get.height,
          width: Get.width,
          // color: appColors.onPrimary,
          child: Column(
            children: const [
              SizedBox(
                height: 20,
              ),
              ProfileImage(imageURL: "images/profile 1.png", radius: 60),
              SizedBox(
                height: 8,
              ),
              Text(
                "رغد عبدالله",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Menu(),
              SizedBox(
                height: 50,
              ),
              ThemeBTN(),
            ],
          ),
        ),
      ),
    );
  }
}
