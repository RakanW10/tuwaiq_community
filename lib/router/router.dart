import 'package:get/get.dart';
import 'package:tuwaiq_community/router/bindingClasses.dart';
import 'package:tuwaiq_community/views/LoginPage/LoginPage.dart';
import 'package:tuwaiq_community/views/ProfilePage/profileDrawer.dart';
import 'package:tuwaiq_community/views/ProfilePage/profilePage.dart';
<<<<<<< HEAD
import 'package:tuwaiq_community/views/Store/StorePage.dart';
=======
import 'package:tuwaiq_community/views/QRCodePage/qrCodePage.dart';
>>>>>>> 486747a99204a21468d517dfd4d69fb1838d82c1
import 'package:tuwaiq_community/views/appNavigator.dart';

import '../views/CommunitiesPage/CommunitiesPage.dart';

List<GetPage<dynamic>> routerApp = [
  GetPage(
    name: RouterName.appNavigator,
    page: () => const AppNavigator(),
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
<<<<<<< HEAD
  ),
  GetPage(
    name: RouterName.store,
    page: () => Store(),
  )
=======
    binding: profileDrawerBinding(),
  ),
  GetPage(
    name: RouterName.qrCodePage,
    page: () => QRCodePage(),
  ),
>>>>>>> 486747a99204a21468d517dfd4d69fb1838d82c1
];

abstract class RouterName {
  static const String appDrawer = "/";
  static const String appNavigator = "/appNavigator";
  static const String loginPage = "/LoginPage";
  static const String profilePage = "/ProfilePage";
  static const String communitiesPage = "/communitiesPage";
  static const String leaderboardPage = "/leaderboardPage";
<<<<<<< HEAD
   static const String store = "/Store";
  
=======
  static const String qrCodePage = "/qrCodePage";
>>>>>>> 486747a99204a21468d517dfd4d69fb1838d82c1
}

