import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:like_button/like_button.dart';
import 'package:tuwaiq_community/views/HomePage/components/newsPost.dart';
import 'package:tuwaiq_community/views/HomePage/components/showPicture.dart';
import 'package:tuwaiq_community/views/style.dart';

class StaticTweetPage1 extends StatelessWidget {
  const StaticTweetPage1({super.key});

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
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: NewsPost(
                    height: Get.height / 1.8,
                    width: Get.width - 30,
                    accountName: "أكاديمية طويق",
                    profilePic: "images/newsLogo.png",
                    onPressed: () {},
                    newsPostText:
                        "تعرّف على برامج #أكاديمية_طويق الأسبوع المقبل. للتسجيل في البرامج المتاحة: https://bootcamp.sa/bootcamps?only_open=true",
                    img: InkWell(
                        onTap: () {
                          Get.to(() => ShowPic());
                        },
                        child: Container(
                          height: Get.width / 2,
                          width: Get.width,
                          child: Image.asset(
                            "images/post1.png",
                            fit: BoxFit.cover,
                          ),
                        )),
                  ),
                ),
                Positioned(
                    bottom: 20, right: Get.width - 70, child: LikeButton()),
              ],
            ),
          ]),
        ));
  }
}
