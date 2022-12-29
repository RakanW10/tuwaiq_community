import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:tuwaiq_community/controllers/appNavigatorController.dart';
import 'package:tuwaiq_community/controllers/leaderboardController.dart';
import 'package:tuwaiq_community/views/CommunitiesPage/CommunitiesPage.dart';
import 'package:tuwaiq_community/views/EventsPage/eventsPage.dart';
import 'package:tuwaiq_community/views/HomePage/HomePage.dart';
import 'package:tuwaiq_community/views/LeaderboardPage/leaderboardPage.dart';
import 'package:tuwaiq_community/views/ProfilePage/profilePage.dart';
import 'package:tuwaiq_community/views/style.dart';

Widget currentScreen = HomePage();

class AppNavigator extends StatelessWidget {
  const AppNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    LeaderboardController _leaderboardController =
        Get.put(LeaderboardController());
    return GetBuilder<AppNavigatorController>(
      // why we still need this while we have binding?
      init: AppNavigatorController(),
      builder: (_) => Scaffold(
        body: currentScreen,
        bottomNavigationBar: bottomNavigationBar(),
      ),
    );
  }
}

Widget bottomNavigationBar() {
  return GetBuilder<AppNavigatorController>(
    builder: (controller) => BottomNavigationBar(
        currentIndex: controller.navigatorValue,
        onTap: (index) {
          controller.changePage(index: index);
          switch (index) {
            case 0:
              {
                currentScreen = ProfilePage();
                break;
              }
            case 1:
              {
                currentScreen = CommunitiesPage();
                break;
              }
            case 2:
              {
                currentScreen = EventsPage();
                break;
              }
            case 3:
              {
                currentScreen = LeaderboardPage();
                break;
              }
            case 4:
              {
                currentScreen = HomePage();
                break;
              }
          }
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: appColors.onSecondary,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.white,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        items: [
          BottomNavigationBarItem(
            activeIcon: selectedIcon(icon: Icon(Icons.account_circle_outlined)),
            icon: Icon(Icons.account_circle_outlined),
            label: "account",
          ),
          BottomNavigationBarItem(
            activeIcon: selectedIcon(icon: Icon(Icons.groups)),
            icon: Icon(Icons.groups),
            label: "groups",
          ),
          BottomNavigationBarItem(
            activeIcon: selectedIcon(icon: Icon(Icons.event)),
            icon: Icon(Icons.event),
            label: "event",
          ),
          BottomNavigationBarItem(
            activeIcon: selectedIcon(icon: Icon(Icons.leaderboard)),
            icon: Icon(Icons.leaderboard),
            label: "leaderboard",
          ),
          BottomNavigationBarItem(
            activeIcon: selectedIcon(icon: Icon(Icons.home)),
            icon: Icon(Icons.home),
            label: "home",
          ),
        ]),
  );
}

Widget selectedIcon({required Icon icon}) {
  return Container(
    width: 60, //! ------ will change later ------
    height: 35, //! ------ will change later ------

    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      gradient: appColors.backgroundColor,
    ),
    child: icon,
  );
}
