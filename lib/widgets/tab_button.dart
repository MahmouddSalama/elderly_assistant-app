import 'package:elderly_assistant/consts_statics/colors.dart';
import 'package:flutter/material.dart';
class TabButton extends StatelessWidget {
  TabButton({
    super.key,
    required this.function,
    required this.text,
    required this.flag,
  });
  VoidCallback  function;
  String text;
  bool flag;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function ,
      child: Container(
        alignment: Alignment.center,
        width: 100,
        height:50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: flag==true? KprimaryColor:Colors.white
        ),
        child: Text(
          text,
          style: TextStyle(
              color:flag==true? Colors.white:KprimaryColor,
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}