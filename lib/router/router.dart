import 'package:get/get.dart';
import 'package:tuwaiq_community/router/bindingClasses.dart';
import 'package:tuwaiq_community/views/LoginPage/LoginPage.dart';
import 'package:tuwaiq_community/views/ProfilePage/profileDrawer.dart';
import 'package:tuwaiq_community/views/ProfilePage/profilePage.dart';

import 'package:tuwaiq_community/views/Store/StorePage.dart';

import 'package:tuwaiq_community/views/QRCodePage/qrCodePage.dart';

import 'package:tuwaiq_community/views/Store/StorePage.dart';
import 'package:tuwaiq_community/views/QRCodePage/qrCodePage.dart';

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
    binding: profileDrawerBinding(),
  ),
  GetPage(
    name: RouterName.store,
    page: () => Store(),
    binding: AppNavigatorBinding(),
  ),
  GetPage(
    name: RouterName.qrCodePage,
    page: () => QRCodePage(),
  ),
];

abstract class RouterName {
  static const String appDrawer = "/";
  static const String appNavigator = "/appNavigator";
  static const String loginPage = "/LoginPage";
  static const String profilePage = "/ProfilePage";
  static const String communitiesPage = "/communitiesPage";
  static const String leaderboardPage = "/leaderboardPage";

  static const String store = "/Store";
  static const String qrCodePage = "/qrCodePage";
}
