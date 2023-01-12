import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:tuwaiq_community/views/LoginPage/components/spacing.dart';
import 'package:tuwaiq_community/views/style.dart';

class coupon extends StatelessWidget {
  coupon(
      {super.key, required this.image, required this.price, required this.p});
  String? image;
  String? price;
  String? p;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: Get.height / 6,
        width: Get.width / 3.2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: appColors.onSecondary,
          boxShadow: [
            BoxShadow(
              blurRadius: 5,
              offset: Offset(0, 2), // Shadow position
            ),
          ],
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(image!),
              Spacing(height: 10),
              Text(
                "${price}",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: appColors.onMain),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("شراء",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, color: appColors.onMain)),
                  Text(" ${p} ",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, color: Colors.grey)),
                  Image.asset("images/coin.png"),
                ],
              )
            ]));
    ;
  }
}
