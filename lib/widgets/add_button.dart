import 'package:elderly_assistant/consts_statics/colors.dart';
import 'package:flutter/material.dart';


class AddButton extends StatelessWidget {
  final IconData? iconData;
  final Function function;
  final String? string;


  const AddButton({Key? key, this.iconData,required this.function,this.string}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>function(),
      child: Container(
        width: 55,
        height: 55,
        decoration: BoxDecoration(
          color: KBtnColor,
          borderRadius: BorderRadius.circular(10),
        ),
        alignment: Alignment.center,
        child:string==null? Icon(
          iconData,
          color: Colors.white,
        ):Padding(
          padding: const EdgeInsets.all(3),
          child: Text('$string',style: TextStyle(
              color: Colors.white,
              fontSize: 15
          ),),
        ),
      ),
    );
  }
}
