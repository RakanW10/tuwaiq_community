import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tuwaiq_community/views/style.dart';

class NewsPost extends StatelessWidget {
  const NewsPost({super.key, required this.newsPostText, required this.img, required this.onPressed});
  final String newsPostText;
  final Widget img;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: Get.height - 30,
        width: Get.width - 30,
        decoration: BoxDecoration(
            color: appColors.onSecondary,
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(17),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("images/newsLogo.png"),
                  ),
                ),
                Text("أكاديمية طويق",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(17, 0, 17, 10),
              child: Flexible(
                child: Text(
                  newsPostText,
                  style: TextStyle(fontSize: 16, color: Colors.white),
                  softWrap: true,
                  maxLines: 4,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: img,
              ),
            )
          ],
        ),
      ),
    );
  }
}
