import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tuwaiq_community/Model/CommunityData.dart';
import 'package:tuwaiq_community/views/LoginPage/components/spacing.dart';
import 'package:tuwaiq_community/views/style.dart';

sh(
    {required BuildContext context,
    String? adrees,
    String? prize,
    Widget? state,
    String? description,
    Function()? onTapA,
    Function()? onTapB}) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
            insetPadding: EdgeInsets.zero,
            contentPadding: EdgeInsets.zero,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            backgroundColor: appColors.onSecondary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            content: Builder(
              builder: (context) {
                return Container(
                  // padding: EdgeInsets.only(left: 20, right: 20),
                  height: Get.height / 1.8,
                  width: Get.width - 20,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Spacing(height: 20),
                      Expanded(
                        child: Container(
                          height: 130,
                          width: 130,
                          child: state,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "العنوان",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: appColors.onMain),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Text(
                              adrees!,
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: appColors.onMain),
                            ),
                          ),
                          Text(
                            "الجائزة",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: appColors.onMain),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Text(
                              prize!,
                              style: TextStyle(
                                  fontSize: 16, color: appColors.onMain),
                            ),
                          ),
                         
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Text(
                              prize!,
                              style: TextStyle(
                                  fontSize: 16, color: appColors.onMain),
                            ),
                          ),
                          Text(
                            "الوصف",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: appColors.onMain),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Container(
                              constraints: const BoxConstraints(
                                maxWidth: 340,
                              ),
                              child: Text(
                                description!,
                                style: TextStyle(
                                    fontSize: 16, color: appColors.onMain),
                              ),
                            ),
                          ),
                          Spacing(height: 30),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: onTapA,
                              child: Container(
                                height: Get.width / 5,
                                width: Get.width / 2.1,
                                child: Center(
                                    child: Text(
                                  "خلصت",
                                  style: TextStyle(
                                      fontSize: 25, fontWeight: FontWeight.bold),
                                )),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      //  bottomLeft: Radius.circular(15),
                                      bottomRight: Radius.circular(15)),
                                  color: appColors.onPrimary.withGreen(220),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: onTapB,
                              child: Container(
                                height: Get.width / 5,
                                width: Get.width / 2.1,
                                child: Center(
                                    child: Text(
                                  "أنسحب",
                                  style: TextStyle(
                                      color: appColors.onMain,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                )),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(15),
                                    //  bottomRight: Radius.circular(15)
                                  ),
                                  color: Color(0xFFBF40FF),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                );
              },
            ));
      });
}

//!----------------------------show Dialog2------------------------------

ShMyTasks(
    {required BuildContext context,
    String? adrees,
    String? prize,
    String? image,
    String? description , Function()? onTapA , Function()? onTapB}) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
            insetPadding: EdgeInsets.zero,
            contentPadding: EdgeInsets.zero,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            backgroundColor: appColors.onSecondary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            content: Builder(
              builder: (context) {
                return Container(
                  // padding: EdgeInsets.only(left: 20, right: 20),
                  height: Get.height / 1.8,
                  width: Get.width - 20,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Spacing(height: 20),
                      Expanded(
                        child: Container(
                          height: 130,
                          width: 130,
                          decoration: BoxDecoration(
                              image: new DecorationImage(
                            image: new AssetImage(image!),
                            fit: BoxFit.fill,
                          )),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "العنوان",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: appColors.onMain),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Text(
                              adrees!,
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: appColors.onMain),
                            ),
                          ),
                          Text(
                            "الجائزة",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: appColors.onMain),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Text(
                              prize!,
                              style: TextStyle(
                                  fontSize: 16, color: appColors.onMain),
                            ),
                          ),
                           Spacing(height: 30),
                          Text(
                            "الوصف",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: appColors.onMain),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Container(
                              constraints: const BoxConstraints(
                                maxWidth: 340,
                              ),
                              child: Expanded(
                                child: Text(
                                  description!,
                                  style: TextStyle(
                                      fontSize: 16, color: appColors.onMain),
                                ),
                              ),
                            ),
                          ),
                          Spacing(height: 30),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: onTapA,
                              child: Container(
                                height: Get.width / 5,
                                width: Get.width / 2.1,
                                child: Center(
                                    child: Text(
                                  "خلصت",
                                  style: TextStyle(
                                      fontSize: 25, fontWeight: FontWeight.bold),
                                )),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      //  bottomLeft: Radius.circular(15),
                                      bottomRight: Radius.circular(15)),
                                  color: appColors.onPrimary.withGreen(220),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap:onTapB ,
                              child: Container(
                                height: Get.width / 5,
                                width: Get.width / 2.1,
                                child: Center(
                                    child: Text(
                                  "اعتذر",
                                  style: TextStyle(
                                      color: appColors.onMain,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                )),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(15),
                                    //  bottomRight: Radius.circular(15)
                                  ),
                                  color: Color(0xFFBF40FF),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                );
              },
            ));
      });
}
