import 'dart:ui';

import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tuwaiq_community/views/CommunitiesPage/MyCommunitiesPage.dart';
import 'package:tuwaiq_community/views/style.dart';

class TimerChall extends StatelessWidget {
  const TimerChall({super.key});

  @override
  Widget build(BuildContext context) {
    return CircularCountDownTimer(
      duration: 120,
      initialDuration: 0,
      controller: CountDownController(),
      width: 70,
      height: 70,
      ringColor: appColors.onMain,
      strokeWidth: 6,
      fillColor: appColors.backgraund,

      textStyle: TextStyle(
          fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),
      textFormat: CountdownTextFormat.MM_SS,
      isReverse: true, // 1

      autoStart: true, //2
    );
  }
}
