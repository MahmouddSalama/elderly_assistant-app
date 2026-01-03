import 'package:elderly_assistant/consts_statics/colors.dart';
import 'package:elderly_assistant/models/patient_mdoel.dart';
import 'package:elderly_assistant/screens/admin_screens/patient_info.dart';
import 'package:elderly_assistant/screens/doctors_screens/patient_info.dart';
import 'package:flutter/material.dart';
class ViewPatient extends StatelessWidget {
   ViewPatient({super.key});
  PatientModel patientModel = PatientModel(
    action: 'action',
    id: 'id',
    name: 'Name name',
    email: 'email@gmail.com',
    pass: '*******',
    phone: '0123456789',
    gender: 'gender',
    doctors: [],
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: KBtnColor,
        elevation: 0,
        title: Text("View Patient"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemBuilder: (context, i) {
            return Column(
              children: [
                ListTile(
                  title: Text(patientModel.name),
                  subtitle: Text(patientModel.gender),
                  leading: CircleAvatar(backgroundColor: KBtnColor),
                  trailing: IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                            return AdminPatinetInfo( userModel: patientModel,);
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
