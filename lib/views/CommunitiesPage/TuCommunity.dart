import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:tuwaiq_community/Model/CommunityData.dart';
import 'package:tuwaiq_community/controllers/leaderboardController.dart';
import 'package:tuwaiq_community/views/CommunitiesPage/components/BoxDescription.dart';
import 'package:tuwaiq_community/views/CommunitiesPage/components/ListOfTrainers.dart';
import 'package:tuwaiq_community/views/CommunitiesPage/components/MyTask.dart';
import 'package:tuwaiq_community/views/CommunitiesPage/components/MychallengesCard.dart';
import 'package:tuwaiq_community/views/GlobalComponents/AppBar.dart';
import 'package:tuwaiq_community/views/GlobalComponents/TabBarTest.dart';
import 'package:tuwaiq_community/views/LeaderboardPage/components/userRankCard.dart';
import 'package:tuwaiq_community/views/LoginPage/components/spacing.dart';
import 'package:tuwaiq_community/views/style.dart';

class TuCommunity extends StatelessWidget {
  TuCommunity({super.key});
  LeaderboardController _Controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appColors.onSecondary,
        title: Text(
          'المجتمعات',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
          alignment: Alignment.center,
          height: Get.height,
          width: Get.width,
          decoration: BoxDecoration(
            gradient: appColors.backgroundColor,
          ),
          child: Column(
            children: [
//-------------------------------Name MyCommunities and Icon---------------------------------------
              Spacing(height: 20),
              Image(
                image: AssetImage(Get.arguments["image"]),
              ),
              Container(
                constraints: const BoxConstraints(
                  maxWidth: 230,
                ),
                child: Text(
                  Get.arguments["nameCommunity"],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: appColors.themeName == "SAFCSP"
                          ? Color(0xFF424448)
                          : appColors.onMain,
                      fontSize: 18),
                ),
              ),
              Spacing(height: 20),

//-----------------------------------TabBar Nanes----------------------------------------

              Expanded(
                child: TabBarCom(
                  tabName: [
                    Tab(
                      text: "الرئيسية",
                    ),
                    Tab(text: "المشاركين"),
                  ],
                  numberTab: 2,
                  TabbarViweWidget: [
                    //--------------------------------Widget 1-------------------------------

                    ListView(
                      children: [
                        BoxtDescription(
                          description: Get.arguments["description"],
                          timeClass: Get.arguments["time"],
                          classNumber: Get.arguments["class"],
                        ),
                        Spacing(height: 20),
                        ListOfTrainersCaed()
                      ],
                    ), //ListOfTrainersCaed

                    //---------------------------------Widget 2-------------------------------

                    Container(
                      height: 580,
                      child: ListView.builder(
                        itemCount: _Controller.trainees.length,
                        itemBuilder: (context, index) => UserRankCard(
                          rank: index + 1,
                          name: _Controller.trainees[index].name,
                          profileImagePath:
                              _Controller.trainees[index].profileImagePath,
                          point: _Controller.trainees[index].levelPoint,
                          bannerPath:
                              _Controller.trainees[index].leaderboardBanner,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
