import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tuwaiq_community/views/HomePage/components/newsPost.dart';
import 'package:tuwaiq_community/views/HomePage/components/recentNews.dart';
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
        decoration: const BoxDecoration(
          gradient: appColors.backgroundColor,
        ),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 16, 20, 10),
              child: Text("أهم الأحداث",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      // color: Colors.white,
                      color: Colors.black)),
            ),
            SizedBox(
              height: Get.width / 3.5,
              child: Scrollbar(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child: RecentNews(
                        newsText:
                            "إطلاق فرع #أكاديمية_طويق بجدة بالشراكة مع جامعة الملك عبدالعزيز @kauweb",
                        onPressed: () {},
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: RecentNews(
                        newsText:
                            "#برامج_طويق_للناشئين | معسكر لغة البرمجة Python. سجل الآن https://bootcamp.sa/junior-bootcamp/43565f31-d6f6-43d3-81cd-71881a817934/view",
                        onPressed: () {},
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: RecentNews(
                        newsText:
                            "لقاء #طويق_Talk الأسبوعي | من وين نبدأ في التسويق؟ مع أ. سعد القحطاني.",
                        onPressed: () {},
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: RecentNews(
                        newsText:
                            "دورة تعليمية ومشاريع تطبيقية جديدة عبر #منصة_سطر. تعلّم الآن بخطوات بسيطة: https://satr.codes",
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 20, 10),
              child: Text("الأحداث",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      //color: Colors.white,
                      color: Colors.black)),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: NewsPost(
                    onPressed: () {},
                    newsPostText:
                        "تعرّف على برامج #أكاديمية_طويق الأسبوع المقبل. للتسجيل في البرامج المتاحة: https://bootcamp.sa/bootcamps?only_open=true",
                    img: Image.asset("images/post1.png"),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
