import 'package:elderly_assistant/consts_statics/colors.dart';
import 'package:elderly_assistant/models/patient_mdoel.dart';
import 'package:elderly_assistant/screens/patient_screens/chat_screen.dart';
import 'package:elderly_assistant/screens/patient_screens/health_records.dart';
import 'package:elderly_assistant/widgets/add_button.dart';
import 'package:flutter/material.dart';

import '../../widgets/custome_button.dart';
class PatientInfo extends StatelessWidget {
  const PatientInfo({super.key,required this.patientModel});
  final PatientModel patientModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return ChatScreen();
            }));
          }, icon: Icon(Icons.chat))
        ],
        backgroundColor: KBtnColor,
        title: Text(patientModel.name),
        elevation: 0,
      ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: SingleChildScrollView(
            child: Builder(builder: (ctx) {
              return Column(
                children: [
                  SizedBox(height: 50),
                  Text(
                    "Name : ${patientModel.name}",
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    color: KBtnColor,
                    thickness: 1.2,
                  ),
                  buildColumn(
                      text: "Name : ${patientModel.name}", icon: Icons.person),
                  buildColumn(
                      text: "Email : ${patientModel.email}", icon: Icons.email),
                  buildColumn(
                      text: "Phone : ${patientModel.phone}", icon: Icons.phone),
                  buildColumn(
                      text: "Gender : ${patientModel.gender}", icon: Icons.person),
                  buildColumn(
                      text: "Action : ${patientModel.action}", icon: Icons.code),

                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      AddButton(
                        function: (){
                          showAlertDialog(context);
                        },
                        iconData: Icons.add,
                      ),

                      CustomButton(
                        text: "Health Records",
                        function: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return HealthRecords();
                          }));
                        },
                      )
                    ],
                  )
                ],
              );
            }),
          ),
        )
    );
  }
  Column buildColumn({text, icon, function}) {
    return Column(
      children: [
        ListTile(
          onTap: function,
          title: Text(text),
          leading: Icon(
            icon,
            color: KBtnColor,
          ),
        ),
        Divider(
          color: KBtnColor,
          thickness: 1.2,
        )
      ],
    );
  }

  showAlertDialog(BuildContext context) {

    // set up the button
    Widget okButton = TextButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.pop(context);
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Add Medication"),
      content: Container(
        decoration: BoxDecoration(
          border: Border.all(color: KBtnColor)
        ),
        child: TextField(
          maxLines: 3,
        ),
      ),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
