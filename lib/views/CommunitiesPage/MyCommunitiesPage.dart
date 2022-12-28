import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:tuwaiq_community/Model/CommunityData.dart';
import 'package:tuwaiq_community/views/CommunitiesPage/components/BoxDescription.dart';
import 'package:tuwaiq_community/views/CommunitiesPage/components/ListOfTrainers.dart';
import 'package:tuwaiq_community/views/CommunitiesPage/components/MyTask.dart';
import 'package:tuwaiq_community/views/CommunitiesPage/components/MychallengesCard.dart';
import 'package:tuwaiq_community/views/CommunitiesPage/components/ShowDiloge.dart';
import 'package:tuwaiq_community/views/GlobalComponents/AppBar.dart';
import 'package:tuwaiq_community/views/GlobalComponents/TabBarTest.dart';
import 'package:tuwaiq_community/views/LoginPage/components/spacing.dart';
import 'package:tuwaiq_community/views/style.dart';

class MyCommunitiesPage extends StatelessWidget {
  const MyCommunitiesPage({super.key});

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
          decoration: const BoxDecoration(
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
                  style: TextStyle(color: appColors.onMain, fontSize: 18),
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
                          description:Get.arguments["description"],
                            
                          timeClass: Get.arguments["time"],
                          classNumber: Get.arguments["class"],
                        ),
                        Spacing(height: 20),
                        ListOfTrainersCaed()
                      ],
                    ), //ListOfTrainersCaed

                    //---------------------------------Widget 2-------------------------------

                    Center(
                      child: Text("2"),
                    ),

                    //----------------------------------Widget 3-------------------------------

                    GridView.builder(
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
                                  sh(context: context , i:index );
                                },
                                image: Mychallenges![index]["image"],
                                nameChallenges: Mychallenges![index]
                                    ["challenges"],
                                points: Mychallenges![index]['points'],
                                coin: Mychallenges![index]['coin'],
                              ),
                            ],
                          ),
                        );
                      },
                    ),

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


