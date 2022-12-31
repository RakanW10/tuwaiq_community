import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tuwaiq_community/services/firebaseAuth.dart';
import 'package:tuwaiq_community/views/LoginPage/LoginPage.dart';
import 'package:tuwaiq_community/views/LoginPage/components/liButton.dart';
import 'package:tuwaiq_community/views/LoginPage/components/litextfield.dart';
import 'package:tuwaiq_community/views/appNavigator.dart';
import 'package:tuwaiq_community/views/style.dart';

class ChangePwd extends StatelessWidget {
  ChangePwd({super.key});
  TextEditingController chngPwd1 = TextEditingController();
  TextEditingController chngPwd2 = TextEditingController();

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
        decoration: BoxDecoration(
          gradient: appColors.backgroundColor,
        ),
        child: ListView(
          children: [
            Container(
                height: Get.width / 2.6,
                width: Get.width / 2.6,
                child: Image.asset("images/appLogo.png")),
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
                      "نغيير كلمة المرور",
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
                            controller: chngPwd1,
                            passwordType: true,
                            title: "كلمة المرور الجديدة",
                            inputType: TextInputType.number),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 25, 0, 10),
                        child: liTextField(
                            controller: chngPwd2,
                            title: "إعادة إدخال كلمة المرور الجديدة",
                            inputType: TextInputType.number,
                            passwordType: true),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: liButton(
                          onPressed: () async{
                            try {
                              if (chngPwd1.text.length > 5 &&
                                  chngPwd2.text.length > 5) {
                                if (chngPwd1.text == chngPwd2.text) {
                                  final FirebaseAuth firebaseAuth =
                                      FirebaseAuth.instance;
                                  User currentUser = firebaseAuth.currentUser!;
                                  await currentUser.updatePassword(chngPwd1.text);
                                  Get.snackbar("كلمة المرور",
                                      "تم تغيير كلمة المرور بنجاح");
                                      await SignOutMethod();
                                } else {
                                  Get.snackbar(
                                      "تطابق", "تأكد من تطابق كلمة المرور");
                                }
                              } else {
                                Get.snackbar("صعوبة كلمة المرور",
                                    "يجب ان تكون كلمة المرور اكثر من 5 حروف/ارقام");
                              }
                            } catch (r) {
                              print(r);
                            }
                          },
                          btnName: "  تغيير كلمة المرور",
                        ),
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
