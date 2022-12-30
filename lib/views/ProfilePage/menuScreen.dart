
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tuwaiq_community/views/ProfilePage/components/menu.dart';
import 'package:tuwaiq_community/views/ProfilePage/components/profileImage.dart';
import 'package:tuwaiq_community/views/ProfilePage/components/themeBTN.dart';

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
