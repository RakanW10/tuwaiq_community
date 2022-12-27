import 'package:get/get.dart';

class AppNavigatorController extends GetxController {
  int _navigatorValue = 4;
  get navigatorValue => _navigatorValue;
  void changePage({required int index}) {
    _navigatorValue = index;
    update();
  }
}
