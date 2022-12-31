import 'package:get/get.dart';
import 'package:tuwaiq_community/router/bindingClasses.dart';
import 'package:tuwaiq_community/views/LoginPage/LoginPage.dart';
import 'package:tuwaiq_community/views/ProfilePage/profileDrawer.dart';
import 'package:tuwaiq_community/views/ProfilePage/profilePage.dart';
import 'package:tuwaiq_community/views/Store/StorePage.dart';
import 'package:tuwaiq_community/views/appNavigator.dart';

import '../views/CommunitiesPage/CommunitiesPage.dart';

List<GetPage<dynamic>> routerApp = [
  GetPage(
    name: RouterName.appNavigator,
    page: () => AppNavigator(),
    binding: AppNavigatorBinding(),
  ),
  GetPage(
    name: RouterName.loginPage,
    page: () => LoginPage(),
  ),
  GetPage(
    name: RouterName.profilePage,
    page: () => const ProfilePage(),
  ),
  GetPage(
    name: RouterName.communitiesPage,
    page: () => CommunitiesPage(),
  ),
  GetPage(
    name: RouterName.appDrawer,
    page: () => profileDrawer(),
  ),
  GetPage(
    name: RouterName.store,
    page: () => Store(),
  )
];

abstract class RouterName {
  static const String appDrawer = "/";
  static const String appNavigator = "/appNavigator";
  static const String loginPage = "/LoginPage";
  static const String profilePage = "/ProfilePage";
  static const String communitiesPage = "/communitiesPage";
  static const String leaderboardPage = "/leaderboardPage";
   static const String store = "/Store";
  
}

