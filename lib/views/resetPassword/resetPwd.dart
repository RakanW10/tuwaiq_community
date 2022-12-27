import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tuwaiq_community/views/LoginPage/components/liButton.dart';
import 'package:tuwaiq_community/views/LoginPage/components/litextfield.dart';
import 'package:tuwaiq_community/views/LoginPage/components/spacing.dart';
import 'package:tuwaiq_community/views/ProfilePage/profilePage.dart';
import 'package:tuwaiq_community/views/appNavigator.dart';
import 'package:tuwaiq_community/views/style.dart';
//import 'package:flutter_svg/flutter_svg.dart';

// svg picture has some errors, we need to fix the logo SVG pic
//font edits still in progress

class ResetPwd extends StatelessWidget {
  const ResetPwd({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 30,
        actions: [
          IconButton(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            icon: Icon(
              Icons.arrow_back_ios_new_sharp,
              color: appColors.onSecondary,
            ),
            onPressed: () {
              Get.back();
            },
          ),
        ],
      ),
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: const BoxDecoration(
          gradient: appColors.backgroundColor,
        ),
        child: ListView(
          children: [
            Container(
                height: Get.width / 2.6,
                width: Get.width / 2.6,
                child: Image.asset("images/appLogo.png")),
            //SvgPicture.asset("images/tlogo.svg")
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 22),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 35,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 14, left: 11),
                      child: Container(
                        height: 30,
                        width: 3,
                        color: Color(0xff009FAE),
                      ),
                    ),
                    Text(
                      "كلمة المرور الجديدة",
                      style:
                          TextStyle(color: appColors.onSecondary, fontSize: 20),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Container(
                height: 320,
                decoration: BoxDecoration(
                    color: appColors.onMain,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 25, 0, 10),
                        child: liTextField(
                            title: "كلمة المرور الجديدة",
                            inputType: TextInputType.number),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 25, 0, 10),
                        child: liTextField(
                            title: "إعادة إدخال كلمة المرور الجديدة",
                            inputType: TextInputType.number),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: liButton(
                            onPressed: () {
                              Get.offAll(() => AppNavigator());
                            },
                            btnName: "تغيير كلمة المرور",
                            btnIcon: Icons.message),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
