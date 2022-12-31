import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:tuwaiq_community/Model/CommunityData.dart';

import '../views/CommunitiesPage/components/MychallengesCard.dart';
import '../views/CommunitiesPage/components/TimerChall.dart';

class StateChall extends GetxController {
  dynamic state;
  late bool autoStart ;
  

  changeStateDone() {
    state = Image.asset("images/Timer-3.png");
  }

  changeStateExit() {
    state = Image.asset("images/wrong-icon 1.png");
  }

  @override
  void onInit() {
    state = TimerChall( autoStart: true,);
    autoStart = true;
    // TODO: implement onInit
    super.onInit();
    update();
  }

  @override
  void onClose() {
    changeStateDone();
    changeStateExit();
    // TODO: implement onClose
    super.onClose();
  }
}
