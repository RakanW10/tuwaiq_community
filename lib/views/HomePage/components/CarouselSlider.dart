import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:tuwaiq_community/views/HomePage/components/recentNews.dart';
import 'package:tuwaiq_community/views/style.dart';

class DotSlider extends StatefulWidget {
  const DotSlider({super.key});

  @override
  State<DotSlider> createState() => _DotSliderState();
}

class _DotSliderState extends State<DotSlider> {
  @override
  Widget build(BuildContext context) {
    final List<String> numberList = ['1', '2', '3', '4'];
    int current = 0;
    final CarouselController ccontroller = CarouselController();
    final List<Widget> items = [
      RecentNews(
        newsText:
            "إطلاق فرع #أكاديمية_طويق بجدة بالشراكة مع جامعة الملك عبدالعزيز @kauweb",
        onPressed: () {},
      ),
      RecentNews(
        newsText:
            "#برامج_طويق_للناشئين | معسكر لغة البرمجة Python. سجل الآن https://bootcamp.sa/junior-bootcamp/43565f31-d6f6-43d3-81cd-71881a817934/view",
        onPressed: () {},
      ),
      RecentNews(
        newsText:
            "لقاء #طويق_Talk الأسبوعي | من وين نبدأ في التسويق؟ مع أ. سعد القحطاني.",
        onPressed: () {},
      ),
      RecentNews(
        newsText:
            "دورة تعليمية ومشاريع تطبيقية جديدة عبر #منصة_سطر. تعلّم الآن بخطوات بسيطة: https://satr.codes",
        onPressed: () {},
      ),
    ];
    return Column(
      children: [
        CarouselSlider(
          carouselController: ccontroller,
          items: items,
          options: CarouselOptions(
            height: 100,
            aspectRatio: 16 / 9,
            viewportFraction: 0.8,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 2),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            enlargeFactor: 0.3,
            onPageChanged: (index, reason) {
              setState(() {
                current = index;
              });
            },
            scrollDirection: Axis.horizontal,
          ),
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: numberList.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () {
                  print(numberList.asMap().entries.map(((e) => entry)));
                  // ccontroller.animateToPage(entry.key);
                },
                child: Container(
                  width: 7,
                  height: 7,
                  margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: (Theme.of(context).brightness == Brightness.dark
                              ? appColors.onSecondary
                              : Colors.white)
                          .withOpacity(current == entry.key ? 0.9 : 0.4)),
                ),
              );
            }).toList()),
      ],
    );
  }
}
