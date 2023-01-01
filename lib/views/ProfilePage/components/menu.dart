import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:tuwaiq_community/router/router.dart';
import 'package:tuwaiq_community/views/ProfilePage/components/menuOption.dart';

import 'package:tuwaiq_community/views/Store/StorePage.dart';

import 'package:tuwaiq_community/views/QRCodePage/qrCodePage.dart';
import 'package:tuwaiq_community/views/personalProfile/personalProfile.dart';


import 'package:tuwaiq_community/views/Store/StorePage.dart';
import 'package:tuwaiq_community/views/QRCodePage/qrCodePage.dart';
import 'package:tuwaiq_community/views/personalProfile/personalProfile.dart';


class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(right: 30),
        // color: Colors.amber,
        width: Get.width,
        child: Column(
          children: [
            MenuOption(
              onTap: () {
                Get.to(() => PersonalProfile());
              },
              icon: Icons.folder_shared_rounded,
              option: "الملف الشخصي",
            ),
            const SizedBox(
              height: 2,
            ),
            MenuOption(
              icon: Icons.qr_code,
              option: "بطاقتي",
              onTap: () {
                Get.toNamed(RouterName.qrCodePage);
              },
            ),
            const SizedBox(
              height: 2,
            ),
            MenuOption(

              icon: Icons.qr_code,
              option: "المتجر",
              onTap: () {
                Get.toNamed(RouterName.store);
              },
            )],

          
            ),
          

        );
  }
}
