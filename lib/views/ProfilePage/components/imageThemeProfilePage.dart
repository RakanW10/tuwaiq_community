import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ImageThemeProfilePage extends StatelessWidget {
  const ImageThemeProfilePage(
      {super.key, this.imagePath = "images/profile.png"});
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        border: Border.all(color: Color.fromARGB(108, 63, 162, 228), width: 5),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 15,
            offset: Offset(1, 1), // Shadow position
          ),
        ],
      ),
      child: Container(
          padding: EdgeInsets.all(20),
          decoration: new BoxDecoration(
              image: new DecorationImage(
            image: new AssetImage(imagePath),
            fit: BoxFit.fill,
          ))),
    );
  }
}
