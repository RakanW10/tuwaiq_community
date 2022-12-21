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

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(15.0),
                          child: new LinearPercentIndicator(
                            width: Get.width - 100,
                            animation: true,
                            lineHeight: 20.0,
                            animationDuration: 2000,
                            percent: percentLv,
                            linearStrokeCap: LinearStrokeCap.roundAll,
                            progressColor: appColors.onPrimary,
                          ),
                        ),
                        Text("Lv.${LevelNumber}")
                      ],
                    ),
    );
  }
}
