import 'package:get/get.dart';

class LikeBTN extends GetxController {
  bool isLiked = false;
  bool likedChangeState() {
    return isLiked = !isLiked;
  }
}
