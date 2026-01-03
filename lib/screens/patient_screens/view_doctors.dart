import 'package:elderly_assistant/consts_statics/colors.dart';
import 'package:elderly_assistant/functions/get_size.dart';
import 'package:elderly_assistant/models/deoctor_model.dart';
import 'package:elderly_assistant/screens/patient_screens/chat_screen.dart';
import 'package:elderly_assistant/screens/patient_screens/set_appoinment.dart';
import 'package:elderly_assistant/widgets/add_button.dart';
import 'package:elderly_assistant/widgets/custome_text_filed.dart';
import 'package:flutter/material.dart';

class ViewDoctors extends StatelessWidget {
   ViewDoctors({super.key});

  DoctorModel doctorModel = DoctorModel(
    name: 'john',
    action: 'Doctor',
    id: 'id',
    email: 'email@gmail.com',
    phone: '0123456789',
    gender: 'male',
    speciality: 'Internal medicine doctor',
    password: '123123123',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: KBtnColor,
        elevation: 0,
        title: Text("View Doctors"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustumeTextField(
              ispass: false,
              validetor: (v){},
              labelText: 'Search',
              hint: 'aye',
              textInputType: TextInputType.text,
              onchange: (v){

              },
            ),
          ),
          Expanded(
            child: Center(child: ListView.builder(
              itemBuilder: (context, i) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: GetSize.getWidth(context),
                   // height: GetSize.getHight(context) * 0.2,
                    decoration: BoxDecoration(
                        border: Border.all(color: KBtnColor, width: 2),
                        borderRadius: BorderRadius.circular(6)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          buildColumn(
                              text1: "Doctor name : ",
                              text2: doctorModel.name),
                          buildColumn(
                              text1: "Doctor phone : ",
                              text2: doctorModel.phone),
                          buildColumn(
                              text1: "Doctor speciality : ",
                              text2: doctorModel.speciality),
                          buildColumn(
                              text1: "Doctor gender : ",
                              text2: doctorModel.gender),
                          buildColumn(
                              text1: "action : ", text2: doctorModel.action),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              AddButton(
                                function: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context){
                                    return ChatScreen();
                                  }));
                                },
                                iconData: Icons.message,
                              ),
                              AddButton(
                                function: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context){
                                    return SetAppointment();
                                  }));
                                },
                                string: 'Book',
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            )),
          ),
        ],
      ),
    );
  }

  Column buildColumn({text1, text2}) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              text1,
              style: TextStyle(
                  color: KBtnColor, fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              text2,
              softWrap: true,
              maxLines: 2,
              overflow: TextOverflow.clip,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Divider(
          color: KBtnColor.withOpacity(0.7),
        )
      ],
    );
  }
}
