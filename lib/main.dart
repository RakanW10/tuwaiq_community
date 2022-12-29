import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:tuwaiq_community/controllers/stateCh.dart';
import 'package:tuwaiq_community/router/router.dart';
import 'package:tuwaiq_community/views/style.dart';

void main() async {
  // SystemChrome.setPreferredOrientations(
  //   [
  //     DeviceOrientation.portraitUp,
  //     DeviceOrientation.portraitDown,
  //   ],
  // );
  StateChall timer = Get.put(StateChall() , permanent: true );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
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
