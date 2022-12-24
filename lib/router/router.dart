import 'package:get/get.dart';
import 'package:tuwaiq_community/views/LoginPage/LoginPage.dart';
import 'package:tuwaiq_community/views/ProfilePage/profilePage.dart';

import '../views/CommunitiesPage/CommunitiesPage.dart';

List<GetPage<dynamic>> routerApp = [
  GetPage(name: RouterName.loginPage, page: () => const LoginPage()),
  GetPage(name: RouterName.profilePage, page: () => const ProfilePage()),
   GetPage(name: RouterName.communitiesPage, page: () =>  CommunitiesPage()),
];

abstract class RouterName {
  static const String loginPage = "/LoginPage";
   static const String profilePage = "/ProfilePage";
   static const String communitiesPage = "/communitiesPage";
}
