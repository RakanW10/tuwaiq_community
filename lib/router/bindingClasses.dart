import 'package:get/get.dart';
import 'package:tuwaiq_community/controllers/appNavigatorController.dart';

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
