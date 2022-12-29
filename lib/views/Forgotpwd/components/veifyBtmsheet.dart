import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tuwaiq_community/views/LoginPage/components/liButton.dart';
import 'package:tuwaiq_community/views/LoginPage/components/litextfield.dart';
import 'package:tuwaiq_community/views/resetPassword/resetPwd.dart';
import 'package:tuwaiq_community/views/style.dart';

btmSheetFunc() {
  Get.bottomSheet(
    backgroundColor: Colors.transparent,
    Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(35),
            topRight: Radius.circular(35),
          ),
          color: appColors.onMain,
        ),
        height: Get.height / 2.8,
        child: Padding(
          padding: const EdgeInsets.all(35),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              liTextField(title: "رمز التحقق", inputType: TextInputType.number, passwordType: true),
              liButton(
                  btnName: "ارسال",
                  onPressed: (() {
                    Get.offAll(() => ResetPwd());
                  }))
            ],
          ),
        )),
  );
}
