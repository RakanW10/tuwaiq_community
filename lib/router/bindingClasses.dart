import 'package:get/get.dart';
import 'package:tuwaiq_community/controllers/appNavigatorController.dart';
import 'package:tuwaiq_community/controllers/leaderboardController.dart';


import 'package:tuwaiq_community/controllers/stateCh.dart';

import 'package:tuwaiq_community/controllers/qrCodePageContoller.dart';


import 'package:tuwaiq_community/controllers/stateCh.dart';
import 'package:tuwaiq_community/controllers/qrCodePageContoller.dart';


class AppNavigatorBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(() => AppNavigatorController());
  }
}

class LoginPageBinding implements Bindings {
  @override
  void dependencies() {
    // add here, then don't forget the router
  }
}

class LeaderBoardBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(LeaderboardController());
  }
}




class StateChallBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(StateChallTimer());
  }
}




class profileDrawerBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<QRCodePageController>(QRCodePageController());
    print("here");
  }
}
