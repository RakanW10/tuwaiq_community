import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tuwaiq_community/views/style.dart';

class NewsPost extends StatelessWidget {
  NewsPost(
      {super.key,
      required this.newsPostText,
      this.img,
      required this.onPressed,
      required this.profilePic,
      required this.accountName,
      required this.height,
      required this.width});
  final String newsPostText;
  Widget? img;
  final void Function() onPressed;
  final String profilePic;
  final String accountName;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: appColors.onSecondary,
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(17),
                  child: Container(
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(profilePic),
                    ),
                  ),
                ),
                Text(accountName,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ],
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(17, 0, 17, 10),
              child: Text(
                newsPostText,
                style: TextStyle(fontSize: 16, color: Colors.white),
                softWrap: true,
                maxLines: 8,
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
