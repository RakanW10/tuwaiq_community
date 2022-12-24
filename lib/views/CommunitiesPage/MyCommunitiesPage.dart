import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:tuwaiq_community/views/CommunitiesPage/components/BoxDescription.dart';
import 'package:tuwaiq_community/views/LoginPage/components/spacing.dart';
import 'package:tuwaiq_community/views/style.dart';

class MyCommunitiesPage extends StatefulWidget {
  @override
  _StackOverState createState() => _StackOverState();
}

class _StackOverState extends State<MyCommunitiesPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
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
          'مجتمعاتي',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
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
            Spacing(height: 20),

//-------------------------------Name MyCommunities and Icon---------------------------------------

            Image(
              image: AssetImage("images/image 1.png"),
            ),
            Container(
              constraints: const BoxConstraints(
                maxWidth: 230,
              ),
              child: Text(
                "معسكر تطوير تطبيقات الهواتف الذكية والويب باستخدام Flutter",
                style: TextStyle(color: appColors.onMain, fontSize: 18),
              ),
            ),
            Spacing(height: 20),

//-----------------------------------TabBar Nanes----------------------------------------

            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 30,
                decoration: BoxDecoration(
                  color: appColors.onSecondary,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 113, 111, 111),
                      spreadRadius: 1,
                      blurRadius: 3,
                      offset: Offset(0, 1),
                    ),
                  ],
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
                      text: 'الرئيسية',
                    ),
                    Tab(
                      text: 'المشاركين',
                    ),
                    Tab(
                      text: 'التحديات',
                    ),
                    Tab(
                      text: 'المهام',
                    )
                  ],
                ),
              ),
            ),

            //-------------------------------------TabBarView-------------------------------------------------

            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Column(
                      children: [
                        Expanded(
                            flex: 1,
                            child: BoxtDescription(
                              description:
                                  "معسكر تدريبي مكثف لتطوير تطبيقات الجوال والويب باستخدام إطار عمل Flutter، والذي يعتبر الإطار الأحدث والأسهل لبناء تطبيقات تعمل على عدة أنظمة.",
                              timeClass: "15:00-10:00",
                              classNumber: "G-07",
                            )),
                        Expanded(
                          child: Container(),
                        )
                      ],
                    ),
                    Center(
                      child: Text(
                        '2',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        '3',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        '4',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
