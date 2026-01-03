
import 'package:elderly_assistant/consts_statics/colors.dart';
import 'package:elderly_assistant/functions/get_size.dart';
import 'package:elderly_assistant/models/medication_appointment_mdoel.dart';
import 'package:flutter/material.dart';

class MedicationAppointmentCard extends StatelessWidget {
   MedicationAppointmentCard({required this.medicationAppointment,super.key});
  MedicationAppointment medicationAppointment;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        //height: GetSize.getHight(context) * .2,
        width: GetSize.getWidth(context),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: KBtnColor, width: 1.2),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildColumn(
                  text1: "Doctor name : ",
                  text2: medicationAppointment.doctorName),
              buildColumn(
                  text1: "patient name : ",
                  text2: medicationAppointment.patientName),
              buildColumn(
                  text1: "Time : ", text2: medicationAppointment.time),
              buildColumn(
                  text1: "Date : ", text2: medicationAppointment.date),
              buildColumn(
                  text1: "Attendance Type : ", text2: medicationAppointment.attendance_type),
              buildColumn(
                  text1: "State : ", text2: medicationAppointment.state?"Acceted":"Rejected"),

            ],
          ),
        ),
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
