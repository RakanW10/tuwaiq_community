import 'package:get/get.dart';

class QRCodePageController extends GetxController {
  bool islocked = true;
  void changeLookState() {
    islocked = !islocked;
    update();
  }
}
