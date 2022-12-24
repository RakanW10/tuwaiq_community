import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tuwaiq_community/router/router.dart';
import 'package:tuwaiq_community/views/CommunitiesPage/MyCommunitiesPage.dart';
import 'package:tuwaiq_community/views/Forgotpwd/forgotpwd.dart';
import 'package:tuwaiq_community/views/CommunitiesPage/CommunitiesPage.dart';
import 'package:tuwaiq_community/views/CommunitiesPage/components/TabBarTest.dart';
import 'package:tuwaiq_community/views/ProfilePage/profilePage.dart';
import 'package:tuwaiq_community/views/loginPage/LoginPage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      //  initialRoute: RouterName.loginPage,
      getPages: routerApp,
      locale: const Locale("ar", "SA"),
     home: MyCommunitiesPage(),
    );
  }
}
