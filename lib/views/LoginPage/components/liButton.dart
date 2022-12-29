import 'package:flutter/material.dart';
import 'package:tuwaiq_community/views/style.dart';

class liButton extends StatelessWidget {
  const liButton(
      {super.key,
      required this.btnName,
      this.btnIcon,
      required this.onPressed});
  final String btnName;
  final IconData? btnIcon;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 52,
        width: 260,
        decoration: BoxDecoration(
          color: Color(0xFF009FAE),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(60),
              topRight: Radius.circular(100),
              bottomLeft: Radius.circular(60),
              bottomRight: Radius.circular(0)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.8),
              spreadRadius: 1,
              blurRadius: 3,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              btnName,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Icon(
              btnIcon,
              color: Colors.white,
              size: 26,
            ),
          ],
        ),
      ),
    );
  }
}
