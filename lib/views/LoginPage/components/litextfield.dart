import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tuwaiq_community/views/style.dart';

class liTextField extends StatelessWidget {
  liTextField(
      {super.key,
      required this.title,
      this.hint,
      this.inputType,
      this.controller, required this.passwordType});
  final String title;
  final String? hint;
  final TextInputType? inputType;
  TextEditingController? controller;
  bool passwordType;

  //hint is optional

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: passwordType,
      controller: controller,
      keyboardType: inputType,
      textAlign: TextAlign.right,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: appColors.onSecondary, width: 1.3),
            borderRadius: BorderRadius.all(Radius.circular(11))),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(11)),
          borderSide: BorderSide(color: appColors.onSecondary, width: 1.3),
        ),
        hintText: hint,
        labelText: title,
        hintStyle: TextStyle(color: appColors.onPrimary),
        labelStyle: TextStyle(
          color: Color(0xFF009FAE),
          fontSize: 23,
        ),
      ),
    );
  }
}
