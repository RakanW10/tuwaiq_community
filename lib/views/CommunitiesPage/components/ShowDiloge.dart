import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tuwaiq_community/Model/CommunityData.dart';
import 'package:tuwaiq_community/views/style.dart';

sh({required BuildContext context, required int i}) {
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
                  height: Get.height / 2,
                  width: Get.width - 20,
                  child: Column(
                    children: [
                      Container(
                        height: 130,
                        width: 130,
                        decoration: BoxDecoration(
                            image: new DecorationImage(
                          image: new AssetImage("images/Timer-2.png"),
                          fit: BoxFit.fill,
                        )),
                      ),
                      Column(
                        // mainAxisAlignment: MainAxisAlignment.,
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
                              Mychallenges![i]["challenges"].toString(),
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
                              Mychallenges![i]["points"].toString(),
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
                                maxWidth: 400,
                              ),
                              child: Text(
                                Mychallenges![i]["description"].toString(),
                                style: TextStyle(
                                    fontSize: 16, color: appColors.onMain),
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
