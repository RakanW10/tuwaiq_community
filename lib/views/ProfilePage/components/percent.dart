import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:tuwaiq_community/views/style.dart';

class percent extends StatelessWidget {
  percent({super.key, required this.percentLv, required this.LevelNumber});

  double percentLv;
  int LevelNumber;

  // tap viwe

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.all(10),
          child: new LinearPercentIndicator(
            width: Get.width - 90,
            animation: true,
            lineHeight: 10,
            animationDuration: 2000,
            percent: 0.7,
            linearStrokeCap: LinearStrokeCap.roundAll,
            progressColor: appColors.onPrimary,
            barRadius: Radius.circular(22),
            
          ),
        ),
        Text("Lv.${LevelNumber}")
      ],
    );
  }
}
