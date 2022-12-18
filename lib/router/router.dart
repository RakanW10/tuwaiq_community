import 'package:get/get.dart';
import 'package:tuwaiq_community/views/LoginPage/LoginPage.dart';

List<GetPage<dynamic>> routerApp = [
  GetPage(name: RouterName.loginPage, page: () => const LoginPage()),
];

abstract class RouterName {
  static const String loginPage = "/LoginPage";
}
