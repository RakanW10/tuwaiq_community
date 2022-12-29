import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:tuwaiq_community/Model/CommunityData.dart';
import 'package:tuwaiq_community/views/GlobalComponents/TextStyle.dart';
import 'package:tuwaiq_community/views/LoginPage/components/spacing.dart';
import 'package:tuwaiq_community/views/style.dart';

class ListOfTrainersCaed extends StatelessWidget {
  ListOfTrainersCaed({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height / 2.6,
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
      child: Column(children: [
        Spacing(height: 20),
        Padding(
          padding: const EdgeInsets.only(
            left: 300,
          ),
          child: Text(
            "المدربين",
            style: TextStyle(
                color: appColors.onMain,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
        ),

//------------------------List of Trainers--------------------------
        ConstrainedBox(
          constraints: BoxConstraints(maxHeight: 250),
          child: ListView.builder(
            itemCount: trainers.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {},
                child: Column(
                  children: [
                    Spacing(height: 20),
                    TrainersCaed(
                      nameTrainer: trainers[index]["name"].toString(),
                      iamge: trainers[index]["image"].toString(),
                      workTrainer: trainers[index]["work"].toString(),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ]),
    );
  }
}

class TrainersCaed extends StatelessWidget {
  TrainersCaed({super.key, this.iamge, this.nameTrainer, this.workTrainer});
  String? iamge;
  String? nameTrainer;
  String? workTrainer;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      Container(
          // padding: EdgeInsets.only(top: 10),
          width: Get.width - 20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 60,
                width: 60,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(color: appColors.onMain, width: 1),
                    image: DecorationImage(
                      image: AssetImage(iamge!),
                      fit: BoxFit.fill,
                    )),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 200,
                    child: TextStyleMyApp(
                      text: nameTrainer!,
                      colorText: appColors.onMain,
                      fontSizeText: 18,
                    ),
                  ),
                  TextStyleMyApp(
                    text: workTrainer!,
                    colorText: appColors.onMain,
                    fontSizeText: 12,
                  ),
                ],
              ),
              Icon(Icons.arrow_forward_ios_outlined,
                  color: appColors.onMain, size: 30)
            ],
          ))
    ]);
  }
}
