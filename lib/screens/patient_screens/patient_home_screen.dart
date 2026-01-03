import 'package:elderly_assistant/consts_statics/colors.dart';
import 'package:elderly_assistant/functions/get_size.dart';
import 'package:elderly_assistant/models/medication_appointment_mdoel.dart';
import 'package:elderly_assistant/screens/patient_screens/notification_screen.dart';
import 'package:elderly_assistant/screens/sheard_screens/presonal_info_screen.dart';
import 'package:elderly_assistant/widgets/auth_head.dart';
import 'package:elderly_assistant/widgets/drawer_tile.dart';
import 'package:elderly_assistant/widgets/medication_appointment_card.dart';
import 'package:elderly_assistant/widgets/patient_drawer.dart';
import 'package:flutter/material.dart';

class PatientHome extends StatelessWidget {
  PatientHome({super.key});

  MedicationAppointment medicationAppointment = MedicationAppointment(
      time: 'After Eating',
      doctorId: '1',
      doctorName: 'Ail',
     attendance_type: 'on line',
      date: "12/12/2023",
      patientId: '1',
      patientName: "smith",
    state: false
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              // go notivaction screen
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return NotificationScreen();
              }));
            },
            icon: Icon(Icons.notification_important),
          ),
        ],
        backgroundColor: KBtnColor,
        elevation: 0,
        title: Text("Elderly assistant"),
      ),
      backgroundColor: KprimaryColor,
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, i) {
           return MedicationAppointmentCard(medicationAppointment: medicationAppointment);
          },
          itemCount: 20,
        ),
      ),
      drawer: PatientDrawer(),
    );
  }
}


