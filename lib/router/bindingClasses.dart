import 'package:get/get.dart';
import 'package:tuwaiq_community/controllers/appNavigatorController.dart';
import 'package:tuwaiq_community/controllers/leaderboardController.dart';
<<<<<<< HEAD
import 'package:tuwaiq_community/controllers/stateCh.dart';
=======
import 'package:tuwaiq_community/controllers/qrCodePageContoller.dart';
>>>>>>> 486747a99204a21468d517dfd4d69fb1838d82c1

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

<<<<<<< HEAD
class StateChallBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(StateChall());
  }
}

=======
class profileDrawerBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<QRCodePageController>(QRCodePageController());
    print("here");
  }
}
>>>>>>> 486747a99204a21468d517dfd4d69fb1838d82c1
