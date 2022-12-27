import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photo_view/photo_view.dart';

class ShowPic extends StatelessWidget {
  const ShowPic({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Stack(
          children: [
            PhotoView(
              loadingBuilder: (context, event) => CircularProgressIndicator(),
              imageProvider: const AssetImage("images/post1.png"),
            ),
            Positioned(
              left: 1,
              height: 150,
              child: IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.white,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
