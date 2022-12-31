import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:tuwaiq_community/router/router.dart';
import 'package:tuwaiq_community/views/ProfilePage/components/menuOption.dart';
<<<<<<< HEAD
import 'package:tuwaiq_community/views/Store/StorePage.dart';
=======
import 'package:tuwaiq_community/views/QRCodePage/qrCodePage.dart';
import 'package:tuwaiq_community/views/personalProfile/personalProfile.dart';
>>>>>>> 486747a99204a21468d517dfd4d69fb1838d82c1

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
              onTapFun: () {
                Get.to(()=>PersonalProfile());
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
              onTapFun: () {
                Get.toNamed(RouterName.qrCodePage);
              },
            ),
            const SizedBox(
              height: 2,
            ),
<<<<<<< HEAD
            InkWell(
              onTap: (() {
                Store();
              }),
              child: MenuOption(
                onTap: () {
                  Get.to(Store());
                },
                icon: Icons.store_rounded,
                option: "المتجر",
              ),
=======
            MenuOption(
              onTapFun: () {},
              icon: Icons.store_rounded,
              option: "المتجر",
>>>>>>> 486747a99204a21468d517dfd4d69fb1838d82c1
            ),
          ],
        ));
  }
}
