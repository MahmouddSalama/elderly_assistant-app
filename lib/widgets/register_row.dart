
import 'package:elderly_assistant/consts_statics/colors.dart';
import 'package:flutter/material.dart';

class RegisterRow extends StatelessWidget {
  RegisterRow({
    required this.text,
    required this.screen,
    super.key,
  });

  String text;
  Widget screen;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "don't have an account ?",
          style: TextStyle(
            color: KBtnColor,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
                  return screen;
                }));
          },
          child: Text(
            "  Register as a $text",
            style:  TextStyle(
              color: KBtnColor.withOpacity(0.7),
            ),
          ),
        )
      ],
    );
  }
}