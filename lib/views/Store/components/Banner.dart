import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:tuwaiq_community/views/style.dart';

class BannerBackgruond extends StatelessWidget {
  BannerBackgruond({super.key, required this.image, required this.price});
  String? image;
  String? price;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height / 9,
      width: Get.width - 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: appColors.onSecondary,
        boxShadow: [
          BoxShadow(
            // color: Colors.black,
            blurRadius: 5,
            offset: Offset(0, 2), // Shadow position
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              height: (Get.height / 9) - 20,
              width: Get.width - 140,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(image!),
                    fit: BoxFit.fill,
                  ))),
          SizedBox(
            width: 5,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.lock_outline_rounded,
                size: 40,
                color: appColors.onMain,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("شراء ${price}  ",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, color: appColors.onMain)),
                  Image.asset("images/coin.png"),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
