import 'package:elderly_assistant/consts_statics/colors.dart';
import 'package:elderly_assistant/functions/get_size.dart';
import 'package:elderly_assistant/models/notification_model.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
   NotificationScreen({super.key});

  NotificationModel notificationModel = NotificationModel(
    patientId: 'patientId',
    doctorId: 'doctorId',
    notificationBoody: '''
📋 Medication Details:

Medication Name: [Name of Medication]
Dosage: [Dosage Amount]
Frequency: [Frequency of Medication]
Time: [Time(s) to take the Medication]
    ''',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: KBtnColor,
        title: Text("Notification"),
      ),
      backgroundColor: KprimaryColor,
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, i) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: GetSize.getWidth(context),
                height: GetSize.getHight(context) * 0.2,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(color: KBtnColor)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(notificationModel.notificationBoody,style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18
                  ),),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
