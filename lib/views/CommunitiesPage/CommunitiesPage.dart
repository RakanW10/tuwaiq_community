import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tuwaiq_community/Model/CommunityData.dart';
import 'package:tuwaiq_community/views/CommunitiesPage/MyCommunitiesPage.dart';
import 'package:tuwaiq_community/views/CommunitiesPage/TuCommunity.dart';
import 'package:tuwaiq_community/views/GlobalComponents/TabBarTest.dart';
import 'package:tuwaiq_community/views/CommunitiesPage/components/myCommunitiesCard.dart';
import 'package:tuwaiq_community/views/LoginPage/components/spacing.dart';
import 'package:tuwaiq_community/views/style.dart';

class CommunitiesPage extends StatelessWidget {
  const CommunitiesPage({super.key});

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
        child: TabBarCom(
          tabName: [
            Tab(
              text: "مجتمعاتي",
            ),
            Tab(
              text: "طويق",
            )
          ],
          numberTab: 2,
          TabbarViweWidget: [
// ---------------------------------------Widget 1-----------------------------------

            GridView.builder(
              itemCount: myCommunity.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                childAspectRatio: 3,
              ),
              itemBuilder: (BuildContext context, int index) {
                return Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Spacing(height: 10),
                      MyCommunitiesCard(
                        image: myCommunity[index]["image"],
                        nameCommunity: myCommunity[index]["nameCommunity"],
                        onTapCard: () => Get.to(MyCommunitiesPage(),
                            arguments: myCommunity[index]),
                      ),
                    ],
                  ),
                );
              },
            ),

// ---------------------------------------Widget 2-----------------------------------

            GridView.builder(
              itemCount: tuCommunity.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                childAspectRatio: 3,
              ),
              itemBuilder: (BuildContext context, int index) {
                return Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Spacing(height: 10),
                      MyCommunitiesCard(
                        onTapCard: () => Get.to(TuCommunity() , arguments: tuCommunity[index]),
                        image: tuCommunity[index]["image"],
                        nameCommunity: tuCommunity[index]["nameCommunity"],
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
