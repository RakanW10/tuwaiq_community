import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tuwaiq_community/Model/CommunityData.dart';
import 'package:tuwaiq_community/views/CommunitiesPage/components/%20myCommunitiesCard.dart';
import 'package:tuwaiq_community/views/style.dart';

class CommunitiesPage extends StatefulWidget {
  @override
  _StackOverState createState() => _StackOverState();
}

class _StackOverState extends State<CommunitiesPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

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
        child: Padding(
          padding: const EdgeInsets.only(top: 15, right: 15, left: 15),
          child: Column(
            children: [
              Container(
                height: 30,
                decoration: BoxDecoration(
                  color: appColors.onSecondary,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: TabBar(
                  controller: _tabController,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      25.0,
                    ),
                    color: appColors.onMain,
                  ),
                  labelColor: appColors.onSecondary,
                  unselectedLabelColor: appColors.onMain,
                  tabs: [
                    Tab(
                      text: 'مجتمعاتي',
                    ),
                    Tab(
                      text: 'طويق',
                    ),
                  ],
                ),
              ),

//-------------------------------------------------------------------------------------

              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    GridView.builder(
                      padding: EdgeInsets.only(top: 30),
                      itemCount: myCommunity.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        childAspectRatio: 3,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: MyCommunitiesCard(
                            image: myCommunity[index]["image"],
                            nameCommunity: myCommunity[index]["nameCommunity"],
                          ),
                        );
                      },
                    ),


//-----------------------------------------------------------------------------------



                    GridView.builder(
                      padding: EdgeInsets.only(top: 30),
                      itemCount: tuCommunity.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        childAspectRatio: 3,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: MyCommunitiesCard(
                            image: tuCommunity[index]["image"],
                            nameCommunity: tuCommunity[index]["nameCommunity"],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}