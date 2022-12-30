import 'package:get/get.dart';

class QRCodePageController extends GetxController {
  bool islooked = true;
  void changeLookState() {
    islooked = !islooked;
    update();
  }
}
