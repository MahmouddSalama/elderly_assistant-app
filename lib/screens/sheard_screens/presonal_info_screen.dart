import 'package:elderly_assistant/consts_statics/colors.dart';
import 'package:elderly_assistant/models/patient_mdoel.dart';
import 'package:elderly_assistant/widgets/custome_button.dart';
import 'package:flutter/material.dart';

import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String? currentText;
  GlobalKey<FormState> formKey = GlobalKey();
  GlobalKey<FormState> formKey2 = GlobalKey();
  bool isload = false;
   PatientModel userModel = PatientModel(
    action: 'Patient',
    id: '1',
    phone: "0123456789",
    doctors: [],
    gender: 'male',
    pass: '123123123',
    name: 'john',
    email: 'email.email@gmail.com',

  );

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: KBtnColor,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            "Name",
            style: TextStyle(
                fontSize: 22, fontFamily: "Pacifico", color: Colors.white),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: SingleChildScrollView(
            child: Builder(builder: (ctx) {
              return Column(
                children: [
                  SizedBox(height: 50),
                  Text(
                    "Name : ${userModel.name}",
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
                      text: "Name : ${userModel.name}", icon: Icons.person),
                  buildColumn(
                      text: "Email : ${userModel.email}", icon: Icons.email),
                  buildColumn(
                      text: "Phone : ${userModel.phone}", icon: Icons.phone),
                  buildColumn(
                      text: "Gender : ${userModel.gender}", icon: Icons.person),
                  buildColumn(
                      text: "Action : ${userModel.action}", icon: Icons.code),
                  buildColumn(
                      text: "Change Password ",
                      icon: Icons.edit,
                      function:(){},),
                  SizedBox(height: 20),
                  CustomButton(function: (){}, text: "LogOut"),
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
}
