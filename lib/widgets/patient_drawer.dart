import 'package:elderly_assistant/consts_statics/colors.dart';
import 'package:elderly_assistant/functions/get_size.dart';
import 'package:elderly_assistant/screens/patient_screens/view_doctors.dart';
import 'package:elderly_assistant/screens/sheard_screens/presonal_info_screen.dart';
import 'package:elderly_assistant/widgets/auth_head.dart';
import 'package:elderly_assistant/widgets/drawer_tile.dart';
import 'package:flutter/material.dart';

import '../screens/patient_screens/health_records.dart';

class PatientDrawer extends StatelessWidget {
  const PatientDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        height: GetSize.getHight(context),
        color: KBtnColor,
        child: Column(
          children: [
            AuthHead(name: "", color: KprimaryColor),
            const Divider(
              color: KprimaryColor,
              thickness: 2,
            ),
            DrawerTile(
              text: 'Profile',
              iconData: Icons.person,
              function: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ProfileScreen();
                }));
              },
            ),
            DrawerTile(
              text: 'Appointment',
              iconData: Icons.medical_services,
              function: (){
                Navigator.pop(context);
              },
            ),
            DrawerTile(
              text: 'Doctors',
              iconData: Icons.medical_services,
              function: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ViewDoctors();
                }));
              },
            ),
            DrawerTile(
              text: 'Health Records',
              iconData: Icons.medical_services,
              function: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return HealthRecords();
                }));
              },
            ),
            Spacer(),
            DrawerTile(
              text: 'LogOut',
              iconData: Icons.logout,
              function: (){},
            ),
            SizedBox(height: 50,)
          ],
        ),
      ),
    );
  }
}