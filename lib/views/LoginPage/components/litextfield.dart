import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tuwaiq_community/views/style.dart';

class liTextField extends StatelessWidget {
  liTextField({super.key, required this.title, this.hint});
  final String title;
  final String? hint;

  //hint is optional

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.right,
      decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          enabledBorder: const OutlineInputBorder(
              borderSide:
                  const BorderSide(color: appColors.onSecondary, width: 1.3),
              borderRadius: BorderRadius.all(Radius.circular(11))),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(11)),
            borderSide:
                const BorderSide(color: appColors.onSecondary, width: 1.3),
          ),
          hintText: hint,
          labelText: title,
          alignLabelWithHint: true,
          hintStyle: TextStyle(color: appColors.onPrimary),
          labelStyle: TextStyle(color: appColors.onPrimary, fontSize: 23)),
    );
  }
}
