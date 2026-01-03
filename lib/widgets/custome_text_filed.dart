

import 'package:elderly_assistant/consts_statics/colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CustumeTextField extends StatefulWidget {

  CustumeTextField({this.textInputType,this.textEditingController,this.hint,this.onchange,required  this.validetor,required this.ispass,this.labelText});
  String? hint;
  String? labelText;
  Function(String)? onchange;
  final String? Function(dynamic value) validetor;
   bool ispass=true;
   bool visibility=true;
  TextEditingController? textEditingController;
  TextInputType? textInputType;

  @override
  State<CustumeTextField> createState() => _CustumeTextFieldState();
}

class _CustumeTextFieldState extends State<CustumeTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: TextFormField(
        keyboardType: widget.textInputType,
        style: TextStyle(
          color: KBtnColor
        ),
          validator: (v) => widget.validetor(v),
        onChanged:widget.onchange ,
        controller: widget.textEditingController,
        decoration: InputDecoration(

            hintText: widget.hint,
            labelText: widget.labelText,
            labelStyle: TextStyle(
                color: KBtnColor
            ),
            hintStyle: TextStyle(
                color: KBtnColor.withOpacity(0.9)
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                  color: KBtnColor.withOpacity(0.8)
              ),
              borderRadius: BorderRadius.circular(6),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: KBtnColor.withOpacity(0.8)
              ),
              borderRadius: BorderRadius.circular(6),
            ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: BorderSide(
              style: BorderStyle.solid,
              color: Colors.red,
            )
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: KBtnColor
            ),
            borderRadius: BorderRadius.circular(6),
          ),
        ),
      ),
    );
  }
}