import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:tuwaiq_community/views/style.dart';

class StatisticsBox extends StatelessWidget {
  StatisticsBox(
      {super.key,
      required this.campsNum,
      required this.tuwaiqNum,
      required this.prizesNum,
      required this.visitsNum});

  int campsNum;
  int tuwaiqNum;
  int prizesNum;
  int visitsNum;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: Get.height / 3,
      width: Get.width - 20,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: appColors.onSecondary,
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 15,
            offset: Offset(1, 1), // Shadow position
          ),
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 230, top: 10),
            child: Text(
              "الإحصائيات",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: appColors.onMain),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 110, top: 10),
            child: Text(
              "ترتيبك في لائحة المتصدرين",
              style: TextStyle(fontSize: 18, color: appColors.onMain),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("images/tuwaiqIconW 1.png"),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "طويق",
                    style: TextStyle(
                        fontSize: 20,
                        color: appColors.onMain,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "${campsNum}h",
                    style: TextStyle(
                        fontSize: 16,
                        color: appColors.onMain,
                        fontWeight: FontWeight.w100),
                  )
                ],
              ),
              Image.asset("images/Vector-7.png"),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "المعسكر",
                    style: TextStyle(
                        fontSize: 20,
                        color: appColors.onMain,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "${tuwaiqNum}st",
                    style: TextStyle(
                        fontSize: 16,
                        color: appColors.onMain,
                        fontWeight: FontWeight.w100),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("images/Vector-8.png"),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "الجوائز",
                    style: TextStyle(
                        fontSize: 20,
                        color: appColors.onMain,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "${prizesNum}",
                    style: TextStyle(
                        fontSize: 16,
                        color: appColors.onMain,
                        fontWeight: FontWeight.w100),
                  )
                ],
              ),
              Image.asset("images/Vector-9.png"),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "الزيارات",
                    style: TextStyle(
                        fontSize: 20,
                        color: appColors.onMain,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "${visitsNum}",
                    style: TextStyle(
                        fontSize: 16,
                        color: appColors.onMain,
                        fontWeight: FontWeight.w100),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
