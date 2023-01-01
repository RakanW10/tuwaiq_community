import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tuwaiq_community/Model/store.dart';
import 'package:tuwaiq_community/views/LoginPage/components/spacing.dart';
import 'package:tuwaiq_community/views/Store/components/Banner.dart';
import 'package:tuwaiq_community/views/Store/components/couponCard.dart';
import 'package:tuwaiq_community/views/style.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appColors.onSecondary,
        title: Text(
          "المتجر",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "1250",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
                SizedBox(width: 5),
                Image.asset("images/coin.png"),
              ],
            ),
          )
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(
          gradient: appColors.backgroundColor,
        ),
        child: Column(children: [
          //!-----------------------------------------------------------------------

          Padding(
            padding: const EdgeInsets.only(right: 20, top: 20),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Text(
                "كوبونات",
                style: TextStyle(
                    color: appColors.onMain,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          //!-----------------------------------------------------------------------
          Spacing(height: 20),
          Container(
            height: Get.height / 6,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: storeCoupon.length,
              itemBuilder: (context, index) => Row(
                children: [
                  coupon(
                      image: storeCoupon[index]["imageCoupon"],
                      price: storeCoupon[index]["price"],
                      p: storeCoupon[index]["coin"]),
                  SizedBox(
                    width: 15,
                  )
                ],
              ),
            ),
          ),
          //!-----------------------------------------------------------------------
          Padding(
            padding: const EdgeInsets.only(
              right: 20,
              top: 10,
            ),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Text(
                "اللافيتات",
                style: TextStyle(
                    color: appColors.onMain,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          //!-----------------------------------------------------------------------
          Spacing(height: 15),

          Container(
            height: Get.height / 1.70,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: storeC.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
                child: BannerBackgruond(
                  image: storeC[index]["imageCoupon"],
                  price: storeC[index]["price"],
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
