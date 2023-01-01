import 'package:get/get.dart';
import 'package:tuwaiq_community/router/router.dart';
import 'package:tuwaiq_community/views/style.dart';

class ThemeController extends GetxController {
  void changeTheme() {
    print("theme changed");
    if (appColors.themeName == "أكاديمية طويق") {
      appColors.themeSAFCSP();
      appColors.themeName = "SAFCSP";
    } else {
      appColors.themeTwuaiq();
      appColors.themeName = "أكاديمية طويق";
    }
    update();
  }
}
