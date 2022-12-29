import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tuwaiq_community/views/HomePage/components/CarouselSlider.dart';
import 'package:tuwaiq_community/views/HomePage/components/newsPost.dart';
import 'package:tuwaiq_community/views/HomePage/components/showPicture.dart';
import 'package:tuwaiq_community/views/style.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: appColors.onSecondary,
        title: const Text(
          'الرئيسية',
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
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 16, 20, 10),
              child: Text("أهم الأحداث",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: appColors.onMain,
                  )),
            ),
            DotSlider(),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 20, 10),
              child: Text("الأحداث",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: appColors.onMain,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: NewsPost(
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
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: NewsPost(
                accountName: "م. فهد العازمي",
                profilePic: "images/fahadPhoto.png",
                onPressed: () {
                  
                },
                newsPostText:
                    "يسعدني ويشرفني الأعلان عن حفل تخريج اول دفع من مبرمجين تطوير تطبيقات الويب والجوال بستخدام ايطار العمل  Flutter، \nوادعوا جميع  المهتمين بهذا المجال حضور هذا الحفل، لرؤية مشاريع تخرج المبرمجين، والتعرف على هذا المجل اكثر وكثر. \nالوقت: 2023/01/01 - 13:00 \nالمكان: قاعة G-10",
              ),
            )
          ],
        ),
      ),
    );
  }
}
