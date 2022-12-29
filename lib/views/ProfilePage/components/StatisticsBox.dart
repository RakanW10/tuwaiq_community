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
      height: Get.height / 3.3,
      width: Get.width - 20,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: appColors.onSecondary,
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(255, 113, 111, 111),
            spreadRadius: 2,
            blurRadius: 10,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 250, top: 20),
            child: Text(
              "الإحصائيات",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: appColors.onMain),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 150, top: 10),
            child: Text(
              "ترتيبك في لائحة المتصدرين",
              style: TextStyle(fontSize: 16, color: appColors.onMain),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ImageIcon(
                AssetImage("images/tuwaiqIconW 1.png"),
                size: 40,
                color: appColors.onMain,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "طويق",
                    style: TextStyle(
                        fontSize: 18,
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
              ImageIcon(
                AssetImage("images/Vector-7.png"),
                size: 30,
                color: appColors.onMain,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "المعسكر",
                    style: TextStyle(
                        fontSize: 18,
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
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ImageIcon(
                AssetImage("images/auto_awesome-24px 1.png"),
                size: 30,
                color: appColors.onMain,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "الجوائز",
                    style: TextStyle(
                        fontSize: 18,
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
              ImageIcon(
                AssetImage("images/Vector-9.png"),
                size: 30,
                color: appColors.onMain,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "الزيارات",
                    style: TextStyle(
                        fontSize: 18,
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
