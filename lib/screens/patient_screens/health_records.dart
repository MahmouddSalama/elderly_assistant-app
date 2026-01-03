import 'package:elderly_assistant/models/health_recored_model.dart';
import 'package:flutter/material.dart';

import '../../consts_statics/colors.dart';
import '../../widgets/custome_button.dart';

class HealthRecords extends StatelessWidget {
   HealthRecords({super.key});

  HealthRecordsModel healthRecordsModel = HealthRecordsModel(
    id: 'id',
    id_patient: 'id_patient',
    weight: '86',
    hight: '175  cm',
    blood_sugar: '140',
    blood_pressures:'120/80',
    date: '12-12-2023',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: KBtnColor,
        elevation: 0,
        title: Text("Health Records"),
      ),
      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: SingleChildScrollView(
          child: Builder(builder: (ctx) {
            return Column(
              children: [
                SizedBox(height: 50),

                Divider(
                  color: KBtnColor,
                  thickness: 1.2,
                ),
                buildColumn(
                    text: "Date : ${healthRecordsModel.date}", icon: Icons.date_range),
                buildColumn(
                    text: "Blood Pressures : ${healthRecordsModel.blood_pressures}", icon: Icons.medical_services),
                buildColumn(
                    text: "Blood Sugar : ${healthRecordsModel.blood_sugar}", icon: Icons.medical_services),
                buildColumn(
                    text: "Height : ${healthRecordsModel.hight}", icon: Icons.person),
                buildColumn(
                    text: "Weight : ${healthRecordsModel.weight}", icon: Icons.person_2),

                SizedBox(height: 20),
                CustomButton(function: (){}, text: "Update"),
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
