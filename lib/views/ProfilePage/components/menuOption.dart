import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MenuOption extends StatelessWidget {
  MenuOption({super.key, required this.icon, required this.option, this.onTap});
  final IconData icon;
  final String option;
  Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            icon,
            size: 30,
            color: Colors.white,
          ),
          const SizedBox(
            width: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Text(
              option,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          )
        ],
      ),
    );
  }
}
