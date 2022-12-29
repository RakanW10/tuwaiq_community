import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tuwaiq_community/controllers/likeBTN.dart';
import 'package:tuwaiq_community/views/HomePage/components/newsPost.dart';
import 'package:tuwaiq_community/views/style.dart';
import 'package:like_button/like_button.dart';

class StaticTweetPage2 extends StatelessWidget {
  StaticTweetPage2({super.key});
  //final _likedBTN = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: appColors.onSecondary,
          title: const Text(
            'الأحداث',
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
          child: ListView(children: [
            Stack(children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: NewsPost(
                  width: Get.width - 30,
                  height: Get.height / 2.5,
                  accountName: "م. فهد العازمي",
                  profilePic: "images/fahadPhoto.png",
                  onPressed: () {},
                  newsPostText:
                      "يسعدني ويشرفني الأعلان عن حفل تخريج اول دفعة من مبرمجين تطوير تطبيقات الويب والجوال بستخدام ايطار العمل  Flutter، \nوادعوا جميع  المهتمين بهذا المجال حضور هذا الحفل، لرؤية مشاريع تخرج المبرمجين، والتعرف على هذا المجل اكثر وكثر. \nالوقت: 2023/01/01 - 13:00 \nالمكان: قاعة G-10",
                ),
              ),
              Positioned(
                  bottom: 20, right: Get.width - 70, child: LikeButton()),
            ]),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: NewsPost(
                    width: Get.width - 30,
                    height: Get.height / 4.4,
                    accountName: "م. هادي البن سعد",
                    profilePic: "images/hadiImage.png",
                    onPressed: () {},
                    newsPostText:
                        "لا تفوتكم مشاريعهم ترا مره اسطورية 🔥 \n خصوصا مشروع مجموعة راكان 🚀🚀 ",
                  ),
                ),
                Positioned(
                    bottom: 20,
                    right: Get.width - 70,
                    child: LikeButton(
                        //_likedBTN.likedChangeState(),
                        )),
              ],
            ),
          ]),
        ));
  }
}
