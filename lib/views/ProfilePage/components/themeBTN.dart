import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tuwaiq_community/views/style.dart';

class ThemeBTN extends StatelessWidget {
  const ThemeBTN({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 210,
      padding: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
          gradient: appColors.backgroundColor,
          borderRadius: BorderRadius.circular(8)),
      child: Row(
        children: [
          Image.asset(
            "images/ThemeIcon.png",
          ),
          const SizedBox(
            width: 10,
          ),
          const Text(
            "أكاديمية طويق",
            style: TextStyle(fontSize: 24, color: Colors.white),
          )
        ],
      ),
    );
  }
}
