import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:tuwaiq_community/Model/trainee.dart';
import 'package:tuwaiq_community/router/router.dart';
import 'package:tuwaiq_community/testAndDebuge/usersDummyData.dart';
import 'package:tuwaiq_community/views/style.dart';
import 'firebase_options.dart';

void main() async {
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
    //uploadUsersDummyData();
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
