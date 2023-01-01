import 'dart:ui';

import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:tuwaiq_community/Model/CommunityData.dart';
import 'package:tuwaiq_community/controllers/leaderboardController.dart';
import 'package:tuwaiq_community/controllers/stateCh.dart';
import 'package:tuwaiq_community/views/CommunitiesPage/components/BoxDescription.dart';
import 'package:tuwaiq_community/views/CommunitiesPage/components/ListOfTrainers.dart';
import 'package:tuwaiq_community/views/CommunitiesPage/components/MyTask.dart';
import 'package:tuwaiq_community/views/CommunitiesPage/components/MychallengesCard.dart';
import 'package:tuwaiq_community/views/CommunitiesPage/components/ShowDiloge.dart';
import 'package:tuwaiq_community/views/GlobalComponents/AppBar.dart';
import 'package:tuwaiq_community/views/GlobalComponents/TabBarTest.dart';
import 'package:tuwaiq_community/views/LeaderboardPage/components/userRankCard.dart';
import 'package:tuwaiq_community/views/LoginPage/components/spacing.dart';
import 'package:tuwaiq_community/views/style.dart';

class MyCommunitiesPage extends StatelessWidget {
  MyCommunitiesPage({super.key});
  StateChallTimer timer = Get.find();
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
              Column(
                children: [
                  Image(
                    image: AssetImage(Get.arguments["image"]),
                  ),
                  Container(
                    constraints: const BoxConstraints(
                      maxWidth: 250,
                    ),
                    child: Text(
                      Get.arguments["nameCommunity"],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: appColors.onMain,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
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
                    Tab(text: "التحديات"),
                    Tab(text: "المهام")
                  ],
                  numberTab: 4,
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
                          profileImagePath: "images/person1.png",
                          point: _Controller.trainees[index].levelPoint,
                          bannerPath:
                              _Controller.trainees[index].leaderboardBanner,
                        ),
                      ),
                    ),

                    //----------------------------------Widget 3-------------------------------

                    GetBuilder<StateChallTimer>(builder: ((con) {
                      return GridView.builder(
                        itemCount: Mychallenges?.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1,
                          childAspectRatio: 3,
                        ),
                        itemBuilder: (BuildContext context, int index) {
                          return Expanded(
                            flex: 1,
                            child: Column(
                              children: [
                                MychallengesTestCard(
                                  onTapCard: () {
                                    sh(
                                        onTapA: () {
                                          con.changeStateDone();
                                          con.update();
                                          Get.back();
                                        },
                                        onTapB: (() {
                                          con.changeStateExit();
                                          con.update();
                                          Get.back();
                                        }),
                                        context: context,
                                        adrees: Mychallenges![index]
                                            ["challenges"],
                                        prize: Mychallenges![index]['points'],
                                        state: Mychallenges![index]["image"] ==
                                                Mychallenges![0]["image"]
                                            ? timer.state
                                            : Image.asset(
                                                Mychallenges![index]["image"]),
                                        description: Mychallenges![index]
                                            ["description"]);
                                  },
                                  state: Mychallenges![index]["image"] ==
                                          Mychallenges![0]["image"]
                                      ? timer.state
                                      : Image.asset(
                                          Mychallenges![index]["image"]),
                                  nameChallenges: Mychallenges![index]
                                      ["challenges"],
                                  points: Mychallenges![index]['points'],
                                  coin: Mychallenges![index]['coin'],
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    })),

                    //-------------------------------Widget 4-------------------------------
                    GridView.builder(
                      itemCount: MyTasks?.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        childAspectRatio: 3,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              MyTaskCard(
                                image: MyTasks![index]["image"],
                                nameTask: MyTasks![index]["challenges"],
                                points: MyTasks![index]['points'],
                                onTapCard: () => ShMyTasks(
                                    context: context,
                                    adrees: MyTasks![index]["challenges"],
                                    prize: MyTasks![index]["points"],
                                    image: MyTasks![index]["image"],
                                    description: MyTasks![index]["description"],
                                    onTapA: () {
                                      Get.back();
                                    },
                                    onTapB: () => Get.back()),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
