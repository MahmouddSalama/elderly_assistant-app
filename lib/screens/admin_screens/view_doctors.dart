import 'package:elderly_assistant/consts_statics/colors.dart';
import 'package:elderly_assistant/models/deoctor_model.dart';
import 'package:elderly_assistant/screens/admin_screens/doctor_info.dart';
import 'package:flutter/material.dart';

class ViewDoctors extends StatelessWidget {
   ViewDoctors({super.key});

  DoctorModel doctorModel = DoctorModel(
    name: 'Name name',
    action: 'doctor',
    id: 'id',
    email: 'email@gmail.com',
    phone: '0123456789',
    gender: 'male',
    speciality: 'speciality',
    password: '*****',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("View Doctors"),
        elevation: 0,
        backgroundColor: KBtnColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemBuilder: (context, i) {
            return Column(
              children: [
                ListTile(
                  title: Text(doctorModel.name),
                  subtitle: Text(doctorModel.speciality),
                  leading: CircleAvatar(backgroundColor: KBtnColor),
                  trailing: IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                           return DoctorInfo(userModel: doctorModel);
                      }));
                    },
                    icon: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: KBtnColor,
                      size: 30,
                    ),
                  ),
                ),
                Divider(
                  color: KBtnColor.withOpacity(0.6),
                  thickness: 2,
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
