import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:tuwaiq_community/Model/trainee.dart';
import 'package:tuwaiq_community/router/router.dart';
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
    testBackend();
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

testBackend() {
  Trainee t = Trainee(
    name: "rakan",
    email: "test@gmail.com",
    QRCodePath: "test",
    levelPoint: 2341,
    tuwaiqCoinAmount: 1250,
    myCommunitiesRanks: {"Flutter": 1, "UI/UX": 2},
    twuaiqRank: 1,
    myCommunities: ["Flutter", "UI/UX"],
    trophiesPaths: ["troph 1", "troph 2"],
    bannersPaths: ["banner 1", "banner 2"],
  );
  print(t.toJson());
}
