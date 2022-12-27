import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:tuwaiq_community/views/LoginPage/components/spacing.dart';
import 'package:tuwaiq_community/views/ProfilePage/components/AchievementsBox.dart';
import 'package:tuwaiq_community/views/ProfilePage/components/SocialMediaIcon.dart';
import 'package:tuwaiq_community/views/ProfilePage/components/StatisticsBox.dart';
import 'package:tuwaiq_community/views/ProfilePage/components/imageThemeProfilePage.dart';
import 'package:tuwaiq_community/views/ProfilePage/components/percent.dart';
import 'package:tuwaiq_community/views/ProfilePage/components/bannerProfile.dart';
import 'package:tuwaiq_community/views/style.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "صفحتي",
          style: TextStyle(fontSize: 30),
        ),
        backgroundColor: appColors.onSecondary,
      ),
      drawer: Drawer(),
      body: Container(
          padding: EdgeInsets.all(10),
          alignment: Alignment.center,
          height: Get.height,
          width: Get.width,
          decoration: const BoxDecoration(
            gradient: appColors.backgroundColor,
          ),
          child: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    banner(
                      imageBackGround: AssetImage("images/Rectangle 1.png"),
                      nameTrainee: 'رغد عبدالله',
                      traineeLve: 'الأول على على معسكر fiutter',
                    ),
                    percent(
                      LevelNumber: 3,
                      percentLv: 0.7,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: SocialMediaIcon(
                            image: AssetImage("images/Vector-6.png"),
                            function: () {},
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: SocialMediaIcon(
                            image: AssetImage("images/Vector-5.png"),
                            function: () {},
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: SocialMediaIcon(
                            image: AssetImage("images/Vector-4.png"),
                            function: () {},
                          ),
                        ),
                      ],
                    ),
                    Spacing(height: 10),
                    StatisticsBox(
                      campsNum: 1,
                      prizesNum: 17,
                      tuwaiqNum: 16,
                      visitsNum: 200,
                    ),
                    Spacing(height: 15),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                " الإنجازات",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: appColors.onMain,
                                    fontWeight: FontWeight.w700),
                              ),
                              InkWell(
                                onTap: () {},
                                child: Row(
                                  children: [
                                    Text(
                                      " عرض الكل",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: appColors.onMain,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      size: 20,
                                      color: appColors.onMain,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: Get.width,
                          height: 145,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              AchievementsBox(
                                image: Image.asset("images/DartReward 1.png"),
                                name: 'وسام Dart',
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              AchievementsBox(
                                image: Image.asset("images/GitHubReward 1.png"),
                                name: 'وسام GitHub',
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              AchievementsBox(
                                image:
                                    SvgPicture.asset("images/Group 898-4.svg"),
                                name: 'وسام Swift',
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
