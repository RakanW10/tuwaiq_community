import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:tuwaiq_community/views/GlobalComponents/TextStyle.dart';
import 'package:tuwaiq_community/views/style.dart';

class EventCard extends StatelessWidget {
  const EventCard(
      {super.key,
      required this.onPressed,
      required this.eventName,
      required this.eventPrize,
      required this.eventLocation,
      required this.eventDate,
      required this.eventImg});
  final void Function() onPressed;
  final String eventName;
  final String eventPrize;
  final String eventLocation;
  final String eventDate;
  final String eventImg;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: Get.height / 2,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3),
              ),
            ],
            color: appColors.onSecondary,
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Image.asset(eventImg),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: TextStyleMyApp(
                        colorText: Colors.white,
                        fontSizeText: 20,
                        text: "الفعالية",
                        fontWeightMyApp: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: SizedBox(
                        width: Get.width / 3.3,
                        child: Text(
                          eventName,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
                          style: TextStyle(
                              fontSize: 16,
                              color: appColors.onMain.withOpacity(0.7)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: TextStyleMyApp(
                        colorText: Colors.white,
                        fontSizeText: 20,
                        text: "الجوائز",
                        fontWeightMyApp: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: SizedBox(
                        width: Get.width / 3.3,
                        child: Text(eventPrize,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            softWrap: true,
                            style: TextStyle(
                                fontSize: 16,
                                color: appColors.onMain.withOpacity(0.7))),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 30,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: TextStyleMyApp(
                        colorText: Colors.white,
                        fontSizeText: 20,
                        text: "المكان",
                        fontWeightMyApp: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: SizedBox(
                        width: Get.width / 3.3,
                        child: Text(eventLocation,
                            overflow: TextOverflow.ellipsis,
                            softWrap: true,
                            maxLines: 2,
                            style: TextStyle(
                                fontSize: 16,
                                color: appColors.onMain.withOpacity(0.7))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: TextStyleMyApp(
                        colorText: Colors.white,
                        fontSizeText: 20,
                        text: "التاريخ",
                        fontWeightMyApp: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: SizedBox(
                        width: Get.width / 3.3,
                        child: Text(eventDate,
                            overflow: TextOverflow.ellipsis,
                            softWrap: true,
                            maxLines: 2,
                            style: TextStyle(
                                fontSize: 16,
                                color: appColors.onMain.withOpacity(0.7))),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  width: Get.width,
                  child: Center(
                      child: Text(
                    "سجل الآن",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  )),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15)),
                    color: appColors.onPrimary.withGreen(220),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
