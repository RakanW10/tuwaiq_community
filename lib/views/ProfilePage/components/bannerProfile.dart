import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:tuwaiq_community/views/ProfilePage/components/imageThemeProfilePage.dart';
import 'package:tuwaiq_community/views/style.dart';

class banner extends StatelessWidget {
  banner(
      {super.key,
      required this.imageBackGround,
      required this.nameTrainee,
      required this.traineeLve});
  ImageProvider<Object>? imageBackGround;
  String? nameTrainee;
  String traineeLve;

  @override
  Widget build(BuildContext context) {
    var appColors;
    return Container(
      padding: EdgeInsets.only(left: 30),
      width: Get.width - 20,
      height: Get.height / 8,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), // Radius 28 is not true
          image: DecorationImage(
            image: imageBackGround!,
            fit: BoxFit.fill,
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                nameTrainee!,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30), // we can't use appColor.onMain!1
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                traineeLve,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 10), // we can't use appColor.onMain!!!
              ),
            ],
          ),
          SizedBox(
            width: 40,
          ),
          ImageThemeProfilePage(),
        ],
      ),
    );
  }
}
