import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import 'package:tuwaiq_community/controllers/myDrawerController.dart';
import 'package:tuwaiq_community/views/ProfilePage/menuScreen.dart';
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
