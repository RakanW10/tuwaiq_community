import 'dart:ui';

import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tuwaiq_community/controllers/stateCh.dart';
import 'package:tuwaiq_community/views/CommunitiesPage/MyCommunitiesPage.dart';
import 'package:tuwaiq_community/views/style.dart';

class MychallengesTestCard extends StatelessWidget {
  MychallengesTestCard(
      {super.key,
      this.state,
      this.nameChallenges,
      this.onTapCard,
      this.coin = "",
      this.points});
  Widget? state;
  final String? nameChallenges;
  final String? Function()? onTapCard;
  String coin;

  String? points;
  StateChall timer = Get.find();

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
              BoxShadow(
                color: Color.fromARGB(110, 66, 68, 72),
                spreadRadius: 1,
                blurRadius: 3,
                offset: Offset(0, 4),
              ),
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(child: state!),
            Expanded(
              flex: 2,
              child: Container(
                constraints: const BoxConstraints(
                  maxWidth: 300,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      nameChallenges!,
                      style: TextStyle(
                          color: appColors.onMain,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      points!,
                      style: TextStyle(color: appColors.onMain, fontSize: 16),
                    ),
                    Row(
                      children: [
                        Text(
                          coin,
                          style:
                              TextStyle(color: appColors.onMain, fontSize: 16),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Image.asset("images/coin.png")
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Icon(
                Icons.arrow_forward_ios_outlined,
                color: appColors.onMain,
                size: 30,
              ),
            )
          ],
        ),
      ),
    );
  }
}


