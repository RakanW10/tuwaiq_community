import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:tuwaiq_community/views/style.dart';

class MyCommunitiesCard extends StatelessWidget {
  MyCommunitiesCard(
      {super.key, this.image, this.nameCommunity, this.onTapCard});
  final String? image;
  final String? nameCommunity;
  Function()? onTapCard;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapCard,
      child: Container(
        height: Get.height / 8,
        width: Get.height - 20,
        decoration: BoxDecoration(
            color: appColors.onSecondary,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(blurRadius: 5, spreadRadius: 1),
            ]),
        child: Row(
          children: [
            Expanded(
              child: Image.asset(
                image!,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                constraints: const BoxConstraints(
                  maxWidth: 300,
                ),
                child: Text(
                  nameCommunity!,
                  style: TextStyle(color: appColors.onMain, fontSize: 15.5),
                ),
              ),
            ),
            Expanded(
              child: Icon(
                Icons.arrow_forward_ios_sharp,
                color: appColors.onMain,
                size: 35,
              ),
            )
          ],
        ),
      ),
    );
  }
}
