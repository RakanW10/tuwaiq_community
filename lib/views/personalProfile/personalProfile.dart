import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:get/get.dart';
import 'package:tuwaiq_community/services/firebaseAuth.dart';
import 'package:tuwaiq_community/views/LoginPage/components/liButton.dart';
import 'package:tuwaiq_community/views/LoginPage/components/spacing.dart';
import 'package:tuwaiq_community/views/personalProfile/components/changeEmailpage.dart';
import 'package:tuwaiq_community/views/personalProfile/components/changePassPage.dart';
import 'package:tuwaiq_community/views/style.dart';

class PersonalProfile extends StatefulWidget {
  PersonalProfile({super.key});

  @override
  State<PersonalProfile> createState() => _PersonalProfileState();
}

class _PersonalProfileState extends State<PersonalProfile> {
  File? img;

  TextEditingController pNameController = TextEditingController();
  TextEditingController pBioController = TextEditingController();

  Future pickImage() async {
    try {
      final img = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (img == null) return;
      final imgTemp = File(img.path);
      setState(() {
        this.img = imgTemp;
      });
    } on PlatformException catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "الملف الشخصي",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        backgroundColor: appColors.onSecondary,
      ),
      body: Container(
        padding: EdgeInsets.only(left: 10, right: 10, top: 10),
        alignment: Alignment.center,
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(
          gradient: appColors.backgroundColor,
        ),
        child: ListView(
          children: [
            InkWell(
              onTap: () {
                pickImage();
              },
              child: img != null
                  ? Image.file(
                      img!,
                      width: 50,
                      height: 120,
                      fit: BoxFit.contain,
                    )
                  : CircleAvatar(
                      child: Image.asset("images/profile 1.png"),
                      radius: 50,
                    ),
            ),
            Spacing(height: 30),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "الاسم",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 17, left: 10),
                  child: Container(
                    height: 25,
                    width: 1,
                    color: appColors.onSecondary,
                  ),
                ),
                Flexible(
                  child: TextField(
                    controller: pNameController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'رغد عبدالله',
                    ),
                  ),
                ),
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "السيرة \nالذاتية",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10, left: 10),
                  child: Container(
                    height: 100,
                    width: 1,
                    color: appColors.onSecondary,
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: 120,
                    child: TextField(
                      controller: pBioController,
                      decoration: InputDecoration(
                        hintMaxLines: 5,
                        border: InputBorder.none,
                        hintText: 'اضف سيرة ذاتية لحسابك',
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Divider(),
            InkWell(
                onTap: () {
                  Get.to(() => ChangePwd());
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "تغيير كلمة المرور",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.arrow_forward_ios)
                  ],
                )),
            Divider(),
            InkWell(
                onTap: () {
                  Get.to(() => ChangeEmail());
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "تغيير البريد الالكتروني",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.arrow_forward_ios)
                  ],
                )),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(60),
              child: liButton(
                  btnIcon: Icons.save_alt,
                  btnName: "حفظ ",
                  onPressed: () {
                    Get.back();
                  }),
            ),
            Center(
              child: InkWell(
                onTap: () {
                  SignOutMethod();
                },
                child: Text(
                  "تسجيل الخروج",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
