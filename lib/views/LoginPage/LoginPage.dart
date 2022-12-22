import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tuwaiq_community/views/LoginPage/components/liButton.dart';
import 'package:tuwaiq_community/views/LoginPage/components/litextfield.dart';
import 'package:tuwaiq_community/views/LoginPage/components/spacing.dart';
import 'package:tuwaiq_community/views/style.dart';
//import 'package:flutter_svg/flutter_svg.dart';


// svg picture has some errors, we need to fix the logo SVG pic
//font edits still in progress

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: const BoxDecoration(
          gradient: appColors.backgroundColor,
        ),
        child: ListView(
          children: [
            Spacing(height: 30),
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
                      "تسجيل الدخول",
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
                height: 353,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 25, 0, 10),
                        child: liTextField(title: "اسم المستخدم"),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 30, 0, 10),
                        child: liTextField(title: "كلمة المرور"),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: InkWell(
                          onTap: () {},
                          child: Text(
                            "نسيت كلمة المرور؟",
                            style: TextStyle(
                                color: Color(0xff999D9E),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: liButton(
                            ontapfunc: () {},
                            btnName: "تسجيل الدخول  ",
                            btnIcon: Icons.login),
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
