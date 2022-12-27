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
import 'package:tuwaiq_community/views/GlobalComponents/AppBar.dart';
import 'package:tuwaiq_community/views/GlobalComponents/TabBarTest.dart';
import 'package:tuwaiq_community/views/LoginPage/components/spacing.dart';
import 'package:tuwaiq_community/views/style.dart';

class TuCommunity extends StatelessWidget {
  const TuCommunity({super.key});

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
              Image(
                image: AssetImage(Get.arguments["image"]),
              ),
              Container(
                constraints: const BoxConstraints(
                  maxWidth: 230,
                ),
                child: Text(
                  Get.arguments["nameCommunity"],
                  style: TextStyle(color: appColors.onMain, fontSize: 18),
                ),
              ),
              Spacing(height: 20),

//-----------------------------------TabBar Nanes----------------------------------------

              Expanded(
                child: TabBarCom(
                  tabName: [
                    Tab(
                        text:
                      "الرئيسية",
                    ),
                    Tab(text: "المشاركين"),
                   
                  ],
                  numberTab: 2,
                  TabbarViweWidget: [
                    //--------------------------------Widget 1-------------------------------

                    ListView(
                      children: [
                        BoxtDescription(
                          description:
                              "معسكر تدريبي مكثف لتطوير تطبيقات الجوال والويب باستخدام إطار عمل Flutter، والذي يعتبر الإطار الأحدث والأسهل لبناء تطبيقات تعمل على عدة أنظمة.",
                          timeClass: "15:00-10:00",
                          classNumber: "G-07",
                        ),
                        Spacing(height: 20),
                        ListOfTrainersCaed()
                      ],
                    ), //ListOfTrainersCaed

                    //---------------------------------Widget 2-------------------------------

                    Center(child: Text("2"),)

                    
                  
                  ],
                ),
              )
            ],
          )),
    );
  }
}
