import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tuwaiq_community/controllers/qrCodePageContoller.dart';

import 'package:tuwaiq_community/views/style.dart';

class QRCodePage extends StatelessWidget {
  QRCodePage({super.key});
  QRCodePageController _qrCodePageController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appColors.onSecondary,
        title: const Text(
          "بطاقتي",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: appColors.onSecondary,
      body: Center(
        child: GestureDetector(
          onTap: () {
            _qrCodePageController.changeLookState();
          },
          child: GetBuilder<QRCodePageController>(
            builder: (_) => Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                padding: const EdgeInsets.symmetric(vertical: 20),
                height: Get.height / 2,
                width: Get.width,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset.fromDirection(10),
                    ),
                  ],
                ),
                child: _qrCodePageController.islocked
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: Get.height / 2.5,
                            child: Image.asset(
                                "images/Raghad_abdullah_QRCode.png"),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "تاريخ الانتهاء: 2022/2/1",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      )
                    : Container(
                        width: Get.width * 0.8,
                        decoration: BoxDecoration(
                          color: appColors.onSecondary,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.lock,
                              color: appColors.backgraund,
                              size: 250,
                              shadows: [
                                Shadow(
                                  offset: const Offset(8, 8),
                                  color: appColors.onPrimary,
                                  blurRadius: 10,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Text(
                              "نتمنى عودتك.",
                              style: TextStyle(
                                fontSize: 30,
                                color: appColors.onMain,
                                fontFamily: "Reqa",
                              ),
                            )
                          ],
                        ),
                      )),
          ),
        ),
      ),
    );
  }
}
