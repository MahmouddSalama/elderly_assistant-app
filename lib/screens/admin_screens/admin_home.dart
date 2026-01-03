import 'package:elderly_assistant/consts_statics/colors.dart';
import 'package:elderly_assistant/screens/admin_screens/view_doctors.dart';
import 'package:elderly_assistant/screens/admin_screens/view_patients.dart';
import 'package:elderly_assistant/widgets/custome_button.dart';
import 'package:flutter/material.dart';

class AdminHome extends StatelessWidget {
  const AdminHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: KBtnColor,
          elevation: 0,
          title: Text("Admin Home"),
        ),
        backgroundColor: KprimaryColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Image.asset(
                "assets/images/SNAG-23110317473900-removebg-preview.png",
                height: 300,
                width: 300,
                fit: BoxFit.fill,
              ),
              Text(
                'Elderly assistant',
                style: TextStyle(
                    fontSize: 32, fontFamily: "Pacifico", color: KBtnColor),
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Flexible(
                      child: CustomButton(
                        text: 'view Doctors',
                        function: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return ViewDoctors();
                          }));
                        },
                      ),
                    ),
                    SizedBox(width: 10),
                    Flexible(
                      child: CustomButton(
                        text: 'view Patient',
                        function: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                                return ViewPatient();
                              }));
                        },
                      ),
                    ),
                  ],
                ),

              ),
              CustomButton(
                text: 'logOut',
                function: () {

                },
              ),
            ],
          ),
        ));
  }
}
