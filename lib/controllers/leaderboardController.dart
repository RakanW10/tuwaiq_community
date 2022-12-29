import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:tuwaiq_community/Model/trainee.dart';

class LeaderboardController extends GetxController {
  List<Trainee> trainees = [];
  @override
  void onInit() async {
    super.onInit();
    // load all student data
    var data = await FirebaseFirestore.instance.collection("trainee").get();
    for (var i in data.docs) {
      trainees.add(Trainee.fromJson(json: i.data()));
    }
    trainees.sort((a, b) {
      return b.levelPoint.compareTo(a.levelPoint);
    });
  }
}
