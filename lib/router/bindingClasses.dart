import 'package:get/get.dart';
import 'package:tuwaiq_community/controllers/appNavigatorController.dart';
import 'package:tuwaiq_community/controllers/leaderboardController.dart';
import 'package:tuwaiq_community/controllers/stateCh.dart';

class AppNavigatorBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(() => AppNavigatorController());
  }
}

class LoginPageBinding extends Bindings {
  @override
  void dependencies() {
    // add here, then don't forget the router
  }
}

class LeaderBoardBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(LeaderboardController());
  }
}

class StateChallBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(StateChall());
  }
}

