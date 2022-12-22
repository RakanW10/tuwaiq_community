import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tuwaiq_community/views/style.dart';

class SocialMediaIcon extends StatelessWidget {
  SocialMediaIcon({super.key, required this.image,required this.function});
  AssetImage? image;
  Function()? function;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: ImageIcon(
        image,
        size: 30,
        color: appColors.onSecondary,
      ),
    );
  }
}
