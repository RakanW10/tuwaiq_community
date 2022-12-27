import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:tuwaiq_community/views/style.dart';

class RecentNews extends StatelessWidget {
  const RecentNews(
      {super.key, required this.newsText, required this.onPressed});
  final String newsText;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 100,
        width: Get.width - 30,
        decoration: BoxDecoration(
            color: appColors.onSecondary,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(17),
              child: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("images/newsLogo.png"),
              ),
            ),
            Flexible(
              child: Text(
                newsText,
                style: TextStyle(fontSize: 16, color: Colors.white),
                softWrap: true,
                maxLines: 2,
              ),
            )
          ],
        ),
      ),
    );
  }
}
