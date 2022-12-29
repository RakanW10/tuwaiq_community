import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tuwaiq_community/controllers/leaderboardController.dart';
import 'package:tuwaiq_community/views/LeaderboardPage/components/userRankCard.dart';
import 'package:tuwaiq_community/views/style.dart';

class LeaderboardPage extends StatelessWidget {
  LeaderboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    LeaderboardController _leaderboardController = Get.find();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appColors.onSecondary,
        title: const Text(
          'لائحة المتصدرين',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
          alignment: Alignment.center,
          height: Get.height,
          width: Get.width,
          decoration: BoxDecoration(
            gradient: appColors.backgroundColor,
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 16, left: 8, right: 8),
            child: ListView(
              children: [
                const TextField(
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    suffixIcon: Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Icon(
                        Icons.search,
                        size: 50,
                      ),
                    ),
                    hintText: "ابحث",
                    hintStyle: TextStyle(fontSize: 24),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 0.5),
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 580,
                  child: ListView.builder(
                    itemCount: _leaderboardController.trainees.length,
                    itemBuilder: (context, index) => UserRankCard(
                      rank: index + 1,
                      name: _leaderboardController.trainees[index].name,
                      profileImagePath: "images/person1.png",
                      point: _leaderboardController.trainees[index].levelPoint,
                      bannerPath: _leaderboardController
                          .trainees[index].leaderboardBanner,
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
