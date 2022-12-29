import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:tuwaiq_community/views/ProfilePage/components/menuOption.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 30),
        // color: Colors.amber,
        width: Get.width,
        child: Column(
          children: const [
            MenuOption(
              icon: Icons.folder_shared_rounded,
              option: "الملف الشخصي",
            ),
            SizedBox(
              height: 2,
            ),
            MenuOption(
              icon: Icons.qr_code,
              option: "بطاقتي",
            ),
            SizedBox(
              height: 2,
            ),
            MenuOption(
              icon: Icons.store_rounded,
              option: "المتجر",
            ),
          ],
        ));
  }
}
