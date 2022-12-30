import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:tuwaiq_community/Model/CommunityData.dart';
import 'package:tuwaiq_community/controllers/likeBTN.dart';

import 'package:tuwaiq_community/controllers/stateCh.dart';

import 'package:tuwaiq_community/Model/trainee.dart';

import 'package:tuwaiq_community/router/router.dart';
import 'package:tuwaiq_community/testAndDebuge/usersDummyData.dart';
import 'package:tuwaiq_community/views/style.dart';
import 'controllers/leaderboardController.dart';
import 'controllers/myDrawerController.dart';
import 'firebase_options.dart';

void main() async {
  StateChall timer = Get.put(StateChall(), permanent: true);

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(LeaderboardController());
    Get.put(LikeBTN());
    Get.put<MyDrawerController>(MyDrawerController());

    appColors.changeTheme();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "DINNextLTArabic",
      ),
      initialRoute: RouterName.loginPage,
      getPages: routerApp,
      locale: const Locale("ar", "SA"),
    );
  }
}
