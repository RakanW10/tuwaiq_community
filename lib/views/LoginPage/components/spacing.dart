import 'package:flutter/cupertino.dart';

class Spacing extends StatelessWidget {
  const Spacing({super.key, required this.height});
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}