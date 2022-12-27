import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tuwaiq_community/views/EventsPage/components/eventContainer.dart';
import 'package:tuwaiq_community/views/style.dart';

class EventsPage extends StatelessWidget {
  const EventsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: appColors.onSecondary,
        title: const Text(
          'الفعاليات',
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
              padding: const EdgeInsets.fromLTRB(10, 15, 10, 5),
              child: EventCard(
                onPressed: () {},
                eventDate: '1/13 - 1/10',
                eventImg: 'images/event1.png',
                eventLocation: 'اكاديمية طويق',
                eventName: 'هاكاثون طويق',
                eventPrize: '100,000 ريال',
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 15, 10, 5),
              child: EventCard(
                  onPressed: () {},
                  eventName: "الإستجابة للحوادث السيبرانية والتحقيق الرقمي",
                  eventPrize: "500 نقطة",
                  eventLocation: "اكاديمية طويق قاعة G-10",
                  eventDate: "13:00 - 1/1",
                  eventImg: "images/event2.png"),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 15, 10, 5),
              child: EventCard(
                  onPressed: () {},
                  eventName: "web-scraping",
                  eventPrize: "250 نقطة",
                  eventLocation: "اكاديمية طويق قاعة G-10",
                  eventDate: "12:00 - 1/2",
                  eventImg: "images/event3.png"),
            )
          ],
        ),
      ),
    );
  }
}
