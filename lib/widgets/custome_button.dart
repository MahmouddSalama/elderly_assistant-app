import 'package:elderly_assistant/consts_statics/colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
   CustomButton({
    required this.function,
     required this.text,
    super.key,
  });

  VoidCallback function;
  String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        width: 250,
        height: 60,
        decoration: BoxDecoration(
            color: KBtnColor,
            borderRadius: BorderRadius.circular(9)
        ),
        child:  Center(child: Text(text,style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 21,
          color: KprimaryColor
        ),)),
      ),
    );
  }
}