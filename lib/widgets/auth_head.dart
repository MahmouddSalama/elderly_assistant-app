

import 'package:elderly_assistant/consts_statics/colors.dart';
import 'package:flutter/material.dart';

class AuthHead extends StatelessWidget {
  AuthHead({super.key,required this.name,this.color=KBtnColor});
  String name;
  Color? color;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const SizedBox(
          height: 75,
        ),
        Image.asset(
          "assets/images/SNAG-23110317473900-removebg-preview.png",
          height: 100,
        ),
         Align(
          alignment: Alignment.center,
          child: Text(
            "Elderly assistant",
            style: TextStyle(
                fontSize: 32, fontFamily: "Pacifico", color: color),
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            name,
            style: const TextStyle(fontSize: 18, color: KBtnColor),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}