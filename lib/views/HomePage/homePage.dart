import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tuwaiq_community/views/style.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appColors.onSecondary,
        title: const Text(
          'الرئيسية',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        height: Get.height,
        width: Get.width,
        decoration: const BoxDecoration(
          gradient: appColors.backgroundColor,
        ),
        child: Text("Home page"),
      ),
    );
  }
}
