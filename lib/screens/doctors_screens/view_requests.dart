
import 'package:flutter/material.dart';

import '../../consts_statics/colors.dart';
import '../../models/medication_appointment_mdoel.dart';
import '../../widgets/medication_appointment_card.dart';

class ViewRequests extends StatelessWidget {
   ViewRequests({super.key});
  MedicationAppointment medicationAppointment=MedicationAppointment(
   state: false,
    date: '12-12-2023',
    attendance_type: 'online',
    patientName: 'Ali',
    patientId: '1',
    doctorName: "Sameh",
    doctorId: '2',
    time: "5:20:PM"
  );

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: KBtnColor,
        elevation: 0,
        title: Text("View Requests"),
      ),
      body: ListView.builder(
        itemBuilder: (context,i){
          return Column(
            children: [
              // ListTile(
              //   title: Text(medicationAppointment.name),
              //   subtitle: Text(medicationAppointment.gender),
              //   leading: CircleAvatar(backgroundColor: KBtnColor),
              //   trailing: IconButton(
              //     onPressed: () {
              //       Navigator.push(context,
              //           MaterialPageRoute(builder: (context) {
              //             return PatientInfo(patientModel: patientModel,);
              //           }));
              //     },
              //     icon: Icon(
              //       Icons.arrow_forward_ios_outlined,
              //       color: KBtnColor,
              //       size: 30,
              //     ),
              //   ),
              // ),
              MedicationAppointmentCard(
                medicationAppointment: medicationAppointment,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Rejected"),
                  Switch(value: true, onChanged: (v){}),
                  Text("Accepted"),
                ],
              ),
              Divider(
                color: KBtnColor.withOpacity(0.6),
                thickness: 2,
              )
            ],
          );
        },
      ),
    );
  }
}
