import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:tuwaiq_community/views/style.dart';

class AchievementsBox extends StatelessWidget {
  AchievementsBox({super.key, required this.image, required this.name});
  Image? image;
  String? name;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 150,
        width: Get.width / 3.2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: appColors.onSecondary,
          boxShadow: [
            BoxShadow(
              // color: Colors.black,
              blurRadius: 5,
              //  offset: Offset(1, 1), // Shadow position
            ),
          ],
        ),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          image!,
          Text(
            name!,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: appColors.onMain),
          )
        ]));
  }
}
