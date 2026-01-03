import 'package:elderly_assistant/consts_statics/colors.dart';
import 'package:elderly_assistant/models/chat_model.dart';
import 'package:flutter/material.dart';

class ChatBuble extends StatelessWidget {
   ChatBuble({
   required this.message,
  });
  MessageModel message;


  @override
  Widget build(BuildContext context) {
    bool isme= message.uid=="uid";
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Align(
            alignment:isme? Alignment.centerRight:Alignment.centerLeft,
            child: Container(
              width: 260,
              height: 70,
              decoration:   BoxDecoration(
                  borderRadius:  isme? BorderRadius.only(
                    bottomLeft: Radius.circular(32),
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32),
                  ):BorderRadius.only(
                    bottomRight: Radius.circular(32),
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32),
                  ),
                  color: isme? KBtnColor:Color(0xff006F93)
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                    child: Align(
                        alignment:isme? Alignment.centerRight:Alignment.centerLeft,
                        child: Text(message.messgae??"",
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 16
                          ),)),
                  ),
                  Align(
                    alignment:isme? Alignment.topLeft:Alignment.topRight,
                    child: Container(
                      width: 70,
                      height: 50,
                      child: Image.asset(isme? "assets/images/icons8-patient-48.png":"assets/images/icons8-doctor-48.png",fit: BoxFit.fill,),
                    ),
                  )
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}