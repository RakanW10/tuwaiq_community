import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({
    super.key,
    required String this.imageURL,
    required double this.radius,
  });
  final String imageURL;
  final double radius;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: Colors.black,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(150),
        ),
      ),
      child: CircleAvatar(
        radius: radius,
        backgroundImage: AssetImage(
          imageURL,
        ),
      ),
    );
  }
}
