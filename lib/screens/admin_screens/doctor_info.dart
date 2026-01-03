import 'package:elderly_assistant/consts_statics/colors.dart';
import 'package:elderly_assistant/models/deoctor_model.dart';
import 'package:flutter/material.dart';
class DoctorInfo extends StatefulWidget {
   DoctorInfo({super.key,required this.userModel});
  final DoctorModel userModel;

  @override
  State<DoctorInfo> createState() => _DoctorInfoState();
}

class _DoctorInfoState extends State<DoctorInfo> {
  bool value=false;

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
                    "Name : ${widget.userModel.name}",
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
                      text: "Name : ${widget.userModel.name}", icon: Icons.person),
                  buildColumn(
                      text: "Email : ${widget.userModel.email}", icon: Icons.email),
                  buildColumn(
                      text: "Phone : ${widget.userModel.phone}", icon: Icons.phone),
                  buildColumn(
                      text: "Gender : ${widget.userModel.gender}", icon: Icons.person),
                  buildColumn(
                      text: "Action : ${widget.userModel.action}", icon: Icons.code),
                  buildColumn(
                      text: "speciality : ${widget.userModel.speciality}", icon: Icons.work),

                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("block"),
                      Switch(value: value, onChanged: (v){
                        value=v;
                        setState(() {

                        });
                      },
                      activeColor: KBtnColor,
                      ),
                      Text("Unblock"),
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
}
