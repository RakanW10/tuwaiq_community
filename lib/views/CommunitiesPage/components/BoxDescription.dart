import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:tuwaiq_community/views/GlobalComponents/TextStyle.dart';
import 'package:tuwaiq_community/views/LoginPage/components/spacing.dart';
import 'package:tuwaiq_community/views/style.dart';

class BoxtDescription extends StatelessWidget {
  BoxtDescription(
      {super.key, this.classNumber, this.description, this.timeClass});

  String? description;
  String? classNumber;
  String? timeClass;

  @override
  Widget build(BuildContext context) {
    return Container(
      //----------------------------Style BoxtDescription------------------------------------
      height: Get.height / 3.4,
      width: Get.width - 20,
      decoration: BoxDecoration(
        color: appColors.onSecondary,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(110, 66, 68, 72),
            spreadRadius: 1,
            blurRadius: 3,
            offset: Offset(0, 4),
          ),
        ],
      ),
//------------------------------Contant BoxtDescription------------------------------------

      child: Column(children: [
        Spacing(height: 20),

//-----------------------------------------First--------------------------------------------
//
        Padding(
          padding: const EdgeInsets.only(left: 300),
          child: Text(
            "الوصف",
            style: TextStyle(
                color: appColors.onMain,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
        ),

//-----------------------------------------The second--------------------------------------------
        Spacing(height: 10),
        Container(
            constraints: const BoxConstraints(
              maxWidth: 300,
            ),
            child: TextStyleMyApp(
              colorText: appColors.onMain,
              fontSizeText: 18,
              text: description!,
            )),

//-----------------------------------------Third--------------------------------------------
        Spacing(height: 20),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ImageIcon(
                  AssetImage("images/training-online-icon 1.png"),
                  size: 50,
                  color: appColors.onMain,
                ),
                SizedBox(width: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextStyleMyApp(
                      colorText: appColors.onMain,
                      fontSizeText: 20,
                      text: "القاعة",
                      fontWeightMyApp: FontWeight.w100,
                    ),
                    Spacing(height: 5),
                    TextStyleMyApp(
                      colorText: appColors.onMain,
                      fontSizeText: 16,
                      text: classNumber!,
                      fontWeightMyApp: FontWeight.w100,
                    )
                  ],
                )
              ],
            ),

            //-----------------------------------------------

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ImageIcon(
                  AssetImage("images/Group-3.png"),
                  size: 50,
                  color: appColors.onMain,
                ),
                SizedBox(width: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextStyleMyApp(
                      colorText: appColors.onMain,
                      fontSizeText: 20,
                      text: "الوقت",
                      fontWeightMyApp: FontWeight.w100,
                    ),
                    Spacing(height: 5),
                    TextStyleMyApp(
                      colorText: appColors.onMain,
                      fontSizeText: 16,
                      text: timeClass!,
                      fontWeightMyApp: FontWeight.w100,
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ]),
    );
  }
}
